# Fallible Problems

## Chapter 2


+ 原码，反码，补码

  + 0 的原码/反码有两种，补码只有一种。

- Assume x is int

  + .
    + `x == -x`
    + `x == Tmin || x == 0`
    + `x + x == 0`
    + `x == ~x + 1`
  + .
    + `(x + ~y + 1)>=0 != (y + ~x)>=0`
  + .
    + `x * 8`
    + `x << 3`
  + How about x is negative?
    + `x >> 3`

+  转换顺序

  * 2147483647 + 1 != 2147483648 什么环境下为真，什么环境下为假


### Floating Point


+ 加法，乘法单调性，不满足分配律  (2e zn P77) **IMPORTANT!!**

+ Assume neither d nor f is NaN

  + `x == (int)(float) x    `     F
  + `x == (int)(double) x `     T
  + `f == (float)(double) f`    T
  + `d == (double)(float) d`  F
  + `f == -(-f);`     T
  + `2/3 == 2/3.0`    F
  + `d < 0.0 -> ((d*2) < 0.0)`T
  + `d > f  -> -f > -d`  T
  + `d * d >= 0.0`  T
  + `(d+f)-d == f`  F

+ NaN and INF

+ 常数

  + 正无穷            0x7f800000
  + 最大的规格化数 0x7f7fffff
  + 最小的规格化数 0x00800000
  + 最大的非规格化数 0x007fffff
  + 最小的非规格化数 0x00000001


+ Float Conversion

  + round to even

    + itof
    + float div 2
    + float * int

  + round to zero

    + ftoi

      + `(int) -1.9 == -1`
      + `(int) 1.9f == 1` 


+ float 多大会溢出到 +inf ？

  + 待补充



#### double 不一定比 float 精确，float一次向上舍入，一次向下舍入，结果可能更精确。(from exam)






### 字长 word size (2e zn P25)

+ 32, 64

### endian
> 大多数 intel 兼容机采用 little endian，IBM 和 Sun 的机器大多采用大端法。许多比较新的微处理器采用**双端法**。

###  一个字有多大 (3e zn P588)

+ 视具体场景而定




## Chapter 3


### Dereference

+ Dereferencing a pointer means getting the value that is stored in the memory location pointed by the pointer. The operator * is used to do this, and is called the dereferencing operator. int a = 10; int* ptr = &a; printf("%d", *ptr); // With *ptr I'm dereferencing the pointer.

+ 间接引用 = 解引用 (2e zn P117)


### 寄存器

* 寄存器表格，考前看一遍。

* 通用目的寄存器

* 寄存器元素 register elements (2e zn P112 P125)

+ 保存惯例
  * 调用者保存
  * 被调用者保存
    - x86-64
      * %rsp
      * %rbp
      * %rbx
      * %r12 ~ %r15
    - IA32 (2e zn P151)
      * %ebx
      * %esi
      * %edi

  * All xmm registers are caller-saved

* 红色地带 red zone (2e zn P199)
  * ABI 指明程序可以使用栈指针之外 128 bytes 范围。

* frame pointer = base pointer

#### 一元操作
inc dec neg not...
> 操作数可以是寄存器，也可以是一个存储器位置 (2e zn P119)


add imul and shr...
#### 二元操作
> As with the movl instruction, however, the two operands cannot both be memory locations. (2e en P179 zn P119)


#### 条件码

* CF 进位标志
* OF 溢出标志
  + add指令, a<0==b<0 && a<0!=t<0 有符号溢出
* `setl %al` 
* setl `SF^OF`
* setb `CF`

> A set instruction has either one of the eight single-byte register elements
> (Figure 3.2) or a single-byte memory location as its destination, setting this byte
> to either 0 or 1. (2e en P187 zn P125)

> INC, DEC 指令不会改变进位标志 (2e zn P124)


