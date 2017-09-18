[0x00400d80]> pdf @ sym.phase_defused
/ (fcn) sym.phase_defused 174
|   sym.phase_defused ();
|           ; var int local_8h @ rsp+0x8
|           ; var int local_ch @ rsp+0xc
|           ; var int local_10h @ rsp+0x10
|           ; var int local_68h @ rsp+0x68
|           ; XREFS: CALL 0x00400f15  CALL 0x00400f31  CALL 0x00400f4d  CALL 0x00400f69  CALL 0x00400f85  CALL 0x00400fa1  CALL 0x00401394  
|           0x004018a1      4883ec78       sub rsp, 0x78               ; 'x'
|           0x004018a5      64488b042528.  mov rax, qword fs:[0x28]    ; [0x28:8]=0x7fe0 ; '('
|           0x004018ae      4889442468     mov qword [rsp + local_68h], rax
|           0x004018b3      31c0           xor eax, eax
|           0x004018b5      bf01000000     mov edi, 1
|           0x004018ba      e827fdffff     call sym.send_msg
|           0x004018bf      833d663d2000.  cmp dword [obj.num_input_strings], 6 ; [0x6:4]=1
|       ,=< 0x004018c6      756d           jne 0x401935
|       |   0x004018c8      4c8d442410     lea r8, [rsp + local_10h]   ; 0x10
|       |   0x004018cd      488d4c240c     lea rcx, [rsp + local_ch]   ; 0xc
|       |   0x004018d2      488d542408     lea rdx, [rsp + local_8h]   ; 0x8
|       |   0x004018d7      be7a2b4000     mov esi, str._d__d__s       ; "%d %d %s" @ 0x402b7a
|       |   0x004018dc      bf30576000     mov edi, 0x605730
|       |   0x004018e1      b800000000     mov eax, 0
|       |   0x004018e6      e8d5f3ffff     call sym.imp.__isoc99_sscanf
|       |   0x004018eb      83f803         cmp eax, 3
|      ,==< 0x004018ee      7531           jne 0x401921
|      ||   0x004018f0      be832b4000     mov esi, str.tao_ubuntu64   ; "tao@ubuntu64" @ 0x402b83
|      ||   0x004018f5      488d7c2410     lea rdi, [rsp + local_10h]  ; 0x10
|      ||   0x004018fa      e82cfbffff     call sym.strings_not_equal
|      ||   0x004018ff      85c0           test eax, eax
|     ,===< 0x00401901      751e           jne 0x401921
|     |||   0x00401903      bfd8294000     mov edi, str.Curses__you_ve_found_the_secret_phase_ ; "Curses, you've found the secret phase!" @ 0x4029d8
|     |||   0x00401908      e8d3f2ffff     call sym.imp.puts
|     |||   0x0040190d      bf002a4000     mov edi, str.But_finding_it_and_solving_it_are_quite_different... ; "But finding it and solving it are quite different..." @ 0x402a00
|     |||   0x00401912      e8c9f2ffff     call sym.imp.puts
|     |||   0x00401917      b800000000     mov eax, 0
|     |||   0x0040191c      e829faffff     call sym.secret_phase
|     ``--> 0x00401921      bf382a4000     mov edi, str.Congratulations__You_ve_defused_the_bomb_ ; "Congratulations! You've defused the bomb!" @ 0x402a38
|       |   0x00401926      e8b5f2ffff     call sym.imp.puts
|       |   0x0040192b      bf682a4000     mov edi, str.Your_instructor_has_been_notified_and_will_verify_your_solution. ; "Your instructor has been notified and will verify your solution." @ 0x402a68
|       |   0x00401930      e8abf2ffff     call sym.imp.puts
|       `-> 0x00401935      488b442468     mov rax, qword [rsp + local_68h] ; [0x68:8]=504 ; 'h'
|           0x0040193a      644833042528.  xor rax, qword fs:[0x28]
|       ,=< 0x00401943      7405           je 0x40194a
|       |   0x00401945      e8b6f2ffff     call sym.imp.__stack_chk_fail
|       `-> 0x0040194a      4883c478       add rsp, 0x78               ; 'x'
\           0x0040194e      c3             ret

