/*
 * mm.c
 *
 * 
 *            Name  : Vincent Lee
 *          userID  : ihalbmond@gmail.com
 *          Detail  : http://ihalbmond.com/2016/12/28/How-to-get-full-points-on-malloc-lab/
 *
 *
 *
 *
 *  Analysis
 *
 *
 *      To simplify the problem,
 *      Assume that:
 *          + the size of fragments are pretty large.
 *      Because for those small fragments,
 *      we could easily deal with them by some linear data structure.
 *
 *      So we need a datastructure to support:
 *          + fast insert.
 *          + fast search.
 *          + fast delete.
 *
 *      Here are some options:
 *
 *          + segment tree / trie
 *              we won't build the whole tree at first.
 *              instead, we allocate when insert.
 *              Allocate O(logN) nodes for a insert operation.
 *
 *              At first, I think effiency is difficult to increase, 
 *              so, I've decided to use segment tree/ trie.
 *              But actually,
 *              space utilization wouldn't satisfy the requirement.
 *
 *
 *          + normal binary search tree
 *
 *              * SBT, AVL, Splay, Treap, Red-black tree, etc..
 *              
 *              * Their space complexity is O(1) for an insertion.
 *
 *          + binary search tree without rotation
 *
 *              * Persistent Treap
 *                  + Although fast, its space cost is large.
 *
 *              + Scapegoat Treap
 *                  It's also okay to use it. There are some tricks
 *                  to reduce space complexity while rebuilding.
 *
 *              + etc..
 *
 *
 *
 *      So I chose Treap at last.
 *
 *
 *
 *  Overview
 * 
 *
 * 
 * I've divided all blocks into 3 parts
 *
 *      + size <= LIMIT_1
 *
 *          I used a small array to maintain those free and allocated blocks.
 *
 *              For malloc:
 *                  we could search them in this array.
 *
 *              For free:
 *                  we could find them by the given address.
 *
 *
 *      + LIMIT_1 < size <= LIMIT_2
 *          
 *          I used a linkedlist to maintain the free blocks.
 *
 *
 *      + size > LIMIT_2
 *          I used treap to maintain those free blocks.
 *
 *
 *
 *
 *
 * And we could adjust LIMIT_1 and LIMIT_2 after finishing our program.
 *
 *      Actually, LIMIT_1 could be adjust to 8 to 24,
 *      and LIMIT_2 could be adjust to 96 to 128.
 *
 *
 *
 *
 *
 * Fit-Strategy
 *
 *      + Best-Fit Strategy :
 *
 *              It examines every free block and selects the free block
 *          with the smallest size that fits. If we combine the best
 *          fit strategy with the BINARY TREE,
 *          the original disadvantage for best fit,
 *          that is the cost of time for utter search,
 *          will be eliminated.
 *
 *
 *      + A Space Utilization Optimization :
 *
 *              When we want to malloc size_1 bytes,
 *          by the Best-Fit Strategy,
 *          we found a size_2 bytes free block.
 *          but size_2 - size_1 == 8 and size_2 <= LIMIT_2,
 *          we would ignore this size_2 bytes block,
 *          for the reason that:
 *              It would product 8-bytes external_fragmentation,
 *          which is difficult to clean up before a union of free blocks.
 *
 *
 *
 *
 *
 *
 *
 *
 */
#include <assert.h>
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>

#include "mm.h"
#include "memlib.h"

/* If you want debugging output, use the following macro.  When you hand
 * in, remove the #define DEBUG line. */
//#define DEBUG
#ifdef DEBUG
# define dbg_printf(...) printf(__VA_ARGS__)
#else
# define dbg_printf(...)
#endif


/* do not change the following! */
#ifdef DRIVER
/* create aliases for driver tests */
#define malloc mm_malloc
#define free mm_free
#define realloc mm_realloc
#define calloc mm_calloc
#endif /* def DRIVER */

/* single word (4) or double word (8) alignment */
#define ALIGNMENT 8

/* rounds up to the nearest multiple of ALIGNMENT */
#define ALIGN(p) (((size_t)(p) + (ALIGNMENT-1)) & ~0x7)

static int aligned(const void *p);
static int in_heap(const void *p);



#define DEADBEEF    0xdeadbeef
#define DEADBEEFx2  (long)0xdeadbeefdeadbeef

#define HEADER_SIZE     4

#define LINKED_LIST_SIZE 10
#define LINKED_LIST_MAX_BLOCK_SIZE ((LINKED_LIST_SIZE + 1) << 3)



static void Display_bst();
static void display_bst_node(int u);
static void display_linkedlist(void *head);
static void display_block_info(void *header);

static inline int *Child(int u, int ty);
static inline int get_Child(int u, int ty);
static inline void set_Child(int u, int ty, int w);


static inline void set_tag_previous_block_isfree(void *ptr);

static inline void set_tag_previous_block_isallocated(void *ptr);
static inline void set_tag_linked_list_node(void *ptr);
static inline void set_as_8bytes_free_block(void *header);

static inline void set_as_allocated_block(void *header, int size);

static inline void set_free_block_size(void *header, int size);
static inline int get_free_block_size(void *header);

static inline int get_linkedlist_next(void *header);
static inline int get_linkedlist_prev(void *header);
static inline void set_linkedlist_next(void *header, int next);
static inline void set_linkedlist_prev(void *header, int prev);
static inline int *linkedlist_next(void *header);
static inline int *linkedlist_prev(void *header);

static inline int previous_block_is_free(void *ptr);
static inline int get_previous_free_block_size(void *header);
static inline unsigned short get_allocated_block_size(void *ptr);