+ 对齐 (2e zn P200)
  * x86-64 linux (pku 16 ppt 07)
    - K 字节基本对象地址必须 K 的倍数。
    - long double 16 字节对齐，分配 16 字节，实际只需10字节。
    - Overall structure placement
      + Each structure has alignment requirement K, K = Largest alignment of any element.
  * (2e zn P171)
    * IA32 linux
      - 2 字节类型地址为 2 的倍数(如 short)
      - 更大数据类型 (如 int, double) 为 4的倍数
      - long double 4 bytes align (Gcc 产生的IA32代码分配 12 字节，虽然实际只需要10字节)

    * Windows 更严格 (不清楚它指的是 IA32 还是 IA32 && x86-64)
      - K 字节基本对象地址必须 K 的倍数 ( K = 2, 4, 8)
      - long double 4 bytes align (Gcc 产生的IA32代码分配 12 字节，虽然实际只需要10字节)

    * > 无论数据是否对齐，IA32硬件都能正确工作。
    * > 当一个 double 不用 8 字节对齐时，我们可能需要执行 2 次存储器访问。
    * > 因为过去存储器缺乏，然而对于现代处理器来说， Windows 的对齐策略就是更好的选择。 



### Imm(Ri, Rb, S)
* $Imm
* Ea
* Imm
* (Ea)
* Imm(Ea)
* (Eb,Ei)
* Imm(Eb,Ei)
* __*(,Ei,S)*__
* __*Imm(,Ei,S)*__
* (Eb,Ei,S)
* Imm(Eb,Ei,S)

S = 1, 2, 4, 8

`lea (％rax, %rsp, 4), %rax` wrong,  Rb不能为%rsp




### (3e en P184)
+ mov
  * `movabsq $0x0011223344556677, %rax  (%rax = 0x0011223344556677)`
  * `movb$-1, %al           (%rax = 0x00112233445566ff)`
  * `movw$-1,%ah            (%rax = 0x001122334455ffff)`
  * `movl$-1,%eax       (%rax = 0x00000000ffffffff)`
  * `movq$-1,%rax     (%rax = 0xffffffffffffffff)`


  * movabsq 表示mov立即数。不是mov立即数的绝对值 (2e zn P189)



### (2e zn P122 P192)
+ 乘除法
  * imull S, D
    - 双操作数，有符号无符号皆可。

  * imull S
    - `R[%edx]:R[%eax] <- S * R[%eax]`
    - 有符号全64位乘法

  * mull S
    - `R[%edx]:R[%eax] <- S * R[%eax]` 
    - 无符号全64位乘法

  * idivl S
    - `R[%edx] <- R[%edx]:R[%eax] mod S`
    - `R[%eax] <- R[%edx]:R[%eax] / S`
    - 有符号

  * divl S
    - `R[%eax] <- R[%edx]:R[%eax] / S` 
    - `R[%eax] <- R[%edx]:R[%eax] / S` 
    - 无符号


+ 扩展
  * cltd
    - `R[%edx]:R[%eax] <- SignExtend(R[%eax])`

  * cltq
    - `R[%rax] <- SignExtend(R[%eax])`

  * cqto
    - `R[%rdx]:R[%rax] <- SignExtend(R[%rax])`

#### 为什么 ret 前有 rep （2e zn P193)

+ rep，重复字符串操作。 空指令作用。 避免 jump 到 ret，使得代码运行更快。


## Chapter 4


### CISC vs RISC 考前看一遍 (2e zn P236) **IMPORTANT!!**


### 发现load/use hazard 的条件能不能去掉前半句？

`E_icode in { IMRMOVL, IPOPL } && E_dstM in { d_srcA, d_srcB }`
改成
`E_dstM in { d_srcA, d_srcB }`

我认为是因为 E_icode in { IMRMOVL, IPOPL } 能推出 E_dstM != RNONE


