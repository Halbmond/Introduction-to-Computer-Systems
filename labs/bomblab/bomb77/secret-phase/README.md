
# Secret Phase

### Author : Vincent Lee

:e-mail:ihalbmond@gmail.com

## Preparation

+ 通读CS:APP Chapter 3
+ 略读CS:APP Chapter 7

### Tools

+ gdb
  + 中规中矩，大部分人的标配选择
+ objdump
  + `objdump -d bomb > bomb.d` 即可将bomb的反汇编代码输出到bomb.d中
+ radare2
  + 一个强大的逆向工程框架，二进制文件分析利器
  + 如果有在短时间内解决bomblab的需求，可以使用radare2用现代武器武装自己

### radare2

#### installation

* 请确保网络连接正常
* 如果构建过程中出现Error，可尝试在命令前加sudo

```
git clone https://github.com/radare/radare2
cd radare2
sys/install.sh   # just run this script to update r2 from git
```

## Questions

* How to enter _secret_phase_?

* How to defuse _secret_phase_?

* How to defuse each phase *without* running bomb?

* How to defuse each phase *without* gdb?

## Preprocessing

```
Labs/bomblab/bomb77$ r2 bomb
 -- This is fine.

[0x00400d80]> aa
[x] Analyze all flags starting with sym. and entry0 (aa)
```


## Secret Phase

Here's the phase itself.
```
[0x00400d80]> pdf @ sym.secret_phase
/ (fcn) sym.secret_phase 81
|   sym.secret_phase ();
|           ; CALL XREF from 0x0040191c (sym.phase_defused)
|           0x0040134a      53             push rbx
|           0x0040134b      e823040000     call sym.read_line
|           0x00401350      ba0a000000     mov edx, 0xa
|           0x00401355      be00000000     mov esi, 0
|           0x0040135a      4889c7         mov rdi, rax
|           0x0040135d      e82ef9ffff     call sym.imp.strtol
|           0x00401362      4889c3         mov rbx, rax
|           0x00401365      8d40ff         lea eax, [rax - 1]
|           0x00401368      3de8030000     cmp eax, 0x3e8
|       ,=< 0x0040136d      7605           jbe 0x401374
|       |   0x0040136f      e88a030000     call sym.explode_bomb
|       `-> 0x00401374      89de           mov esi, ebx
|           0x00401376      bf20416000     mov edi, obj.n1             ; "$" @ 0x604120
|           0x0040137b      e88affffff     call sym.fun7
|           0x00401380      83f801         cmp eax, 1
|       ,=< 0x00401383      7405           je 0x40138a
|       |   0x00401385      e874030000     call sym.explode_bomb
|       `-> 0x0040138a      bf58284000     mov edi, str.Wow__You_ve_defused_the_secret_stage_ ; "Wow! You've defused the secret stage!" @ 0x402858
|           0x0040138f      e84cf8ffff     call sym.imp.puts
|           0x00401394      e808050000     call sym.phase_defused
|           0x00401399      5b             pop rbx
\           0x0040139a      c3             ret
```

Here is the source code of _secret_phase_.
```
void secret_phase()
{
	str = read_line();
	%rax = strtol(str, 0, a);
	%rbx = %rax;
	%eax = %rax - 1;
	if  (%rax <= 1000)
	{
		%eax = func7(root_address, %rbx);  // root_address, an immediate value
		if (%eax == 1)
			phase_defused();
		else
			explode_bomb();
	}
	else
		explode_bomb();
}
```


Ok, so looks like it needs a number that is less or equal to 1000 after having 1 subtracted from it. Nothing much new here for us. Then we have a new obj obj.n1 which, along with our input value is passed into _sym.fun7_. The expected return value from _sym.fun7_ is 1.


so let's peek at the _fun7_ function and see what it does.

```
[0x00400d80]> pdf @ sym.fun7
/ (fcn) sym.fun7 64
|   sym.fun7 ();
|           ; CALL XREF from 0x0040132e (sym.fun7)
|           ; CALL XREF from 0x0040131d (sym.fun7)
|           ; CALL XREF from 0x0040137b (sym.secret_phase)
|           0x0040130a      4883ec08       sub rsp, 8
|           0x0040130e      4885ff         test rdi, rdi
|       ,=< 0x00401311      7426           je 0x401339
|       |   0x00401313      8b07           mov eax, dword [rdi]
|       |   0x00401315      39f0           cmp eax, esi
|      ,==< 0x00401317      7e0d           jle 0x401326
|      ||   0x00401319      488b7f08       mov rdi, qword [rdi + 8]    ; [0x8:8]=0
|      ||   0x0040131d      e8e8ffffff     call sym.fun7
|      ||   0x00401322      01c0           add eax, eax
|     ,===< 0x00401324      eb1f           jmp 0x401345
|     |`--> 0x00401326      39f0           cmp eax, esi
|     |,==< 0x00401328      7416           je 0x401340
|     |||   0x0040132a      488b7f10       mov rdi, qword [rdi + 0x10] ; [0x10:8]=0x1003e0002
|     |||   0x0040132e      e8d7ffffff     call sym.fun7
|     |||   0x00401333      8d440001       lea eax, [rax + rax + 1]    ; 0x1
|    ,====< 0x00401337      eb0c           jmp 0x401345
|    |||`-> 0x00401339      b8ffffffff     mov eax, 0xffffffff         ; -1 ; -1
|    |||,=< 0x0040133e      eb05           jmp 0x401345
|    ||`--> 0x00401340      b800000000     mov eax, 0
|    || |   ; JMP XREF from 0x0040133e (sym.fun7)
|    || |   ; JMP XREF from 0x00401337 (sym.fun7)
|    || |   ; JMP XREF from 0x00401324 (sym.fun7)
|    ``-`-> 0x00401345      4883c408       add rsp, 8
\           0x00401349      c3             ret
```