static void *heap_pool;



#define STACK_SIZE      32

static void *ptr_8_begin, *ptr_8_end;





static inline int get_linkedlist_head_index(int size)
{
    //assert ((size & 0x7) == 0);
    int index = (size >> 3) - 2;
    //assert (index >= 0);
    return index;
}


static int bstro;



/*
 * NIL : zero pointer in the BST.
 */
#define NIL 1

/*
 * recond payload by myself. (
 */
static size_t Payload;



//#define BLOCK_SIZE_CHECK
#ifdef BLOCK_SIZE_CHECK
    static size_t max_block_size;
#endif


//#define HEAP_SIZE_CHECK
#ifdef HEAP_SIZE_CHECK
    static size_t max_heap_size;
#endif






/*
 * best-fit strategy.
 */
#define STRATEGY_CONSERVATIVE 1

static size_t predict_strategy, external_fragmentation_count;



static void reset_strategy()
{
    predict_strategy = 0;
}

static void set_stratagy(size_t strategy)
{
    predict_strategy = strategy;
}

static int too_much_external_fragmentation()
{
    if (external_fragmentation_count > 3)
    {
        fprintf(stderr, "%s\n", "too_much_external_fragmentation");
        return 1;
    }
    return 0;
}









/*
 *
 * Virtual brk system.
 *
 * Wrapper of mem_heap_hi(), mem_sbrk().
 */

static void *virtual_brk;


#define ACTUAL_BRK (mem_heap_hi() + 1)

static inline void *mem_get_brk()
{
    return virtual_brk; 
}


#define INCREMENT    0x2c0
#define VBRK_LIMIT   0x800010000

static inline void mem_request(size_t size)
{
    virtual_brk += size;
    if (virtual_brk > ACTUAL_BRK)
    {
        mem_sbrk((virtual_brk - ACTUAL_BRK
            + ((long)virtual_brk > VBRK_LIMIT) * INCREMENT));
    }
}

static inline void mem_shrink(void *ptr)
{
    virtual_brk = ptr;
}

static inline void mem_init_virtual_brk()
{
    virtual_brk = ACTUAL_BRK;
}









/*
 * manipulate half word start from ptr + 0.
 *
 * offset is 0
 *
 * should use wrapper to access, couldn't be access directly
 */
static inline unsigned short *half_word(void *ptr)
{
    return ((unsigned short *)ptr);
}

/*
 * half word setter
 */
static inline void set_half_word(void *ptr, unsigned short value)
{
    *half_word(ptr) = value;
}
/*
 * half word getter
 */
static inline unsigned short get_half_word(void *ptr)
{
    return *half_word(ptr);
}


/*
 * manipulate single word start from ptr + offseet.
 * offset is 0
 *
 * should use wrapper to access, couldn't be access directly
 */
static inline int* single_word(void *ptr, int offset)
{
    return ((int *)ptr) + offset;
}


/*
 * get single word from ptr with a offset. 
 */
static inline int get_single_word(void *ptr, int offset)
{
    return *single_word(ptr, offset);
}
/*
 * set single word from ptr with a offset. 
 */
static inline void set_single_word(void *ptr, int offset, int value)
{
    *single_word(ptr, offset) = value;
}










/*
 * manipulate some bytes start from block header.
 *
 * offset is 0
 *
 * should use wrapper to access, couldn't be access directly
 */
static inline unsigned short *block_header(void *header)
{
    //assert(header < mem_get_brk());

    return half_word(header);
}





/*
 * setter of block tag.
 *
 * only changed 3 bits from the position of header.
 *
 * tag should be 0x0 to 0x7.
 */
static inline void set_block_header_tag(void *header, unsigned short tag)
{
    //assert((tag & ~0x7) == 0);
    *block_header(header) &= ~0x7;
    *block_header(header) |= tag;
}

/*
 * getter of block tag.
 *
 * only return 3 bits from the position of header.
 *
 * return value would be 0x0 to 0x7.
 */
static inline unsigned short get_block_header_tag(void *header)
{
    return *block_header(header) & 0x7;
}

/*
 * setter of block tag.
 *
 * only changed 3 bits from the position of header.
 *
 * tag should be 0x0 to 0x7.
 */
static inline void set_block_header_size(void *header, unsigned short size)
{
    //assert((size & 0x7) == 0);
    *block_header(header) &= 0x7;
    *block_header(header) |= size;
}

/*
 * getter of block tag.
 *
 * only return 3 bits from the position of header.
 *
 * return value would be 0x0 to 0x7.
 */
static inline unsigned short get_block_header_size(void *header)
{
    return *block_header(header) & ~0x7;
}



#define PREV_ISFREE_BIT 1


#define BLOCK_LINKED_LIST_HEAD 0
#define BLOCK_BST_NODE 1
#define BLOCK_LINKED_LIST_NODE 2
#define BLOCK_8_BYTE 3
#define BLOCK_ALLOCATED 4

/*
 * 0, 1 bst node.
 * = 1: left child is null
 *
 * 2 linkedlist node
 *
 * 3 8-byte free block
 *
 * 4 allocated block
 */
static inline int get_block_type(void *header)
{
    int x = get_single_word(header, 0);
    x &= 0x7;

    if (x == 0) return 0;
    if (x == 1) return 1;
    if (x == 2) return 2;
    if (x == 3) return 3;
    return 4;
}

/*
 * getter of block size for every type
 */
static int get_block_size(void *header)
{
    int type = get_block_type(header);

    if (type == BLOCK_ALLOCATED)
    {
        return get_allocated_block_size(header);
    }
    else
    {
        return get_free_block_size(header);
    }
}