### 为什么它不考虑 dst 和 src 都为 0xF 的情况？
```
int d_valA = [
  D_icode in { ICALL, IJXX } : D_valP; # Use incremented PC
  d_srcA == e_dstE : e_valE;    # Forward valE from execute
  d_srcA == M_dstM : m_valM;    # Forward valM from memory
  d_srcA == M_dstE : M_valE;    # Forward valE from memory
  d_srcA == W_dstM : W_valM;    # Forward valM from write back
  d_srcA == W_dstE : W_valE;    # Forward valE from write back
  1 : d_rvalA;  # Use value read from register file
];

int d_valB = [
  d_srcB == e_dstE : e_valE;    # Forward valE from execute
  d_srcB == M_dstM : m_valM;    # Forward valM from memory
  d_srcB == M_dstE : M_valE;    # Forward valE from memory
  d_srcB == W_dstM : W_valM;    # Forward valM from write back
  d_srcB == W_dstE : W_valE;    # Forward valE from write back
  1 : d_rvalB;  # Use value read from register file

E_dstM in { d_srcA, d_srcB }
];
```


## Chapter 5



+ 整数加法，乘法，编译器会自动进行 重关联变换 的优化吗？

+ 超标量 superscalar
  + 一个核，指令集并行。多个处理单元。

## Chapter 6

+ DRAM
  + DRAM
  + FPM DRAM
  + EDO DRAM
  + SDRAM
  + DDR SDRAM
  + RDRAM
  + VRAM

+ ROM
  + PROM
  + EPROM
    + BIOS
  + EEPROM
    + flash memory
      + SSD


+ 局部性 (3e zn P418)
  + 时间局部性
    + 被引用的位置，在不远的将来被多次引用。 
  + 空间局部性
    + 引用一个位置，不远的将来引用附近的位置。



## Chapter 7

+ 从ASCII码源文件翻译成可执行目标文件

  + 若要观察行为，可以 -v 运行 gcc

  + gcc -Og -o prog main.c sum.c
    + 预编译 cpp     .c, .h -> .i
    + (预编译)编译 cc1 .i -> .s
    + 汇编 as     .s -> .o
    + 链接 ld   .o -> 可执行目标文件

  + ./prog
    + 加载器(loader)



+ 链接

  + 链接可以在编译时，加载时，运行时

  + 链接器的任务
    + 符号解析
    + 重定位

  + 环境
    + x86-64 linux, ELF-64 (ELF) 目标文件格式。

+ 目标文件
  +
    + 可重定位模板文件
    + 可执行目标文件
    + 共享目标文件
  + 节
    + .rodata
      + switch跳转表
      + printf的格式串等

+ 静态链接器解析符号引用，最小命令行 (3e zn P478)
  + 链接器的输入可以是 .o 或 .a



+ 动态链接
  + 分发软件。
  + 构建高性能 web 服务器。



## Chapter 8

+ nonlocal jump
  + setjmp 返回的指不能赋值给变量，可以用switch。


+ 栈底：高地址

+ Chunk
  + 一块连续的内存区域，为了区别于block（块），将其翻译成片。 (2e zn V)


+ syscall
  + %rax contains syscall number
  + Other arguments in %rdi, %rsi, %rdx, **%r10**, %r8, %r9
  + Return value in %rax
  + Negative value is an error corresponding to negative errno


+ 进程从用户模式切换到内核模式的唯一方法是通过中断，故障，系统调用这样的异常。 (zn 3e P510)
  + 被信号处理程序打断算不算，用户模式到信号处理程序，需要经过内核吗？


+ 信号
  + SIGKILL SIGSTOP 默认行为无法修改

+ unsigned int alarm(unsigned int secs);
  + 返回：前一次闹钟剩余的秒数，如果以前没有设定闹钟，则为0

+ 可移植的信号处理 (zn 3e P540)
  + 不同系统 signal 语义不同
  + 系统调用可以被中断。 read, write, accept 慢速系统调用。

+ short count 不足值 (3e zn P626) (in Chapter 10)

+ SIO

  + 异步信号安全的函数
    + 要么是可重入的，要么它不能被信号处理程序打断。
  + _exit 是 exit 的一个异步信号安全的变种。

### 同步与异步，阻塞与非阻塞



## Chapter 9

+ Address spaces
  + Physical Addressing
    + Physical Page = Page Frame = 物理页 = 页帧
    + Used in “simple” systems like embedded microcontrollers in
      devices like cars, elevators, and digital picture frames
      + 早期的PC使用物理寻址；数字信号处理器，嵌入式微控制器，Cray超级计算机这样的系统仍在使用物理寻址(3e zn P560)
  + Virtual Addressing
    + Used in all modern servers, laptops, and smart phones


