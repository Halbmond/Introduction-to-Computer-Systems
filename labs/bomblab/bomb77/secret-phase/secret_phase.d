[0x00400d80]> pdf @ sym.fun7
Cannot find function at 0x0040130a
Cannot find function at 0x0040130a
            ;-- sym.fun7:
            0x0040130a    4883ec08     sub rsp, 0x8
            0x0040130e    4885ff       test rdi, rdi
        ,=< 0x00401311    7426         jz 0x401339
        |   0x00401313    8b07         mov eax, [rdi]
        |   0x00401315    39f0         cmp eax, esi
       ,==< 0x00401317    7e0d         jle 0x401326
       ||   0x00401319    488b7f08     mov rdi, [rdi+0x8]
       ||   0x0040131d    e8e8ffffff   call sym.fun7
       ||      0x0040130a() ; sym.fun7
       ||   0x00401322    01c0         add eax, eax
      ,===< 0x00401324    eb1f         jmp 0x401345
      |`--> 0x00401326    39f0         cmp eax, esi
     ,====< 0x00401328    7416         jz 0x401340
     || |   0x0040132a    488b7f10     mov rdi, [rdi+0x10]
     || |   0x0040132e    e8d7ffffff   call sym.fun7
     || |      0x0040130a() ; sym.fun7
     || |   0x00401333    8d440001     lea eax, [rax+rax+0x1]
    ,=====< 0x00401337    eb0c         jmp 0x401345
    ||| `-> 0x00401339    b8ffffffff   mov eax, 0xffffffff
   ,======< 0x0040133e    eb05         jmp 0x401345
   ||`----> 0x00401340    b800000000   mov eax, 0x0
   ``-`---> 0x00401345    4883c408     add rsp, 0x8
            0x00401349    c3           ret
            ;-- sym.secret_phase:
            0x0040134a    53           push rbx
            0x0040134b    e823040000   call sym.read_line
               0x00401773(unk) ; sym.read_line
            0x00401350    ba0a000000   mov edx, 0xa
            0x00401355    be00000000   mov esi, 0x0
            0x0040135a    4889c7       mov rdi, rax
            0x0040135d    e82ef9ffff   call sym.imp.strtol
               0x00400c90() ; sym.imp.strtol
            0x00401362    4889c3       mov rbx, rax
            0x00401365    8d40ff       lea eax, [rax-0x1]
            0x00401368    3de8030000   cmp eax, 0x3e8
  ,=======< 0x0040136d    7605         jbe 0x401374
  |         0x0040136f    e88a030000   call sym.explode_bomb
  |            0x004016fe() ; sym.explode_bomb
  `-------> 0x00401374    89de         mov esi, ebx
            0x00401376    bf20416000   mov edi, sym.n1
            0x0040137b    e88affffff   call sym.fun7
               0x0040130a() ; sym.fun7
            0x00401380    83f801       cmp eax, 0x1
  ========< 0x00401383    7405         jz 0x40138a
            0x00401385    e874030000   call sym.explode_bomb
               0x004016fe() ; sym.explode_bomb
  --------> 0x0040138a    bf58284000   mov edi, str.WowYouvedefusedthesecretstage
            0x0040138f    e84cf8ffff   call sym.imp.puts
               0x00400be0() ; sym.imp.puts
            0x00401394    e808050000   call sym.phase_defused
               0x004018a1() ; sym.phase_defused
            0x00401399    5b           pop rbx
            0x0040139a    c3           ret