/*
 * convert block type to string.
 *
 * handy to debug
 */
static char* block_type_to_string(int type)
{
    switch (type)
    {
        case BLOCK_LINKED_LIST_HEAD: return "BLOCK_LINKED_LIST_HEAD";

        case BLOCK_BST_NODE: return "BLOCK_BST_NODE";
        
        case BLOCK_LINKED_LIST_NODE: return "BLOCK_LINKED_LIST_NODE";
        
        case BLOCK_8_BYTE: return "BLOCK_8_BYTE";
        
        case BLOCK_ALLOCATED: return "BLOCK_ALLOCATED";
    }
    return "TYPY TO STRING UNKNOWN ERROR";
}




static void display_block_info(void *header)
{
    dbg_printf("block: { address = %p   type = %s   size = %d }",
        header,
        block_type_to_string( get_block_type(header) ),
        get_block_size(header) );
}




/*
 * node of BST.
 */
struct TNode 
{
    void *lc, *rc, *prev, *next;
    int size, random_value;
} tpool;



// could adjust if we want to record more information in bst
#define BST_NODE_CHLD_OFFSET 4
// could adjust if we want to record more information in bst
#define BST_NODE_RAND_OFFSET 6


/*
 * get child of a bst node.
 *
 * should use wrapper to access, couldn't be access directly
 */
static inline int *Child(int u, int ty)
{
    //assert(u != 1);
    return single_word(heap_pool + u, BST_NODE_CHLD_OFFSET + ty);
}

/*
 * child getter of a bst node.
 */
static inline int get_Child(int u, int ty)
{
    return *Child(u, ty);
}
/*
 * child setter of a bst node.
 */
static inline void set_Child(int u, int ty, int w)
{
    *Child(u, ty) = w;
}

/*
 * get random value of a bst node.
 */
static inline int get_bst_node_ran(int u)
{
    return get_single_word(heap_pool + u, BST_NODE_RAND_OFFSET);
}
/*
 * set random value of a bst node.
 */
static inline void set_bst_node_ran(int u, int val)
{
    set_single_word(heap_pool + u, BST_NODE_RAND_OFFSET, val);
}














static inline void set_tag_previous_block_isfree(void *ptr)
{
    set_block_header_tag(ptr,
        get_block_header_tag(ptr) | PREV_ISFREE_BIT);
}


static inline void set_tag_previous_block_isallocated(void *ptr)
{
    set_block_header_tag(ptr,
        get_block_header_tag(ptr) & ~PREV_ISFREE_BIT);
}


static inline void set_tag_linked_list_node(void *ptr)
{
    /* unnecessary to be brk_byte safe */
    set_block_header_tag(ptr,
        BLOCK_LINKED_LIST_NODE);
}

/*
 * clear the start 16 bytes of the free block.
 */
static inline void clear_free_block_16bytes(void *header, int val)
{
    set_single_word(header, 0, val);
    set_single_word(header, 1 ,val);
    set_single_word(header, 2 ,val);
    set_single_word(header, 3 ,val);
}

/*
 * Initialize a raw free block as a 8-bytes free block
 */
static inline void set_as_8bytes_free_block(void *header)
{
    set_single_word(header, 0, 3);
    set_single_word(header, 1, 8);
}

/*
 * Initialize a raw free block as a linkedlist free block
 */
static inline void set_as_linkedlist_head_free_block
    (void *header, int size, int *head)
{
    set_single_word(header, 0, 0);
    set_single_word(header, 1, 0);
    //clear_free_block_16bytes(header, 0);

    set_free_block_size(header, size);
    set_linkedlist_next(header, *head);
    if (*head != NIL)
    {
        set_tag_linked_list_node(heap_pool + *head);
        set_linkedlist_prev(heap_pool + *head, header - heap_pool);
    }
    *head = header - heap_pool;
}

/*
 * change a free block to a allocated block
 *
 * the prev must be allocated, too.
 */
static inline void set_as_allocated_block(void *header, int size)
{
    set_single_word(header, 0, BLOCK_ALLOCATED | size);
}



/*
 * setter of free block size.
 * Keep with the principle of encapsulation in object-oriented programming.
 *
 */

// It doesn't support adjusting now.
#define FREE_BLOCK_SIZE_OFFSET1 3

static inline void set_free_block_size(void *header, int size)
{
    //assert(size >= 16);

    set_single_word(header + 4 * FREE_BLOCK_SIZE_OFFSET1, 0, size);
    set_single_word(header + size, -1, size);
}



static inline int get_free_block_size(void *header)
{
    int size = get_single_word(header, FREE_BLOCK_SIZE_OFFSET1);
    return size & ~0x7;
}




static int *linkedlist_pool;



/*
 * should use wrapper to access, couldn't be access directly
 */
static inline int *linkedlist_next(void *header)
{
    int *pprev = single_word(header, 2);
    return pprev;
}
/*
 * should use wrapper to access, couldn't be access directly
 */
static inline int *linkedlist_prev(void *header)
{
    int *pprev = single_word(header, 1);
    return pprev;
}

/*
 * getter of the next linked list node.
 * Keep with the principle of encapsulation in object-oriented programming.
 */
static inline int get_linkedlist_next(void *header)
{

    int next = get_single_word(header, 2);
    ////assert((size & 0x7) == 0);
    return next;
}

/*
 * getter of the previous linked list node.
 * Keep with the principle of encapsulation in object-oriented programming.
 */
static inline int get_linkedlist_prev(void *header)
{
    //assert(get_block_type(header) == 2);
    int prev = get_single_word(header, 1);

    return prev;
}
static inline void set_linkedlist_next(void *header, int next)
{
    *linkedlist_next(header) = next;
}