+ Virtual Memory
  + Simplifying Linking and Loading
    + Linking
      + Each program has similar virtual address space
      + Code, data, and heap always start at the same addresses.
        + 64-bit 地址空间 代码段总是从 0x400000 开始
    + Loading
      + execve allocates virtual pages for .text and .data sections & creates PTEs as invalid
      + The .text and .data sections are copied, page by page, on demand by the virtual memory system
+ 页面命中完全由硬件处理。
+ 处理缺页要求硬件和操作系统内核协作完成。
+ TLB在MMU中。
+ 虚拟内存管理方式可行性的基础是：程序执行的局部性。
+ 内存映射
  + -
    + Linux 文件系统中的普通文件
    + 匿名文件
  + swap file
    + 一旦一个虚拟页面初始化了，它就在一个由内核维护的专门的交换文件之间换来换去。
    + 在任何时刻，交换空间限制着进程能够分配的虚拟页面总数。


+ （无效的内存引用）段故障
  + MMU 触发缺页，搜索区域结构 mmap vm_area_structs
    + 如果虚拟地址 A 不在某个区域结构定义的区域内， 段故障
    + 如果内存访问不合法。-> 触发 GPF 保护故障。
      + 对只读页面进行写。
      + 用户模式进程对内核虚拟内存操作。
    + 合法地址合法操作


## Chapter 10


+ ip地址
  + 0*  A 类
  + 10*  B 类
  + 110*  C 类
  + 1110*  D 类
  + 1111*  E 类

+ gethostbyname 会联网



## Chapter 11


+ Internet & internet  difference.
  + internet 是 互联网络。
    + 局域网LAN通过路由器连起来。组成一个internet
  + Internet 是一种internet (from pku final 2015)
  + 网络连到一起去是internet (from lesson)


+ 硬件和软件的port不同


+ 1000个包，不能指望第一个包先来。



## Chapter 12


+ mutex : 以提供互斥为目的的二元信号量
  + an rwlock can be used as a mutex (cmu f12 final, 1.3)


+ 判断一个函数是不是可重入函数，在于判断其能否可以被打断，打断后恢复运行能够得到正确的结果。（打断执行的指令序列并不改变函数的数据）
+ 判断一个函数是不是线程安全的，在于判断其能否在多个线程同时执行其指令序列的时候，保证每个线程都能够得到正确的结果。


+ POSIX定义
  + Reentrant Function:A function whose effect, when called by two or more threads,is guaranteed to be as if the threads each executed the function one after another in an undefined order, even ifthe actual execution is interleaved.

  + Thread-Safe Function：A function that may be safely invoked concurrently by multiple threads.

  + Async-Signal-Safe Function： A function that may be invoked, without restriction from signal-catching functions. No function is async-signal-safe unless explicitly described as such.






### 有待整理的一些梗

- 只有已退出(Exited)的进程才能被回收

+ 带合并的 malloc 的空间利用率可能更高、可能一样、可能更低（相对于不带合并的 malloc）
+ 已初始化的变量保存在 ELF 二进制文件中的 .data 部分
+ 进程没有办法处理 SIGKILL 信号
+ 链接器的输入可以是 .o 或 .a
+ 增加 cache 中的 line size 可以减少 compulsory miss
+ int *(*f[3])(); 的意思是 an array of pointers to functions that return pointers to int
+ User stack 不在 ELF 中


+ fork
  + 子进程被阻塞的信号不继承。
  + 子进程handler，以及handler的绑定继承。
+ exec
  + 执行 exec 之后被阻塞的信号会保留。
  + handler不继承，因为.text已经变了。
  + 执行 exec 可能会有 0 次或 1 次返回，取决于执行有没有发生错误，有错才会返回。

+ fork & exec 后 fd table, file table的变化
  + fd table 继承
  + file table 取决于fd table指针如何指向它
  + fork 之后父进程和子进程会立即共享 open file struct
  + fork 之后会复制 file descriptor table

+ void longjmp*(jmp_buf env, int retval); 从不返回。