So we could infer that there is such a struct:
```
struct node
{
	long long value;
	node * left_child;
	node * right_child;
};
```

Here is the source code of _fun7_.
```
int func7(Node *p, int value)
{
	if (p == 0)
		return 0xffffffff;

	if (value < p->data)
		return 2 * func7(value, p->lchild);
	if (value == p->data)
		return 0;
	return 2 * func(value, p->rchild) + 1;
}
```

Let's use `pf` to display the tree.
```
[0x00604120]> pf.node q*?*? value (node)l (node)r
[0x00604120]> pf.node @ obj.n1
 value : 0x00604120 = (qword)0x0000000000000024
     l : (*0x604140)
                struct<node>
       value : 0x00604140 = (qword)0x0000000000000008
           l : (*0x6041c0)
                      struct<node>
             value : 0x006041c0 = (qword)0x0000000000000006
                 l : (*0x604220)
                            struct<node>
                   value : 0x00604220 = (qword)0x0000000000000001
                       l : (*0x0) NULL
                       r : (*0x0) NULL
                 r : (*0x604280)
                            struct<node>
                   value : 0x00604280 = (qword)0x0000000000000007
                       l : (*0x0) NULL
                       r : (*0x0) NULL
           r : (*0x604180)
                      struct<node>
             value : 0x00604180 = (qword)0x0000000000000016
                 l : (*0x6042a0)
                            struct<node>
                   value : 0x006042a0 = (qword)0x0000000000000014
                       l : (*0x0) NULL
                       r : (*0x0) NULL
                 r : (*0x604260)
                            struct<node>
                   value : 0x00604260 = (qword)0x0000000000000023
                       l : (*0x0) NULL
                       r : (*0x0) NULL
     r : (*0x604160)
                struct<node>
       value : 0x00604160 = (qword)0x0000000000000032
           l : (*0x6041a0)
                      struct<node>
             value : 0x006041a0 = (qword)0x000000000000002d
                 l : (*0x604200)
                            struct<node>
                   value : 0x00604200 = (qword)0x0000000000000028
                       l : (*0x0) NULL
                       r : (*0x0) NULL
                 r : (*0x6042c0)
                            struct<node>
                   value : 0x006042c0 = (qword)0x000000000000002f
                       l : (*0x0) NULL
                       r : (*0x0) NULL
           r : (*0x6041e0)
                      struct<node>
             value : 0x006041e0 = (qword)0x000000000000006b
                 l : (*0x604240)
                            struct<node>
                   value : 0x00604240 = (qword)0x0000000000000063
                       l : (*0x0) NULL
                       r : (*0x0) NULL
                 r : (*0x6042e0)
                            struct<node>
                   value : 0x006042e0 = (qword)0x00000000000003e9
                       l : (*0x0) NULL
                       r : (*0x0) NULL
```

Here is the binary tree:


![Binary Tree](bin_tree.png)

## phase_defused


## Assembly code

`objdump -d bomb`