static inline void set_linkedlist_prev(void *header, int prev)
{
    *linkedlist_prev(header) = prev;
}

/*
 * getter of next allocated block.
 * Keep with the principle of encapsulation in object-oriented programming.
 */
static inline int get_allocated_block_next(void *header) //never used
{
    int size_tag = get_single_word(header, 0);

    int size = size_tag & ~0x7;

    return header + size - heap_pool;
}

/*
 * check if the previous block is free.
 */
static inline int previous_block_is_free(void *ptr)
{
    return (get_single_word(ptr, 0) & 1);
}


static inline int get_previous_free_block_size(void *header)
{
    return get_single_word(header, -1);
}


static inline unsigned short get_allocated_block_size(void *ptr)
{
    if (ptr < ptr_8_end)
        return ALIGNMENT;
    return get_half_word(ptr) & ~0x7;
}




/*
 * mm_init - Called when a new trace starts. 
 */
int mm_init(void)
{
    mem_init_virtual_brk();

    ptr_8_begin = mem_get_brk();

    mem_request(STACK_SIZE);

    for(int *p = (int *)ptr_8_begin; p < (int *)ptr_8_end; ++p)
        *p = DEADBEEF;

    ptr_8_end = mem_get_brk();

    mem_request(ALIGNMENT - HEADER_SIZE);


    Payload = 0;
    reset_strategy();


#ifdef BLOCK_SIZE_CHECK
    max_block_size = 0;
#endif


#ifdef HEAP_SIZE_CHECK
    max_heap_size =  0;
#endif


    linkedlist_pool = (int *)&tpool;

    for (int i = 0; i < LINKED_LIST_SIZE; ++i) linkedlist_pool[i] = 1;

    heap_pool = mem_get_brk();

    bstro = NIL;


    //fprintf(stderr, "%s\n", "init finished");
    return 0;
}




















/*
 * display the node information
 */
static void display_bst_node(int u)
{
    void *ptr = heap_pool + u;
    dbg_printf(
    "%d : (%d,%d)  c[0]= %d  c[1]= %d  next= %d  size= %d  ran= %d\n", u,
        get_single_word(ptr, 0), get_single_word(ptr, 1),
            get_Child(u, 0), get_Child(u, 1),
                get_linkedlist_next(ptr),
                    get_free_block_size(ptr), get_bst_node_ran(u));

    //assert(get_single_word(ptr, 0) == 1);
    //assert(get_single_word(ptr, 1) == 1);
    dbg_printf("attatch:");display_linkedlist(ptr);
    //dbg_printf("..\n");
}






static size_t rotation_count;

inline static int rotate(int u, int ty)
{
    //++rotation_count;
    int v = get_Child(u, ty);
    set_Child(u, ty, get_Child(v, !ty));
    set_Child(v, !ty, u);
    return v;
    
}



/*
 * allocate a new node in bst.
 */
void bst_node_init(int u, int next, int lch, int rch, int ran)
{
    void *header = heap_pool + u;
    set_single_word(header, 0, NIL);
    //set_single_word(header, 1, NIL);

    set_linkedlist_next(header, next);
    if (next != NIL)
    {
        set_linkedlist_prev(heap_pool + next, u);
    }
    set_Child(u, 0, lch);
    set_Child(u, 1, rch);
    set_bst_node_ran(u, ran);
}



static size_t status;

#define INSERT__NEW_BST_NODE_ALLOCATED 1
#define INSERT__FOUND_AN_EXISTING_NODE 0


/*
 * Insert node <v> (representing a free block) to the treap.
 *
 * return the new root.
 */ 
int treap_insert(int u, int w)
{

    if (u == NIL)
    {
        //status |= INSERT__NEW_BST_NODE_ALLOCATED;

        bst_node_init(w, NIL, NIL, NIL, rand());
        
        return w;
    }

#ifdef INSERT_VERBOSE
    dbg_printf("---inserting---\n");
        display_bst_node(u);
    dbg_printf("===============\n");
#endif

    void *header_w = heap_pool + w;
    void *header_u = heap_pool + u;

    int size_u = get_free_block_size(header_u);
    int size_w = get_free_block_size(header_w);

    if (size_u == size_w)
    {
        bst_node_init(w, u,
            get_Child(u, 0), get_Child(u, 1),
                get_bst_node_ran(u));

        set_tag_linked_list_node(header_u);

        
        return w;
    }

    int ty = size_w > size_u;

    int *pch = (int *) (header_u) + BST_NODE_CHLD_OFFSET + ty;
    int ch = treap_insert(*pch, w);
    *pch = ch;

    /*
    int ch = treap_insert(get_Child(u, ty), w);
    set_Child(u, ty, ch);
    */

    //assert(ch != 1);
    /*
     * when the random value of treap node condition
     *      doesn't conform to the requirement,
     * it would make a rotate.
     */
    if (get_bst_node_ran(ch) < get_bst_node_ran(u))
    {
        //assert(v != NIL);
        int *pchch =
            (int *) (heap_pool + ch) + BST_NODE_CHLD_OFFSET + !ty;
        *pch = *pchch;
        *pchch = u;
        return ch;
    }
    
    return u;
}









#define DELETE__NODE_NOT_FOUND 1  // It's a fatal error.
#define DELETE__BST_NODE_DELETED 2

/*
 * delete the node with a specified size in the treap.
 *
 * return the new root. (if the node wasn't found, return NIL)
 */
int treap_delete(int u, int size_w)
{
    if (u == NIL)
    {
        //status |= DELETE__NODE_NOT_FOUND;

        return NIL;// return NIL(1) is UNSUCC
    }

    void *header_u = heap_pool + u;

    int size_u = get_free_block_size(header_u);

    if (size_u == size_w)
    {
        int u_next = get_linkedlist_next(header_u);
        if (u_next == NIL)
        {
            //status |= DELETE__BST_NODE_DELETED;

            int *pch = (int *) (header_u) + BST_NODE_CHLD_OFFSET;
            
            int lch = *pch, rch = *(pch + 1);
            
            if (lch == NIL)
                return rch;

            if (rch == NIL)
                return lch;

            int ty = get_bst_node_ran(lch) < get_bst_node_ran(rch);

            int ch = *(pch + !ty);
            
            int *pchch =
                (int *) (heap_pool + ch) + BST_NODE_CHLD_OFFSET + ty;
            *(pch + !ty) = *pchch;

            *pchch = treap_delete(u, size_w);
            
            /*
            int lch = get_Child(u, 0), rch = get_Child(u, 1);
            
            if (lch == NIL)
                return rch;

            if (rch == NIL)
                return lch;
            
            int ty = get_bst_node_ran(lch) < get_bst_node_ran(rch);

            
            int v = rotate(u, !ty);
            
            set_Child(v, ty, treap_delete(u, size_w));
            */
            return ch;
        }
        else
        {
            /*
             * only_linked_list_head_deleted
             */
            set_single_word(heap_pool + u_next, 0, NIL);
            set_single_word(heap_pool + u_next, 1, NIL);

            set_Child(u_next, 0, get_Child(u, 0));
            set_Child(u_next, 1, get_Child(u, 1));

            //assert(get_bst_node_ran(u) == get_bst_node_ran(u_next) );

            set_bst_node_ran(u_next, get_bst_node_ran(u));
            return u_next;
        }
    }
    else
    {
        int ty = size_w > size_u;
        set_Child(u, ty, treap_delete(get_Child(u, ty), size_w));
        return u;
    }
}


/*
 * return the actual information about status in <insert> operation.
 */ 
char * insert_status(size_t status)
{
    switch (status)
    {
        case INSERT__NEW_BST_NODE_ALLOCATED :
            return "INSERT__NEW_BST_NODE_ALLOCATED";
        
        case INSERT__FOUND_AN_EXISTING_NODE :
            return "INSERT__FOUND_AN_EXISTING_NODE";

    }

    return "INSERT UNKNOWN ERROR";
}


/*
 * return the actual information about status in <delete> operation.
 */ 
char * delete_status(size_t status)
{
    switch (status)
    {
        case DELETE__NODE_NOT_FOUND :
            return
                "DELETE__NODE_NOT_FOUND";
        
        case DELETE__BST_NODE_DELETED :
            return
                "DELETE__BST_NODE_DELETED";
        
        default :
            return
                "DIDN'T DELETE BST NODE, DELETE THE HEAD OF LINKED LIST";

    }

    return
        "DELETE UNKNOWN ERROR";
}


/*
 * Wrapper of <treap_insert>
 *
 * Record and display error information.
 */
void Treap_insert(int u)
{
    status = rotation_count = 0;

#ifdef INSERT_MONITOR
    dbg_printf("\n----------insert--------begin-----\n");
    dbg_printf("root = %d\n", bstro);
    Display_bst();
    dbg_printf("ptr = ");
    
    dbg_printf("\n");
    dbg_printf("treap insert %d : size = %d\n", u,
        (int)get_free_block_size(heap_pool + u));
    // Insert a big free block specified by ptr into the treap tree
#endif
    /*
    if (buf_en)
    {
        if (buf_count < BUF_SIZE)
        {
            for(int i = 0; i < BUF_SIZE; ++i)
                if (!buf_node_size[i])
                {
                    void *header_u = heap_pool + u;
                    buf_node[i] = u;
                    buf_node_size[i] = get_free_block_size(header_u);
                    set_single_word(header_u, 0, NIL);
                    ++ buf_count;
                    return;
                }
        }
        else
        {
            buf_en = 0;
            for(int i = 0; i < BUF_SIZE; ++i)
                bstro = treap_insert(bstro, buf_node[i]);
        }
    }
    */
    bstro = treap_insert(bstro, u);


#ifdef INSERT_MONITOR
    dbg_printf("%s\n", insert_status(status));
    dbg_printf("\n");
    dbg_printf("\n----------insert--------end-----\n");
    Display_bst();
#endif

}

/*
 * Wrapper of <treap_delete>
 *
 * Record and display error information.
 */
int Treap_delete(int u, int size)
{
/*
    dbg_printf("%d %d %.5lf\n",
        Payload,
            (int)mem_heapsize(),
                Payload * 1.0 / (int)mem_heapsize());
*/

    status = rotation_count = 0;
    
#ifdef DELETE_MONITOR
    dbg_printf("\n----------delete--------begin-----\n");
    dbg_printf("root = %d\n", bstro);
    Display_bst();
    dbg_printf("deleten node = ");display_bst_node(u);

    dbg_printf("\n");
    dbg_printf("treap delete %d :  size = %d\n", u, size);
#endif
    /*
    if (buf_en)
    {
        for(int i = 0; i < BUF_SIZE; ++i)
            if (buf_node_size[i] == size)
                {
                    buf_node_size[i] = 0;
                    buf_node[i] = 0;
                    -- buf_count;
                }
        return NIL;
    }
    */
    

    bstro = treap_delete(bstro, size);


#ifdef DELETE_MONITOR
    dbg_printf("%s\n", delete_status(status));
    dbg_printf("\n----------delete--------end-----\n");
#endif

    //assert(!(status & DELETE__NODE_NOT_FOUND));
    return 1;
}