```
00000000004018a1 <phase_defused>:
  4018a1:	48 83 ec 78          	sub    $0x78,%rsp
  4018a5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4018ac:	00 00 
  4018ae:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  4018b3:	31 c0                	xor    %eax,%eax
  4018b5:	bf 01 00 00 00       	mov    $0x1,%edi
  4018ba:	e8 27 fd ff ff       	callq  4015e6 <send_msg>
  4018bf:	83 3d 66 3d 20 00 06 	cmpl   $0x6,0x203d66(%rip)        # 60562c <num_input_strings>
  # PC-relative addressing.
  # %rip changed.
  # if num_input_string == 6, enter.
  4018c6:	75 6d                	jne    401935 <phase_defused+0x94>
  4018c8:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
  4018cd:	48 8d 4c 24 0c       	lea    0xc(%rsp),%rcx
  4018d2:	48 8d 54 24 08       	lea    0x8(%rsp),%rdx
  4018d7:	be 7a 2b 40 00       	mov    $0x402b7a,%esi
  4018dc:	bf 30 57 60 00       	mov    $0x605730,%edi
  4018e1:	b8 00 00 00 00       	mov    $0x0,%eax
  4018e6:	e8 d5 f3 ff ff       	callq  400cc0 <__isoc99_sscanf@plt>
  4018eb:	83 f8 03             	cmp    $0x3,%eax
  4018ee:	75 31                	jne    401921 <phase_defused+0x80>
  4018f0:	be 83 2b 40 00       	mov    $0x402b83,%esi
  4018f5:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
  4018fa:	e8 2c fb ff ff       	callq  40142b <strings_not_equal>
  4018ff:	85 c0                	test   %eax,%eax
  401901:	75 1e                	jne    401921 <phase_defused+0x80>
  401903:	bf d8 29 40 00       	mov    $0x4029d8,%edi
  401908:	e8 d3 f2 ff ff       	callq  400be0 <puts@plt>
  40190d:	bf 00 2a 40 00       	mov    $0x402a00,%edi
  401912:	e8 c9 f2 ff ff       	callq  400be0 <puts@plt>
  401917:	b8 00 00 00 00       	mov    $0x0,%eax
  40191c:	e8 29 fa ff ff       	callq  40134a <secret_phase>
  401921:	bf 38 2a 40 00       	mov    $0x402a38,%edi
  401926:	e8 b5 f2 ff ff       	callq  400be0 <puts@plt>
  40192b:	bf 68 2a 40 00       	mov    $0x402a68,%edi
  401930:	e8 ab f2 ff ff       	callq  400be0 <puts@plt>
  401935:	48 8b 44 24 68       	mov    0x68(%rsp),%rax
  40193a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401941:	00 00 
  401943:	74 05                	je     40194a <phase_defused+0xa9>
  401945:	e8 b6 f2 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  40194a:	48 83 c4 78          	add    $0x78,%rsp
  40194e:	c3                   	retq   
```

## secret_phase


```
000000000040130a <fun7>:
  40130a:	48 83 ec 08          	sub    $0x8,%rsp
  40130e:	48 85 ff             	test   %rdi,%rdi
  401311:	74 26                	je     401339 <fun7+0x2f>
  401313:	8b 07                	mov    (%rdi),%eax
  401315:	39 f0                	cmp    %esi,%eax
  401317:	7e 0d                	jle    401326 <fun7+0x1c>
  401319:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
  40131d:	e8 e8 ff ff ff       	callq  40130a <fun7>
  401322:	01 c0                	add    %eax,%eax
  401324:	eb 1f                	jmp    401345 <fun7+0x3b>
  401326:	39 f0                	cmp    %esi,%eax
  401328:	74 16                	je     401340 <fun7+0x36>
  40132a:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
  40132e:	e8 d7 ff ff ff       	callq  40130a <fun7>
  401333:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
  401337:	eb 0c                	jmp    401345 <fun7+0x3b>
  401339:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40133e:	eb 05                	jmp    401345 <fun7+0x3b>
  401340:	b8 00 00 00 00       	mov    $0x0,%eax
  401345:	48 83 c4 08          	add    $0x8,%rsp
  401349:	c3                   	retq   

000000000040134a <secret_phase>:
  40134a:	53                   	push   %rbx
  40134b:	e8 23 04 00 00       	callq  401773 <read_line>
  401350:	ba 0a 00 00 00       	mov    $0xa,%edx
  401355:	be 00 00 00 00       	mov    $0x0,%esi
  40135a:	48 89 c7             	mov    %rax,%rdi
  40135d:	e8 2e f9 ff ff       	callq  400c90 <strtol@plt>
  401362:	48 89 c3             	mov    %rax,%rbx
  401365:	8d 40 ff             	lea    -0x1(%rax),%eax
  401368:	3d e8 03 00 00       	cmp    $0x3e8,%eax
  40136d:	76 05                	jbe    401374 <secret_phase+0x2a>
  40136f:	e8 8a 03 00 00       	callq  4016fe <explode_bomb>
  401374:	89 de                	mov    %ebx,%esi
  401376:	bf 20 41 60 00       	mov    $0x604120,%edi
  40137b:	e8 8a ff ff ff       	callq  40130a <fun7>
  401380:	83 f8 01             	cmp    $0x1,%eax
  401383:	74 05                	je     40138a <secret_phase+0x40>
  401385:	e8 74 03 00 00       	callq  4016fe <explode_bomb>
  40138a:	bf 58 28 40 00       	mov    $0x402858,%edi
  40138f:	e8 4c f8 ff ff       	callq  400be0 <puts@plt>
  401394:	e8 08 05 00 00       	callq  4018a1 <phase_defused>
  401399:	5b                   	pop    %rbx
  40139a:	c3                   	retq   
```