/*
 *
 * search for a block which is not smaller than the specified block.
 * (according to the best-fit strategy)
 *
 * if found the block successfully, return the index of this block,
 * otherwise, it would return NIL or the largest block.
 */
int treap_select(int u, int size)
{
    //assert(u >= 0);

    if (u == NIL)
        return NIL;// return NIL(1) is UNSUCC

    void *header_u = heap_pool + u;

    //assert(in_heap(header_u));

    if (get_free_block_size(header_u) == size)
    {
        return u;
    }

    int ty = size > get_free_block_size(header_u);

//#define SELECT_VERBOSE
#ifdef SELECT_VERBOSE


    if (get_Child(u, ty) < 0 )
    {
        dbg_printf("ASSERT!!!\n");
        display_bst_node(u);
        display_bst(bstro);
        exit(0);
    }
#endif

    //assert(get_Child(u, ty) >= 0);

    if (ty)
        return treap_select(get_Child(u, ty), size);

    int result = treap_select(get_Child(u, ty), size);
    
    if (result != NIL)
        return result;

    return u;
}


/*
 * Wrapper of <treap_select>
 *
 * Record and display error information.
 */
int Treap_select(int u, int size)
{
#ifdef SELECT_MONITOR
    dbg_printf("\n-----------selecting--begin-------\n");
    Display_bst();


    dbg_printf("\n");
    dbg_printf("treap select %d :  size = %d\n", u, size);
#endif
    /*
    if (buf_en)
    {
        for(int i = 0; i < BUF_SIZE; ++i)
            if (buf_node_size[i] == size)
                {
                    return buf_node[i];
                }
        return NIL;
    }
    */
    
    int result = treap_select(u, size);

#ifdef SELECT_MONITOR
    if (result != NIL)
    {
        dbg_printf("SUCC selected %d\n", result);
    }
    else
    {
        dbg_printf("FAIL select\n");
    }
    //Display_bst();
    dbg_printf("-----------selecting-end--------\n");
#endif
    return result;
}


/*
 * used optimized best-fit strategy.
 *
 * <select> would not changed the heap condition.
 * It sometimes access heap information,   ex. call <get_free_block_size>
 *
 */
#define BEST_FIT_UTIL_OPTIMIZATION_1
void *structure_select_free_block(int size)
{
    int index = get_linkedlist_head_index(size);

    for (int i = index; i < LINKED_LIST_SIZE; ++i)

        #ifdef BEST_FIT_UTIL_OPTIMIZATION_1
            if (i != index + 1) // avoid 8-bytes block
        #endif

            //if (i != index + 2) // avoid 16-bytes block

                if (linkedlist_pool[i] != 1)
                {
                    return heap_pool + linkedlist_pool[i];
                }


    //assert(bstro >= 0);

    int node = Treap_select(bstro, size);
    
    if (node == NIL)
        return NULL;
    
    int actsize = get_free_block_size(heap_pool + node);

    //assert(actsize >= size);
    if (actsize < size)
        return NULL;


    return heap_pool + node;
}



/*
 * link to linkedlist node.
 */
static void linkedlist_connect(void *header_u, void *header_v)
{

}

/*
 * erase a node in linkedlist
 *
 * should ensure u is not the head of a linkedlist.
 */
static int linkedlist_erase(void *header_u)
{
    int u_prev = get_linkedlist_prev(header_u);
    int u_next = get_linkedlist_next(header_u);

    /*
     *  the previous node in linkedlist doesn't exist. it's an error.
     */
    if (u_prev == NIL)
        return 0;

    set_linkedlist_next(heap_pool + u_prev, u_next);
    
    if (u_next == NIL) /* the next node in linkedlist doesn't exist.*/
        return 2;

    set_linkedlist_prev(heap_pool + u_next, u_prev);
    
    return 1;/* normal erase */
}

/*
 * erase a head note if a linkedlist
 *
 */
static int linkedlist_erase_head(void *header_u)
{
    dbg_printf("..=\n");
    Display_bst();
    dbg_printf("..\n");
    dbg_printf("%d\n",get_free_block_size(header_u));
    int index = get_linkedlist_head_index(get_free_block_size(header_u));
    int u_next = get_linkedlist_next(header_u);

    linkedlist_pool[index] = u_next;

    if (u_next == NIL)
        return 2;

    set_block_header_tag(heap_pool + u_next, 0);
    return 1;
}




/*
 * Erase the free block from the struture,
 * which could be linked list node, linked list header or bst node.
 *
 */
int structure_erase_free_block(void *header)
{
    int type = get_block_type(header);
    dbg_printf("%s\n", block_type_to_string(type));
    switch (type)
    {
        case BLOCK_LINKED_LIST_HEAD:
            /*
             * the block is one of the head of linked list.
             */
            return (void) linkedlist_erase_head(header),
                BLOCK_LINKED_LIST_HEAD;

        case BLOCK_BST_NODE:

            /*
             * the block is a node in BST.
             */
            return (void) Treap_delete(header - heap_pool,
                get_free_block_size(header)),
                    BLOCK_BST_NODE;

        case BLOCK_LINKED_LIST_NODE:
            /*
             * the block is in linked list.
             *
             * delete header from linked list, not heap.
             */
            return (void) linkedlist_erase(header),
                    BLOCK_LINKED_LIST_NODE;

        case BLOCK_8_BYTE:

            return BLOCK_8_BYTE;

        case BLOCK_ALLOCATED:

            exit(1);

        default:

            exit(2);
    }
    dbg_printf("%s\n", block_type_to_string(type));
    
}
/*
 * add a free block to the struture,
 *
 * depends on its size.
 *
 * should ensure size > 0;
 *
 * type infomation hasn't been set, couldn't call get_block_type()
 */
void structure_add_free_block(void *ptr, int size)
{
    //assert(size >= 8);
    if (size == 8)
    {
        set_as_8bytes_free_block(ptr);
    }
    else
    if (size <= LINKED_LIST_MAX_BLOCK_SIZE)
    {
        //clear_free_block_16bytes(ptr, 0);// not necessary.
        set_as_linkedlist_head_free_block(ptr, size,
            linkedlist_pool + get_linkedlist_head_index(size));
    }
    else
    {
        //clear_free_block_16bytes(ptr, 0);// not necessary.
        set_free_block_size(ptr, size);
        // set_tag (1, 1)  will set when insert.
        Treap_insert(ptr - heap_pool);
    }
    set_tag_previous_block_isfree(ptr + size);
    
}








/*
 * malloc
 *
 * 1. align up the original size to asize. (asize >= size)
 *
 * 2. find a block with a size that is not smaller than
 *      its size in structure (depends on fit strategy).
 *          -> found : 
 *              update the structure and heap infomation.
 *          -> not found :
 *              expand the heap to fit it.
 *              update the heap infomation.
 *
 */
void *malloc(size_t size)
{
#define MALLOC_MONITOR
#ifdef MALLOC_MONITOR
    dbg_printf("--------------malloc starting--------\n");
    dbg_printf("malloc size =%d\n", size);
    //Display_bst();
#endif

    Payload += size;

    if (size == 0)
        return NULL;

#ifdef BLOCK_SIZE_CHECK
    if (size > max_block_size)
    {
        max_block_size = size;
        dbg_printf("size = %d\n", (int) size);
    }
#endif


    if (ALIGN(size) == 8)
    {
        for(long *p = (long *)ptr_8_begin; p < (long *)ptr_8_end; ++p)
        {
            if (*p == DEADBEEFx2)
            {
            #ifdef MALLOC_MONITOR
                dbg_printf("--------------malloc ending--------\n\n\n");
            #endif
                return p;
            }
        }
    }

    size = ALIGN(size + HEADER_SIZE);

    void *ptr;
    int rest_size;

    //assert(size >= 8);
#ifdef ALLOCATE_FOR_8_BYTE_BLOCK
    if (size == 8)
    {
        ptr = mem_get_brk();
        mem_request(size);
        set_as_allocated_block(ptr, size);
        #ifdef MALLOC_MONITOR
            dbg_printf("--------------malloc ending--------\n\n\n");
        #endif
        return ptr + HEADER_SIZE;
    }
#endif
    /*
     * find a block with a size that is not smaller than its size
     *      in structure,
     * it depends on fit strategy.
     */
    ptr = structure_select_free_block((int)size == 8 ? 16 : size);

    if (ptr)
    {
        #ifdef MALLOC_MONITOR
            dbg_printf("found a proper free block\n");
        #endif
        rest_size = get_free_block_size(ptr) - size;
        //assert((rest_size & 0x7) == 0);
        
        (void) structure_erase_free_block(ptr);
        
        if (rest_size == 0)
        {
            set_tag_previous_block_isallocated(ptr + size);
        }
        else
        {
            //assert(rest_size >= 8);
            /*
             * 8-byte block would only insert to structure here. ()
             */
            structure_add_free_block(ptr + size, rest_size);
        }
        set_as_allocated_block(ptr, size);
    }
    else
    {
        #ifdef MALLOC_MONITOR
            dbg_printf("didn't found a proper free block\n");
        #endif
        
        ptr = mem_get_brk();

        mem_request(size);

        set_as_allocated_block(ptr, size);
    }

#ifdef MALLOC_MONITOR
    //Display_bst();
    //dbg_printf("ptr = %p vbrk = %p\n", ptr + HEADER_SIZE, mem_get_brk());
    dbg_printf("--------------malloc ending--------\n\n\n");
#endif
    return ptr + HEADER_SIZE;
}






/*
 * if the previous block is free, the function would join them up.
 */
static int coalesce_prev_block(void **pptr, int size)
{
    size = size;
    if (!previous_block_is_free(*pptr))
        return 0;
    
    int prev_size = get_previous_free_block_size(*pptr);
    
    *pptr -= prev_size;

    if (prev_size != 8)
        (void) structure_erase_free_block(*pptr);
    
    return prev_size;
}

/*
 * if the next block is free, the function would join them up.
 */
static int coalesce_next_block(void **pheader, int size)
{
    void *next_ptr = *pheader + size;
    if (get_block_type(next_ptr) != BLOCK_ALLOCATED )
    {
        if (get_block_type(next_ptr) == BLOCK_8_BYTE)
        {
            return 0x8;
        }
        else
        {
            (void) structure_erase_free_block(next_ptr);
            return get_free_block_size(next_ptr);
        }
    }
    else
    {
        return 0;
    }
    
    fprintf(stderr, "%s\n", "control should never reach here");
}


/*
 * free an allocated block by a specified header.
 */
static void *free_by_header(void *header)
{
    int size = get_allocated_block_size(header);
    

    //assert(size >= 8);

    Payload -= size;

    size += coalesce_prev_block(&header, size);
    

    //assert(header + size <= mem_get_brk());

    if (header + size < mem_get_brk())
    {

        size += coalesce_next_block(&header, size);
        structure_add_free_block(header, size);
    }
    else
    {
        mem_shrink(header);
    }


    //assert(size >= 8);
    return header;
}

/*
 * free
 *
 * if the adjacent block is also free, then union them.
 */
void free(void *ptr)
{
#define FREE_MONITOR
#ifdef FREE_MONITOR
    dbg_printf("--------------free starting--------\n");
    dbg_printf("free ptr =%p\n", ptr);
    //Display_bst();
#endif
    
    if (in_heap(ptr) == 0)
        return;

    if (ptr < ptr_8_end)
    {
        *((long *)ptr) = ~DEADBEEFx2;
        return;
    }

    void *header = ptr - HEADER_SIZE;
    (void) free_by_header(header);

#ifdef FREE_MONITOR
    dbg_printf("--------------free end--------\n");
#endif
}

/*
 * realloc - Change the size of the block by mallocing a new block,
 *      copying its data, and freeing the old block.
 */
void *realloc(void *oldptr, size_t size)
{

    void *ptr;

    if (!oldptr)
        return malloc(size);
    
    if (size == 0)
        return free(oldptr), NULL;

    size_t asize = get_allocated_block_size(oldptr - HEADER_SIZE);
    size_t oldsize = asize - (ALIGNMENT - HEADER_SIZE);
    /*
     * this old_size is not the actual old_size,
     *    so this "Payload" may not be precise.
     */
    Payload = Payload + size - oldsize;
    ptr = malloc(size);
    if (size < oldsize)
        oldsize = size;
    
    return memcpy(ptr, oldptr, oldsize), free(oldptr), ptr;
}



/*
 * calloc - Allocate the block and set it to zero.
 */
void *calloc(size_t nmemb, size_t size)
{
    void *ptr;
    size_t bytes = nmemb * size;
    memset(ptr = malloc(bytes), 0, bytes);
    return ptr;
}


/*
 * Return whether the pointer is in the heap.
 * May be useful for debugging.
 */
static int in_heap(const void *p)
{
    return p < mem_get_brk() && p >= mem_heap_lo();
}

/*
 * Return whether the pointer is aligned.
 * May be useful for debugging.
 */
static int aligned(const void *p)
{
    return (size_t)ALIGN(p) == (size_t)p;
}


/*
 * traverse and print every node of a linkedlist
 */
static void display_linkedlist(void *head)
{
    dbg_printf("display_linkedlist.  begin : \n");
    dbg_printf("[head node = %d size = %d]",
        head - heap_pool,
            get_free_block_size(head));
    for(void *ptr = head; ; )
    {
        display_block_info(ptr);
        //assert(get_block_type(ptr) != BLOCK_ALLOCATED );
        int next = get_linkedlist_next(ptr);
        dbg_printf("next={%d}", next);
        if (next == NIL) break;
        ptr = heap_pool + next;
        dbg_printf(" -> [node = %d size = %d]",
                next,
                    get_free_block_size(ptr));
    }
    dbg_printf("-\n");
    dbg_printf("display_linkedlist.  end\n ");
}


/*
 * traverse and print every node of our BST
 */
static void display_bst(int u)
{
    return;
    if (u == NIL)
        return;

    display_bst_node(u);

    for(int ty = 0; ty < 2; ++ty)
        display_bst(get_Child(u, ty));
}

/*
 * Wrapper of display_bst.
 *
 * display more information and check error.
 */
static void Display_bst()
{
    dbg_printf("\n-----displaying-BST--start----\n");
    dbg_printf("root = %d\n", bstro);
    display_bst(bstro);
    dbg_printf("\n-----displaying-BST--finish-----\n");
}

/*
 * mm_checkheap
 *
 * traversed the heap and check them, display block information.
 *
 * display the BST.
 */
void mm_checkheap(int verbose)
{
    dbg_printf("%s\n", "QAQ, an error has occurred");

    Display_bst();

    display_bst_node(bstro);

    dbg_printf("heap : lo = %x  hi = %x   actual size = %d\n",
        (int)mem_heap_lo(),
            (int)(mem_get_brk() - 1),
                (int)mem_heapsize());

    int allocated = 1;
    for(void *p = heap_pool; p < mem_get_brk(); )
    {
        display_block_info(p);
        assert(aligned(p + HEADER_SIZE));
        int u = p - heap_pool;
        int type = get_block_type(p);
        if (type == BLOCK_ALLOCATED)
        {
            allocated = 0;
            p += get_allocated_block_size(p);
            continue;
        }

        assert(allocated);
        allocated = 0;
        switch (type)
        {
            case BLOCK_8_BYTE:
                p = p + ALIGNMENT;
            break;

            case BLOCK_LINKED_LIST_NODE:
                assert(u ==
                        get_linkedlist_next(
                            heap_pool + get_linkedlist_prev(p)));
                if (get_linkedlist_next(p) != NIL)
                    assert(u ==
                        get_linkedlist_prev(
                            heap_pool + get_linkedlist_next(p)));

                p += get_free_block_size(p);
            break;
            case BLOCK_LINKED_LIST_HEAD:

                assert(get_Child(u, 0) == 0);
                assert(
                    linkedlist_pool[
                        get_linkedlist_head_index(get_free_block_size(p) )]
                            == u);
                if (get_linkedlist_next(p) != NIL)
                    assert(p - heap_pool ==
                            get_linkedlist_prev(heap_pool
                        + get_linkedlist_next(p)));

                p += get_free_block_size(p);
            break;
        }
    }


    dbg_printf("%s\n",
        "Ah...  I will terminate right now after traversing the heap.");

    dbg_printf("\n");

    dbg_printf("%s\n", "Wish you goodnight (");
}
