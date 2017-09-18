
bomb：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000400b70 <_init>:
  400b70:	48 83 ec 08          	sub    $0x8,%rsp
  400b74:	48 8b 05 7d 34 20 00 	mov    0x20347d(%rip),%rax        # 603ff8 <_DYNAMIC+0x1e0>
  400b7b:	48 85 c0             	test   %rax,%rax
  400b7e:	74 05                	je     400b85 <_init+0x15>
  400b80:	e8 eb 01 00 00       	callq  400d70 <socket@plt+0x10>
  400b85:	48 83 c4 08          	add    $0x8,%rsp
  400b89:	c3                   	retq   

Disassembly of section .plt:

0000000000400b90 <getenv@plt-0x10>:
  400b90:	ff 35 72 34 20 00    	pushq  0x203472(%rip)        # 604008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400b96:	ff 25 74 34 20 00    	jmpq   *0x203474(%rip)        # 604010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400b9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ba0 <getenv@plt>:
  400ba0:	ff 25 72 34 20 00    	jmpq   *0x203472(%rip)        # 604018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400ba6:	68 00 00 00 00       	pushq  $0x0
  400bab:	e9 e0 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400bb0 <strcasecmp@plt>:
  400bb0:	ff 25 6a 34 20 00    	jmpq   *0x20346a(%rip)        # 604020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400bb6:	68 01 00 00 00       	pushq  $0x1
  400bbb:	e9 d0 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400bc0 <__errno_location@plt>:
  400bc0:	ff 25 62 34 20 00    	jmpq   *0x203462(%rip)        # 604028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400bc6:	68 02 00 00 00       	pushq  $0x2
  400bcb:	e9 c0 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400bd0 <strcpy@plt>:
  400bd0:	ff 25 5a 34 20 00    	jmpq   *0x20345a(%rip)        # 604030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400bd6:	68 03 00 00 00       	pushq  $0x3
  400bdb:	e9 b0 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400be0 <puts@plt>:
  400be0:	ff 25 52 34 20 00    	jmpq   *0x203452(%rip)        # 604038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400be6:	68 04 00 00 00       	pushq  $0x4
  400beb:	e9 a0 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400bf0 <write@plt>:
  400bf0:	ff 25 4a 34 20 00    	jmpq   *0x20344a(%rip)        # 604040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400bf6:	68 05 00 00 00       	pushq  $0x5
  400bfb:	e9 90 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c00 <__stack_chk_fail@plt>:
  400c00:	ff 25 42 34 20 00    	jmpq   *0x203442(%rip)        # 604048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400c06:	68 06 00 00 00       	pushq  $0x6
  400c0b:	e9 80 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c10 <alarm@plt>:
  400c10:	ff 25 3a 34 20 00    	jmpq   *0x20343a(%rip)        # 604050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400c16:	68 07 00 00 00       	pushq  $0x7
  400c1b:	e9 70 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c20 <close@plt>:
  400c20:	ff 25 32 34 20 00    	jmpq   *0x203432(%rip)        # 604058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400c26:	68 08 00 00 00       	pushq  $0x8
  400c2b:	e9 60 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c30 <read@plt>:
  400c30:	ff 25 2a 34 20 00    	jmpq   *0x20342a(%rip)        # 604060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400c36:	68 09 00 00 00       	pushq  $0x9
  400c3b:	e9 50 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c40 <__libc_start_main@plt>:
  400c40:	ff 25 22 34 20 00    	jmpq   *0x203422(%rip)        # 604068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400c46:	68 0a 00 00 00       	pushq  $0xa
  400c4b:	e9 40 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c50 <fgets@plt>:
  400c50:	ff 25 1a 34 20 00    	jmpq   *0x20341a(%rip)        # 604070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400c56:	68 0b 00 00 00       	pushq  $0xb
  400c5b:	e9 30 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c60 <signal@plt>:
  400c60:	ff 25 12 34 20 00    	jmpq   *0x203412(%rip)        # 604078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400c66:	68 0c 00 00 00       	pushq  $0xc
  400c6b:	e9 20 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c70 <gethostbyname@plt>:
  400c70:	ff 25 0a 34 20 00    	jmpq   *0x20340a(%rip)        # 604080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400c76:	68 0d 00 00 00       	pushq  $0xd
  400c7b:	e9 10 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c80 <__memmove_chk@plt>:
  400c80:	ff 25 02 34 20 00    	jmpq   *0x203402(%rip)        # 604088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400c86:	68 0e 00 00 00       	pushq  $0xe
  400c8b:	e9 00 ff ff ff       	jmpq   400b90 <_init+0x20>

0000000000400c90 <strtol@plt>:
  400c90:	ff 25 fa 33 20 00    	jmpq   *0x2033fa(%rip)        # 604090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400c96:	68 0f 00 00 00       	pushq  $0xf
  400c9b:	e9 f0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400ca0 <memcpy@plt>:
  400ca0:	ff 25 f2 33 20 00    	jmpq   *0x2033f2(%rip)        # 604098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400ca6:	68 10 00 00 00       	pushq  $0x10
  400cab:	e9 e0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400cb0 <fflush@plt>:
  400cb0:	ff 25 ea 33 20 00    	jmpq   *0x2033ea(%rip)        # 6040a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400cb6:	68 11 00 00 00       	pushq  $0x11
  400cbb:	e9 d0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400cc0 <__isoc99_sscanf@plt>:
  400cc0:	ff 25 e2 33 20 00    	jmpq   *0x2033e2(%rip)        # 6040a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400cc6:	68 12 00 00 00       	pushq  $0x12
  400ccb:	e9 c0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400cd0 <__printf_chk@plt>:
  400cd0:	ff 25 da 33 20 00    	jmpq   *0x2033da(%rip)        # 6040b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400cd6:	68 13 00 00 00       	pushq  $0x13
  400cdb:	e9 b0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400ce0 <fopen@plt>:
  400ce0:	ff 25 d2 33 20 00    	jmpq   *0x2033d2(%rip)        # 6040b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400ce6:	68 14 00 00 00       	pushq  $0x14
  400ceb:	e9 a0 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400cf0 <gethostname@plt>:
  400cf0:	ff 25 ca 33 20 00    	jmpq   *0x2033ca(%rip)        # 6040c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400cf6:	68 15 00 00 00       	pushq  $0x15
  400cfb:	e9 90 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d00 <exit@plt>:
  400d00:	ff 25 c2 33 20 00    	jmpq   *0x2033c2(%rip)        # 6040c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400d06:	68 16 00 00 00       	pushq  $0x16
  400d0b:	e9 80 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d10 <connect@plt>:
  400d10:	ff 25 ba 33 20 00    	jmpq   *0x2033ba(%rip)        # 6040d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400d16:	68 17 00 00 00       	pushq  $0x17
  400d1b:	e9 70 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d20 <__fprintf_chk@plt>:
  400d20:	ff 25 b2 33 20 00    	jmpq   *0x2033b2(%rip)        # 6040d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400d26:	68 18 00 00 00       	pushq  $0x18
  400d2b:	e9 60 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d30 <sleep@plt>:
  400d30:	ff 25 aa 33 20 00    	jmpq   *0x2033aa(%rip)        # 6040e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400d36:	68 19 00 00 00       	pushq  $0x19
  400d3b:	e9 50 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d40 <__ctype_b_loc@plt>:
  400d40:	ff 25 a2 33 20 00    	jmpq   *0x2033a2(%rip)        # 6040e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400d46:	68 1a 00 00 00       	pushq  $0x1a
  400d4b:	e9 40 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d50 <__sprintf_chk@plt>:
  400d50:	ff 25 9a 33 20 00    	jmpq   *0x20339a(%rip)        # 6040f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400d56:	68 1b 00 00 00       	pushq  $0x1b
  400d5b:	e9 30 fe ff ff       	jmpq   400b90 <_init+0x20>

0000000000400d60 <socket@plt>:
  400d60:	ff 25 92 33 20 00    	jmpq   *0x203392(%rip)        # 6040f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400d66:	68 1c 00 00 00       	pushq  $0x1c
  400d6b:	e9 20 fe ff ff       	jmpq   400b90 <_init+0x20>

Disassembly of section .plt.got:

0000000000400d70 <.plt.got>:
  400d70:	ff 25 82 32 20 00    	jmpq   *0x203282(%rip)        # 603ff8 <_DYNAMIC+0x1e0>
  400d76:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400d80 <_start>:
  400d80:	31 ed                	xor    %ebp,%ebp
  400d82:	49 89 d1             	mov    %rdx,%r9
  400d85:	5e                   	pop    %rsi
  400d86:	48 89 e2             	mov    %rsp,%rdx
  400d89:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400d8d:	50                   	push   %rax
  400d8e:	54                   	push   %rsp
  400d8f:	49 c7 c0 c0 26 40 00 	mov    $0x4026c0,%r8
  400d96:	48 c7 c1 50 26 40 00 	mov    $0x402650,%rcx
  400d9d:	48 c7 c7 76 0e 40 00 	mov    $0x400e76,%rdi
  400da4:	e8 97 fe ff ff       	callq  400c40 <__libc_start_main@plt>
  400da9:	f4                   	hlt    
  400daa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400db0 <deregister_tm_clones>:
  400db0:	b8 07 56 60 00       	mov    $0x605607,%eax
  400db5:	55                   	push   %rbp
  400db6:	48 2d 00 56 60 00    	sub    $0x605600,%rax
  400dbc:	48 83 f8 0e          	cmp    $0xe,%rax
  400dc0:	48 89 e5             	mov    %rsp,%rbp
  400dc3:	76 1b                	jbe    400de0 <deregister_tm_clones+0x30>
  400dc5:	b8 00 00 00 00       	mov    $0x0,%eax
  400dca:	48 85 c0             	test   %rax,%rax
  400dcd:	74 11                	je     400de0 <deregister_tm_clones+0x30>
  400dcf:	5d                   	pop    %rbp
  400dd0:	bf 00 56 60 00       	mov    $0x605600,%edi
  400dd5:	ff e0                	jmpq   *%rax
  400dd7:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400dde:	00 00 
  400de0:	5d                   	pop    %rbp
  400de1:	c3                   	retq   
  400de2:	0f 1f 40 00          	nopl   0x0(%rax)
  400de6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400ded:	00 00 00 

0000000000400df0 <register_tm_clones>:
  400df0:	be 00 56 60 00       	mov    $0x605600,%esi
  400df5:	55                   	push   %rbp
  400df6:	48 81 ee 00 56 60 00 	sub    $0x605600,%rsi
  400dfd:	48 c1 fe 03          	sar    $0x3,%rsi
  400e01:	48 89 e5             	mov    %rsp,%rbp
  400e04:	48 89 f0             	mov    %rsi,%rax
  400e07:	48 c1 e8 3f          	shr    $0x3f,%rax
  400e0b:	48 01 c6             	add    %rax,%rsi
  400e0e:	48 d1 fe             	sar    %rsi
  400e11:	74 15                	je     400e28 <register_tm_clones+0x38>
  400e13:	b8 00 00 00 00       	mov    $0x0,%eax
  400e18:	48 85 c0             	test   %rax,%rax
  400e1b:	74 0b                	je     400e28 <register_tm_clones+0x38>
  400e1d:	5d                   	pop    %rbp
  400e1e:	bf 00 56 60 00       	mov    $0x605600,%edi
  400e23:	ff e0                	jmpq   *%rax
  400e25:	0f 1f 00             	nopl   (%rax)
  400e28:	5d                   	pop    %rbp
  400e29:	c3                   	retq   
  400e2a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400e30 <__do_global_dtors_aux>:
  400e30:	80 3d f1 47 20 00 00 	cmpb   $0x0,0x2047f1(%rip)        # 605628 <completed.7585>
  400e37:	75 11                	jne    400e4a <__do_global_dtors_aux+0x1a>
  400e39:	55                   	push   %rbp
  400e3a:	48 89 e5             	mov    %rsp,%rbp
  400e3d:	e8 6e ff ff ff       	callq  400db0 <deregister_tm_clones>
  400e42:	5d                   	pop    %rbp
  400e43:	c6 05 de 47 20 00 01 	movb   $0x1,0x2047de(%rip)        # 605628 <completed.7585>
  400e4a:	f3 c3                	repz retq 
  400e4c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400e50 <frame_dummy>:
  400e50:	bf 10 3e 60 00       	mov    $0x603e10,%edi
  400e55:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400e59:	75 05                	jne    400e60 <frame_dummy+0x10>
  400e5b:	eb 93                	jmp    400df0 <register_tm_clones>
  400e5d:	0f 1f 00             	nopl   (%rax)
  400e60:	b8 00 00 00 00       	mov    $0x0,%eax
  400e65:	48 85 c0             	test   %rax,%rax
  400e68:	74 f1                	je     400e5b <frame_dummy+0xb>
  400e6a:	55                   	push   %rbp
  400e6b:	48 89 e5             	mov    %rsp,%rbp
  400e6e:	ff d0                	callq  *%rax
  400e70:	5d                   	pop    %rbp
  400e71:	e9 7a ff ff ff       	jmpq   400df0 <register_tm_clones>

0000000000400e76 <main>:
  400e76:	53                   	push   %rbx
  400e77:	83 ff 01             	cmp    $0x1,%edi
  400e7a:	75 10                	jne    400e8c <main+0x16>
  400e7c:	48 8b 05 8d 47 20 00 	mov    0x20478d(%rip),%rax        # 605610 <stdin@@GLIBC_2.2.5>
  400e83:	48 89 05 a6 47 20 00 	mov    %rax,0x2047a6(%rip)        # 605630 <infile>
  400e8a:	eb 63                	jmp    400eef <main+0x79>
  400e8c:	48 89 f3             	mov    %rsi,%rbx
  400e8f:	83 ff 02             	cmp    $0x2,%edi
  400e92:	75 3a                	jne    400ece <main+0x58>
  400e94:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
  400e98:	be d4 26 40 00       	mov    $0x4026d4,%esi
  400e9d:	e8 3e fe ff ff       	callq  400ce0 <fopen@plt>
  400ea2:	48 89 05 87 47 20 00 	mov    %rax,0x204787(%rip)        # 605630 <infile>
  400ea9:	48 85 c0             	test   %rax,%rax
  400eac:	75 41                	jne    400eef <main+0x79>
  400eae:	48 8b 4b 08          	mov    0x8(%rbx),%rcx
  400eb2:	48 8b 13             	mov    (%rbx),%rdx
  400eb5:	be d6 26 40 00       	mov    $0x4026d6,%esi
  400eba:	bf 01 00 00 00       	mov    $0x1,%edi
  400ebf:	e8 0c fe ff ff       	callq  400cd0 <__printf_chk@plt>
  400ec4:	bf 08 00 00 00       	mov    $0x8,%edi
  400ec9:	e8 32 fe ff ff       	callq  400d00 <exit@plt>
  400ece:	48 8b 16             	mov    (%rsi),%rdx
  400ed1:	be f3 26 40 00       	mov    $0x4026f3,%esi
  400ed6:	bf 01 00 00 00       	mov    $0x1,%edi
  400edb:	b8 00 00 00 00       	mov    $0x0,%eax
  400ee0:	e8 eb fd ff ff       	callq  400cd0 <__printf_chk@plt>
  400ee5:	bf 08 00 00 00       	mov    $0x8,%edi
  400eea:	e8 11 fe ff ff       	callq  400d00 <exit@plt>
  400eef:	e8 84 05 00 00       	callq  401478 <initialize_bomb>
  400ef4:	bf 58 27 40 00       	mov    $0x402758,%edi
  400ef9:	e8 e2 fc ff ff       	callq  400be0 <puts@plt>
  400efe:	bf 98 27 40 00       	mov    $0x402798,%edi
  400f03:	e8 d8 fc ff ff       	callq  400be0 <puts@plt>
  400f08:	e8 66 08 00 00       	callq  401773 <read_line>
  400f0d:	48 89 c7             	mov    %rax,%rdi
  400f10:	e8 98 00 00 00       	callq  400fad <phase_1>
  400f15:	e8 87 09 00 00       	callq  4018a1 <phase_defused>
  400f1a:	bf c8 27 40 00       	mov    $0x4027c8,%edi
  400f1f:	e8 bc fc ff ff       	callq  400be0 <puts@plt>
  400f24:	e8 4a 08 00 00       	callq  401773 <read_line>
  400f29:	48 89 c7             	mov    %rax,%rdi
  400f2c:	e8 98 00 00 00       	callq  400fc9 <phase_2>
  400f31:	e8 6b 09 00 00       	callq  4018a1 <phase_defused>
  400f36:	bf 0d 27 40 00       	mov    $0x40270d,%edi
  400f3b:	e8 a0 fc ff ff       	callq  400be0 <puts@plt>
  400f40:	e8 2e 08 00 00       	callq  401773 <read_line>
  400f45:	48 89 c7             	mov    %rax,%rdi
  400f48:	e8 e5 00 00 00       	callq  401032 <phase_3>
  400f4d:	e8 4f 09 00 00       	callq  4018a1 <phase_defused>
  400f52:	bf 2b 27 40 00       	mov    $0x40272b,%edi
  400f57:	e8 84 fc ff ff       	callq  400be0 <puts@plt>
  400f5c:	e8 12 08 00 00       	callq  401773 <read_line>
  400f61:	48 89 c7             	mov    %rax,%rdi
  400f64:	e8 a5 01 00 00       	callq  40110e <phase_4>
  400f69:	e8 33 09 00 00       	callq  4018a1 <phase_defused>
  400f6e:	bf f8 27 40 00       	mov    $0x4027f8,%edi
  400f73:	e8 68 fc ff ff       	callq  400be0 <puts@plt>
  400f78:	e8 f6 07 00 00       	callq  401773 <read_line>
  400f7d:	48 89 c7             	mov    %rax,%rdi
  400f80:	e8 02 02 00 00       	callq  401187 <phase_5>
  400f85:	e8 17 09 00 00       	callq  4018a1 <phase_defused>
  400f8a:	bf 3a 27 40 00       	mov    $0x40273a,%edi
  400f8f:	e8 4c fc ff ff       	callq  400be0 <puts@plt>
  400f94:	e8 da 07 00 00       	callq  401773 <read_line>
  400f99:	48 89 c7             	mov    %rax,%rdi
  400f9c:	e8 66 02 00 00       	callq  401207 <phase_6>
  400fa1:	e8 fb 08 00 00       	callq  4018a1 <phase_defused>
  400fa6:	b8 00 00 00 00       	mov    $0x0,%eax
  400fab:	5b                   	pop    %rbx
  400fac:	c3                   	retq   

0000000000400fad <phase_1>:
  400fad:	48 83 ec 08          	sub    $0x8,%rsp
  400fb1:	be 20 28 40 00       	mov    $0x402820,%esi
  400fb6:	e8 70 04 00 00       	callq  40142b <strings_not_equal>
  400fbb:	85 c0                	test   %eax,%eax
  400fbd:	74 05                	je     400fc4 <phase_1+0x17>
  400fbf:	e8 3a 07 00 00       	callq  4016fe <explode_bomb>
  400fc4:	48 83 c4 08          	add    $0x8,%rsp
  400fc8:	c3                   	retq   

0000000000400fc9 <phase_2>:
  400fc9:	53                   	push   %rbx
  400fca:	48 83 ec 20          	sub    $0x20,%rsp
  400fce:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  400fd5:	00 00 
  400fd7:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  400fdc:	31 c0                	xor    %eax,%eax
  400fde:	48 89 e6             	mov    %rsp,%rsi
  400fe1:	e8 4e 07 00 00       	callq  401734 <read_six_numbers>
  400fe6:	83 3c 24 01          	cmpl   $0x1,(%rsp)
  400fea:	74 05                	je     400ff1 <phase_2+0x28>
  400fec:	e8 0d 07 00 00       	callq  4016fe <explode_bomb>
  400ff1:	bb 01 00 00 00       	mov    $0x1,%ebx
  400ff6:	eb 1a                	jmp    401012 <phase_2+0x49>
  400ff8:	48 63 d3             	movslq %ebx,%rdx
  400ffb:	8d 43 ff             	lea    -0x1(%rbx),%eax
  400ffe:	48 98                	cltq   
  401000:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  401003:	01 c0                	add    %eax,%eax
  401005:	39 04 94             	cmp    %eax,(%rsp,%rdx,4)
  401008:	74 05                	je     40100f <phase_2+0x46>
  40100a:	e8 ef 06 00 00       	callq  4016fe <explode_bomb>
  40100f:	83 c3 01             	add    $0x1,%ebx
  401012:	83 fb 05             	cmp    $0x5,%ebx
  401015:	7e e1                	jle    400ff8 <phase_2+0x2f>
  401017:	48 8b 44 24 18       	mov    0x18(%rsp),%rax
  40101c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401023:	00 00 
  401025:	74 05                	je     40102c <phase_2+0x63>
  401027:	e8 d4 fb ff ff       	callq  400c00 <__stack_chk_fail@plt>
  40102c:	48 83 c4 20          	add    $0x20,%rsp
  401030:	5b                   	pop    %rbx
  401031:	c3                   	retq   

0000000000401032 <phase_3>:
  401032:	48 83 ec 18          	sub    $0x18,%rsp
  401036:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40103d:	00 00 
  40103f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401044:	31 c0                	xor    %eax,%eax
  401046:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  40104b:	48 89 e2             	mov    %rsp,%rdx
  40104e:	be 30 2b 40 00       	mov    $0x402b30,%esi
  401053:	e8 68 fc ff ff       	callq  400cc0 <__isoc99_sscanf@plt>
  401058:	83 f8 01             	cmp    $0x1,%eax
  40105b:	7f 05                	jg     401062 <phase_3+0x30>
  40105d:	e8 9c 06 00 00       	callq  4016fe <explode_bomb>
  401062:	83 3c 24 07          	cmpl   $0x7,(%rsp)
  401066:	77 3b                	ja     4010a3 <phase_3+0x71>
  401068:	8b 04 24             	mov    (%rsp),%eax
  40106b:	ff 24 c5 90 28 40 00 	jmpq   *0x402890(,%rax,8)
  401072:	b8 47 02 00 00       	mov    $0x247,%eax
  401077:	eb 3b                	jmp    4010b4 <phase_3+0x82>
  401079:	b8 4e 01 00 00       	mov    $0x14e,%eax
  40107e:	eb 34                	jmp    4010b4 <phase_3+0x82>
  401080:	b8 10 02 00 00       	mov    $0x210,%eax
  401085:	eb 2d                	jmp    4010b4 <phase_3+0x82>
  401087:	b8 0f 03 00 00       	mov    $0x30f,%eax
  40108c:	eb 26                	jmp    4010b4 <phase_3+0x82>
  40108e:	b8 65 01 00 00       	mov    $0x165,%eax
  401093:	eb 1f                	jmp    4010b4 <phase_3+0x82>
  401095:	b8 44 02 00 00       	mov    $0x244,%eax
  40109a:	eb 18                	jmp    4010b4 <phase_3+0x82>
  40109c:	b8 b2 02 00 00       	mov    $0x2b2,%eax
  4010a1:	eb 11                	jmp    4010b4 <phase_3+0x82>
  4010a3:	e8 56 06 00 00       	callq  4016fe <explode_bomb>
  4010a8:	b8 00 00 00 00       	mov    $0x0,%eax
  4010ad:	eb 05                	jmp    4010b4 <phase_3+0x82>
  4010af:	b8 4d 00 00 00       	mov    $0x4d,%eax
  4010b4:	3b 44 24 04          	cmp    0x4(%rsp),%eax
  4010b8:	74 05                	je     4010bf <phase_3+0x8d>
  4010ba:	e8 3f 06 00 00       	callq  4016fe <explode_bomb>
  4010bf:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4010c4:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4010cb:	00 00 
  4010cd:	74 05                	je     4010d4 <phase_3+0xa2>
  4010cf:	e8 2c fb ff ff       	callq  400c00 <__stack_chk_fail@plt>
  4010d4:	48 83 c4 18          	add    $0x18,%rsp
  4010d8:	c3                   	retq   

00000000004010d9 <func4>:
  4010d9:	53                   	push   %rbx
  4010da:	89 d0                	mov    %edx,%eax
  4010dc:	29 f0                	sub    %esi,%eax
  4010de:	89 c3                	mov    %eax,%ebx
  4010e0:	c1 eb 1f             	shr    $0x1f,%ebx
  4010e3:	01 d8                	add    %ebx,%eax
  4010e5:	d1 f8                	sar    %eax
  4010e7:	8d 1c 06             	lea    (%rsi,%rax,1),%ebx
  4010ea:	39 fb                	cmp    %edi,%ebx
  4010ec:	7e 0c                	jle    4010fa <func4+0x21>
  4010ee:	8d 53 ff             	lea    -0x1(%rbx),%edx
  4010f1:	e8 e3 ff ff ff       	callq  4010d9 <func4>
  4010f6:	01 d8                	add    %ebx,%eax
  4010f8:	eb 12                	jmp    40110c <func4+0x33>
  4010fa:	39 fb                	cmp    %edi,%ebx
  4010fc:	7d 0c                	jge    40110a <func4+0x31>
  4010fe:	8d 73 01             	lea    0x1(%rbx),%esi
  401101:	e8 d3 ff ff ff       	callq  4010d9 <func4>
  401106:	01 d8                	add    %ebx,%eax
  401108:	eb 02                	jmp    40110c <func4+0x33>
  40110a:	89 d8                	mov    %ebx,%eax
  40110c:	5b                   	pop    %rbx
  40110d:	c3                   	retq   

000000000040110e <phase_4>:
  40110e:	48 83 ec 18          	sub    $0x18,%rsp
  401112:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401119:	00 00 
  40111b:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401120:	31 c0                	xor    %eax,%eax
  401122:	48 8d 4c 24 04       	lea    0x4(%rsp),%rcx
  401127:	48 89 e2             	mov    %rsp,%rdx
  40112a:	be 30 2b 40 00       	mov    $0x402b30,%esi
  40112f:	e8 8c fb ff ff       	callq  400cc0 <__isoc99_sscanf@plt>
  401134:	83 f8 02             	cmp    $0x2,%eax
  401137:	75 0c                	jne    401145 <phase_4+0x37>
  401139:	8b 04 24             	mov    (%rsp),%eax
  40113c:	85 c0                	test   %eax,%eax
  40113e:	78 05                	js     401145 <phase_4+0x37>
  401140:	83 f8 0e             	cmp    $0xe,%eax
  401143:	7e 05                	jle    40114a <phase_4+0x3c>
  401145:	e8 b4 05 00 00       	callq  4016fe <explode_bomb>
  40114a:	ba 0e 00 00 00       	mov    $0xe,%edx
  40114f:	be 00 00 00 00       	mov    $0x0,%esi
  401154:	8b 3c 24             	mov    (%rsp),%edi
  401157:	e8 7d ff ff ff       	callq  4010d9 <func4>
  40115c:	83 f8 23             	cmp    $0x23,%eax
  40115f:	75 07                	jne    401168 <phase_4+0x5a>
  401161:	83 7c 24 04 23       	cmpl   $0x23,0x4(%rsp)
  401166:	74 05                	je     40116d <phase_4+0x5f>
  401168:	e8 91 05 00 00       	callq  4016fe <explode_bomb>
  40116d:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  401172:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401179:	00 00 
  40117b:	74 05                	je     401182 <phase_4+0x74>
  40117d:	e8 7e fa ff ff       	callq  400c00 <__stack_chk_fail@plt>
  401182:	48 83 c4 18          	add    $0x18,%rsp
  401186:	c3                   	retq   

0000000000401187 <phase_5>:
  401187:	53                   	push   %rbx
  401188:	48 83 ec 10          	sub    $0x10,%rsp
  40118c:	48 89 fb             	mov    %rdi,%rbx
  40118f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401196:	00 00 
  401198:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  40119d:	31 c0                	xor    %eax,%eax
  40119f:	e8 72 02 00 00       	callq  401416 <string_length>
  4011a4:	83 f8 06             	cmp    $0x6,%eax
  4011a7:	74 05                	je     4011ae <phase_5+0x27>
  4011a9:	e8 50 05 00 00       	callq  4016fe <explode_bomb>
  4011ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4011b3:	eb 17                	jmp    4011cc <phase_5+0x45>
  4011b5:	48 63 c8             	movslq %eax,%rcx
  4011b8:	0f b6 14 0b          	movzbl (%rbx,%rcx,1),%edx
  4011bc:	83 e2 0f             	and    $0xf,%edx
  4011bf:	0f b6 92 d0 28 40 00 	movzbl 0x4028d0(%rdx),%edx
  4011c6:	88 14 0c             	mov    %dl,(%rsp,%rcx,1)
  4011c9:	83 c0 01             	add    $0x1,%eax
  4011cc:	83 f8 05             	cmp    $0x5,%eax
  4011cf:	7e e4                	jle    4011b5 <phase_5+0x2e>
  4011d1:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
  4011d6:	be 7e 28 40 00       	mov    $0x40287e,%esi
  4011db:	48 89 e7             	mov    %rsp,%rdi
  4011de:	e8 48 02 00 00       	callq  40142b <strings_not_equal>
  4011e3:	85 c0                	test   %eax,%eax
  4011e5:	74 05                	je     4011ec <phase_5+0x65>
  4011e7:	e8 12 05 00 00       	callq  4016fe <explode_bomb>
  4011ec:	48 8b 44 24 08       	mov    0x8(%rsp),%rax
  4011f1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011f8:	00 00 
  4011fa:	74 05                	je     401201 <phase_5+0x7a>
  4011fc:	e8 ff f9 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  401201:	48 83 c4 10          	add    $0x10,%rsp
  401205:	5b                   	pop    %rbx
  401206:	c3                   	retq   

0000000000401207 <phase_6>:
  401207:	41 54                	push   %r12
  401209:	55                   	push   %rbp
  40120a:	53                   	push   %rbx
  40120b:	48 83 ec 60          	sub    $0x60,%rsp
  40120f:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401216:	00 00 
  401218:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
  40121d:	31 c0                	xor    %eax,%eax
  40121f:	48 89 e6             	mov    %rsp,%rsi
  401222:	e8 0d 05 00 00       	callq  401734 <read_six_numbers>
  401227:	bd 00 00 00 00       	mov    $0x0,%ebp
  40122c:	eb 3a                	jmp    401268 <phase_6+0x61>
  40122e:	48 63 c5             	movslq %ebp,%rax
  401231:	8b 04 84             	mov    (%rsp,%rax,4),%eax
  401234:	83 e8 01             	sub    $0x1,%eax
  401237:	83 f8 05             	cmp    $0x5,%eax
  40123a:	76 05                	jbe    401241 <phase_6+0x3a>
  40123c:	e8 bd 04 00 00       	callq  4016fe <explode_bomb>
  401241:	44 8d 65 01          	lea    0x1(%rbp),%r12d
  401245:	44 89 e3             	mov    %r12d,%ebx
  401248:	eb 16                	jmp    401260 <phase_6+0x59>
  40124a:	48 63 c5             	movslq %ebp,%rax
  40124d:	48 63 d3             	movslq %ebx,%rdx
  401250:	8b 3c 94             	mov    (%rsp,%rdx,4),%edi
  401253:	39 3c 84             	cmp    %edi,(%rsp,%rax,4)
  401256:	75 05                	jne    40125d <phase_6+0x56>
  401258:	e8 a1 04 00 00       	callq  4016fe <explode_bomb>
  40125d:	83 c3 01             	add    $0x1,%ebx
  401260:	83 fb 05             	cmp    $0x5,%ebx
  401263:	7e e5                	jle    40124a <phase_6+0x43>
  401265:	44 89 e5             	mov    %r12d,%ebp
  401268:	83 fd 05             	cmp    $0x5,%ebp
  40126b:	7e c1                	jle    40122e <phase_6+0x27>
  40126d:	be 00 00 00 00       	mov    $0x0,%esi
  401272:	eb 23                	jmp    401297 <phase_6+0x90>
  401274:	48 8b 52 08          	mov    0x8(%rdx),%rdx
  401278:	83 c0 01             	add    $0x1,%eax
  40127b:	eb 0a                	jmp    401287 <phase_6+0x80>
  40127d:	b8 01 00 00 00       	mov    $0x1,%eax
  401282:	ba 00 43 60 00       	mov    $0x604300,%edx
  401287:	48 63 ce             	movslq %esi,%rcx
  40128a:	3b 04 8c             	cmp    (%rsp,%rcx,4),%eax
  40128d:	7c e5                	jl     401274 <phase_6+0x6d>
  40128f:	48 89 54 cc 20       	mov    %rdx,0x20(%rsp,%rcx,8)
  401294:	83 c6 01             	add    $0x1,%esi
  401297:	83 fe 05             	cmp    $0x5,%esi
  40129a:	7e e1                	jle    40127d <phase_6+0x76>
  40129c:	48 8b 5c 24 20       	mov    0x20(%rsp),%rbx
  4012a1:	48 89 d9             	mov    %rbx,%rcx
  4012a4:	b8 01 00 00 00       	mov    $0x1,%eax
  4012a9:	eb 12                	jmp    4012bd <phase_6+0xb6>
  4012ab:	48 63 d0             	movslq %eax,%rdx
  4012ae:	48 8b 54 d4 20       	mov    0x20(%rsp,%rdx,8),%rdx
  4012b3:	48 89 51 08          	mov    %rdx,0x8(%rcx)
  4012b7:	83 c0 01             	add    $0x1,%eax
  4012ba:	48 89 d1             	mov    %rdx,%rcx
  4012bd:	83 f8 05             	cmp    $0x5,%eax
  4012c0:	7e e9                	jle    4012ab <phase_6+0xa4>
  4012c2:	48 c7 41 08 00 00 00 	movq   $0x0,0x8(%rcx)
  4012c9:	00 
  4012ca:	bd 00 00 00 00       	mov    $0x0,%ebp
  4012cf:	eb 16                	jmp    4012e7 <phase_6+0xe0>
  4012d1:	48 8b 43 08          	mov    0x8(%rbx),%rax
  4012d5:	8b 00                	mov    (%rax),%eax
  4012d7:	39 03                	cmp    %eax,(%rbx)
  4012d9:	7d 05                	jge    4012e0 <phase_6+0xd9>
  4012db:	e8 1e 04 00 00       	callq  4016fe <explode_bomb>
  4012e0:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
  4012e4:	83 c5 01             	add    $0x1,%ebp
  4012e7:	83 fd 04             	cmp    $0x4,%ebp
  4012ea:	7e e5                	jle    4012d1 <phase_6+0xca>
  4012ec:	48 8b 44 24 58       	mov    0x58(%rsp),%rax
  4012f1:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4012f8:	00 00 
  4012fa:	74 05                	je     401301 <phase_6+0xfa>
  4012fc:	e8 ff f8 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  401301:	48 83 c4 60          	add    $0x60,%rsp
  401305:	5b                   	pop    %rbx
  401306:	5d                   	pop    %rbp
  401307:	41 5c                	pop    %r12
  401309:	c3                   	retq   

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

000000000040139b <sig_handler>:
  40139b:	48 83 ec 08          	sub    $0x8,%rsp
  40139f:	bf e0 28 40 00       	mov    $0x4028e0,%edi
  4013a4:	e8 37 f8 ff ff       	callq  400be0 <puts@plt>
  4013a9:	bf 03 00 00 00       	mov    $0x3,%edi
  4013ae:	e8 7d f9 ff ff       	callq  400d30 <sleep@plt>
  4013b3:	be a9 2a 40 00       	mov    $0x402aa9,%esi
  4013b8:	bf 01 00 00 00       	mov    $0x1,%edi
  4013bd:	b8 00 00 00 00       	mov    $0x0,%eax
  4013c2:	e8 09 f9 ff ff       	callq  400cd0 <__printf_chk@plt>
  4013c7:	48 8b 3d 32 42 20 00 	mov    0x204232(%rip),%rdi        # 605600 <__TMC_END__>
  4013ce:	e8 dd f8 ff ff       	callq  400cb0 <fflush@plt>
  4013d3:	bf 01 00 00 00       	mov    $0x1,%edi
  4013d8:	e8 53 f9 ff ff       	callq  400d30 <sleep@plt>
  4013dd:	bf b1 2a 40 00       	mov    $0x402ab1,%edi
  4013e2:	e8 f9 f7 ff ff       	callq  400be0 <puts@plt>
  4013e7:	bf 10 00 00 00       	mov    $0x10,%edi
  4013ec:	e8 0f f9 ff ff       	callq  400d00 <exit@plt>

00000000004013f1 <invalid_phase>:
  4013f1:	48 83 ec 08          	sub    $0x8,%rsp
  4013f5:	48 89 fa             	mov    %rdi,%rdx
  4013f8:	be b9 2a 40 00       	mov    $0x402ab9,%esi
  4013fd:	bf 01 00 00 00       	mov    $0x1,%edi
  401402:	b8 00 00 00 00       	mov    $0x0,%eax
  401407:	e8 c4 f8 ff ff       	callq  400cd0 <__printf_chk@plt>
  40140c:	bf 08 00 00 00       	mov    $0x8,%edi
  401411:	e8 ea f8 ff ff       	callq  400d00 <exit@plt>

0000000000401416 <string_length>:
  401416:	b8 00 00 00 00       	mov    $0x0,%eax
  40141b:	eb 07                	jmp    401424 <string_length+0xe>
  40141d:	48 83 c7 01          	add    $0x1,%rdi
  401421:	83 c0 01             	add    $0x1,%eax
  401424:	80 3f 00             	cmpb   $0x0,(%rdi)
  401427:	75 f4                	jne    40141d <string_length+0x7>
  401429:	f3 c3                	repz retq 

000000000040142b <strings_not_equal>:
  40142b:	41 54                	push   %r12
  40142d:	55                   	push   %rbp
  40142e:	53                   	push   %rbx
  40142f:	48 89 fb             	mov    %rdi,%rbx
  401432:	48 89 f5             	mov    %rsi,%rbp
  401435:	e8 dc ff ff ff       	callq  401416 <string_length>
  40143a:	41 89 c4             	mov    %eax,%r12d
  40143d:	48 89 ef             	mov    %rbp,%rdi
  401440:	e8 d1 ff ff ff       	callq  401416 <string_length>
  401445:	41 39 c4             	cmp    %eax,%r12d
  401448:	75 1d                	jne    401467 <strings_not_equal+0x3c>
  40144a:	eb 0d                	jmp    401459 <strings_not_equal+0x2e>
  40144c:	3a 45 00             	cmp    0x0(%rbp),%al
  40144f:	75 1d                	jne    40146e <strings_not_equal+0x43>
  401451:	48 83 c3 01          	add    $0x1,%rbx
  401455:	48 83 c5 01          	add    $0x1,%rbp
  401459:	0f b6 03             	movzbl (%rbx),%eax
  40145c:	84 c0                	test   %al,%al
  40145e:	75 ec                	jne    40144c <strings_not_equal+0x21>
  401460:	b8 00 00 00 00       	mov    $0x0,%eax
  401465:	eb 0c                	jmp    401473 <strings_not_equal+0x48>
  401467:	b8 01 00 00 00       	mov    $0x1,%eax
  40146c:	eb 05                	jmp    401473 <strings_not_equal+0x48>
  40146e:	b8 01 00 00 00       	mov    $0x1,%eax
  401473:	5b                   	pop    %rbx
  401474:	5d                   	pop    %rbp
  401475:	41 5c                	pop    %r12
  401477:	c3                   	retq   

0000000000401478 <initialize_bomb>:
  401478:	53                   	push   %rbx
  401479:	48 81 ec 50 20 00 00 	sub    $0x2050,%rsp
  401480:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401487:	00 00 
  401489:	48 89 84 24 48 20 00 	mov    %rax,0x2048(%rsp)
  401490:	00 
  401491:	31 c0                	xor    %eax,%eax
  401493:	be 9b 13 40 00       	mov    $0x40139b,%esi
  401498:	bf 02 00 00 00       	mov    $0x2,%edi
  40149d:	e8 be f7 ff ff       	callq  400c60 <signal@plt>
  4014a2:	be 40 00 00 00       	mov    $0x40,%esi
  4014a7:	48 89 e7             	mov    %rsp,%rdi
  4014aa:	e8 41 f8 ff ff       	callq  400cf0 <gethostname@plt>
  4014af:	85 c0                	test   %eax,%eax
  4014b1:	74 25                	je     4014d8 <initialize_bomb+0x60>
  4014b3:	bf 18 29 40 00       	mov    $0x402918,%edi
  4014b8:	e8 23 f7 ff ff       	callq  400be0 <puts@plt>
  4014bd:	bf 08 00 00 00       	mov    $0x8,%edi
  4014c2:	e8 39 f8 ff ff       	callq  400d00 <exit@plt>
  4014c7:	48 89 e6             	mov    %rsp,%rsi
  4014ca:	e8 e1 f6 ff ff       	callq  400bb0 <strcasecmp@plt>
  4014cf:	85 c0                	test   %eax,%eax
  4014d1:	74 21                	je     4014f4 <initialize_bomb+0x7c>
  4014d3:	83 c3 01             	add    $0x1,%ebx
  4014d6:	eb 05                	jmp    4014dd <initialize_bomb+0x65>
  4014d8:	bb 00 00 00 00       	mov    $0x0,%ebx
  4014dd:	48 63 c3             	movslq %ebx,%rax
  4014e0:	48 8b 3c c5 80 53 60 	mov    0x605380(,%rax,8),%rdi
  4014e7:	00 
  4014e8:	48 85 ff             	test   %rdi,%rdi
  4014eb:	75 da                	jne    4014c7 <initialize_bomb+0x4f>
  4014ed:	b8 00 00 00 00       	mov    $0x0,%eax
  4014f2:	eb 05                	jmp    4014f9 <initialize_bomb+0x81>
  4014f4:	b8 01 00 00 00       	mov    $0x1,%eax
  4014f9:	85 c0                	test   %eax,%eax
  4014fb:	75 14                	jne    401511 <initialize_bomb+0x99>
  4014fd:	bf 50 29 40 00       	mov    $0x402950,%edi
  401502:	e8 d9 f6 ff ff       	callq  400be0 <puts@plt>
  401507:	bf 08 00 00 00       	mov    $0x8,%edi
  40150c:	e8 ef f7 ff ff       	callq  400d00 <exit@plt>
  401511:	48 8d 7c 24 40       	lea    0x40(%rsp),%rdi
  401516:	e8 c6 0e 00 00       	callq  4023e1 <init_driver>
  40151b:	85 c0                	test   %eax,%eax
  40151d:	79 23                	jns    401542 <initialize_bomb+0xca>
  40151f:	48 8d 54 24 40       	lea    0x40(%rsp),%rdx
  401524:	be ca 2a 40 00       	mov    $0x402aca,%esi
  401529:	bf 01 00 00 00       	mov    $0x1,%edi
  40152e:	b8 00 00 00 00       	mov    $0x0,%eax
  401533:	e8 98 f7 ff ff       	callq  400cd0 <__printf_chk@plt>
  401538:	bf 08 00 00 00       	mov    $0x8,%edi
  40153d:	e8 be f7 ff ff       	callq  400d00 <exit@plt>
  401542:	48 8b 84 24 48 20 00 	mov    0x2048(%rsp),%rax
  401549:	00 
  40154a:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401551:	00 00 
  401553:	74 05                	je     40155a <initialize_bomb+0xe2>
  401555:	e8 a6 f6 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  40155a:	48 81 c4 50 20 00 00 	add    $0x2050,%rsp
  401561:	5b                   	pop    %rbx
  401562:	c3                   	retq   

0000000000401563 <initialize_bomb_solve>:
  401563:	f3 c3                	repz retq 

0000000000401565 <blank_line>:
  401565:	55                   	push   %rbp
  401566:	53                   	push   %rbx
  401567:	48 83 ec 08          	sub    $0x8,%rsp
  40156b:	48 89 fd             	mov    %rdi,%rbp
  40156e:	eb 17                	jmp    401587 <blank_line+0x22>
  401570:	e8 cb f7 ff ff       	callq  400d40 <__ctype_b_loc@plt>
  401575:	48 8b 00             	mov    (%rax),%rax
  401578:	48 83 c5 01          	add    $0x1,%rbp
  40157c:	48 0f be db          	movsbq %bl,%rbx
  401580:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
  401585:	74 0f                	je     401596 <blank_line+0x31>
  401587:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
  40158b:	84 db                	test   %bl,%bl
  40158d:	75 e1                	jne    401570 <blank_line+0xb>
  40158f:	b8 01 00 00 00       	mov    $0x1,%eax
  401594:	eb 05                	jmp    40159b <blank_line+0x36>
  401596:	b8 00 00 00 00       	mov    $0x0,%eax
  40159b:	48 83 c4 08          	add    $0x8,%rsp
  40159f:	5b                   	pop    %rbx
  4015a0:	5d                   	pop    %rbp
  4015a1:	c3                   	retq   

00000000004015a2 <skip>:
  4015a2:	53                   	push   %rbx
  4015a3:	48 63 05 82 40 20 00 	movslq 0x204082(%rip),%rax        # 60562c <num_input_strings>
  4015aa:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  4015ae:	48 c1 e0 04          	shl    $0x4,%rax
  4015b2:	48 89 c7             	mov    %rax,%rdi
  4015b5:	48 81 c7 40 56 60 00 	add    $0x605640,%rdi
  4015bc:	48 8b 15 6d 40 20 00 	mov    0x20406d(%rip),%rdx        # 605630 <infile>
  4015c3:	be 50 00 00 00       	mov    $0x50,%esi
  4015c8:	e8 83 f6 ff ff       	callq  400c50 <fgets@plt>
  4015cd:	48 89 c3             	mov    %rax,%rbx
  4015d0:	48 85 c0             	test   %rax,%rax
  4015d3:	74 0c                	je     4015e1 <skip+0x3f>
  4015d5:	48 89 c7             	mov    %rax,%rdi
  4015d8:	e8 88 ff ff ff       	callq  401565 <blank_line>
  4015dd:	85 c0                	test   %eax,%eax
  4015df:	75 c2                	jne    4015a3 <skip+0x1>
  4015e1:	48 89 d8             	mov    %rbx,%rax
  4015e4:	5b                   	pop    %rbx
  4015e5:	c3                   	retq   

00000000004015e6 <send_msg>:
  4015e6:	48 81 ec 18 40 00 00 	sub    $0x4018,%rsp
  4015ed:	41 89 f8             	mov    %edi,%r8d
  4015f0:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4015f7:	00 00 
  4015f9:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401600:	00 
  401601:	31 c0                	xor    %eax,%eax
  401603:	8b 35 23 40 20 00    	mov    0x204023(%rip),%esi        # 60562c <num_input_strings>
  401609:	8d 46 ff             	lea    -0x1(%rsi),%eax
  40160c:	48 98                	cltq   
  40160e:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401612:	48 c1 e0 04          	shl    $0x4,%rax
  401616:	48 8d 90 40 56 60 00 	lea    0x605640(%rax),%rdx
  40161d:	b8 00 00 00 00       	mov    $0x0,%eax
  401622:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401629:	48 89 d7             	mov    %rdx,%rdi
  40162c:	f2 ae                	repnz scas %es:(%rdi),%al
  40162e:	48 f7 d1             	not    %rcx
  401631:	48 83 c1 63          	add    $0x63,%rcx
  401635:	48 81 f9 00 20 00 00 	cmp    $0x2000,%rcx
  40163c:	76 19                	jbe    401657 <send_msg+0x71>
  40163e:	be 88 29 40 00       	mov    $0x402988,%esi
  401643:	bf 01 00 00 00       	mov    $0x1,%edi
  401648:	e8 83 f6 ff ff       	callq  400cd0 <__printf_chk@plt>
  40164d:	bf 08 00 00 00       	mov    $0x8,%edi
  401652:	e8 a9 f6 ff ff       	callq  400d00 <exit@plt>
  401657:	45 85 c0             	test   %r8d,%r8d
  40165a:	74 07                	je     401663 <send_msg+0x7d>
  40165c:	b8 e4 2a 40 00       	mov    $0x402ae4,%eax
  401661:	eb 05                	jmp    401668 <send_msg+0x82>
  401663:	b8 ec 2a 40 00       	mov    $0x402aec,%eax
  401668:	48 83 ec 08          	sub    $0x8,%rsp
  40166c:	52                   	push   %rdx
  40166d:	56                   	push   %rsi
  40166e:	50                   	push   %rax
  40166f:	41 b9 60 4b 60 00    	mov    $0x604b60,%r9d
  401675:	44 8b 05 e4 3c 20 00 	mov    0x203ce4(%rip),%r8d        # 605360 <bomb_id>
  40167c:	b9 f5 2a 40 00       	mov    $0x402af5,%ecx
  401681:	ba 00 20 00 00       	mov    $0x2000,%edx
  401686:	be 01 00 00 00       	mov    $0x1,%esi
  40168b:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401690:	b8 00 00 00 00       	mov    $0x0,%eax
  401695:	e8 b6 f6 ff ff       	callq  400d50 <__sprintf_chk@plt>
  40169a:	48 83 c4 20          	add    $0x20,%rsp
  40169e:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  4016a5:	00 
  4016a6:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  4016ac:	48 89 e1             	mov    %rsp,%rcx
  4016af:	ba 60 43 60 00       	mov    $0x604360,%edx
  4016b4:	be 60 47 60 00       	mov    $0x604760,%esi
  4016b9:	bf 60 4f 60 00       	mov    $0x604f60,%edi
  4016be:	e8 11 0f 00 00       	callq  4025d4 <driver_post>
  4016c3:	85 c0                	test   %eax,%eax
  4016c5:	79 17                	jns    4016de <send_msg+0xf8>
  4016c7:	48 8d bc 24 00 20 00 	lea    0x2000(%rsp),%rdi
  4016ce:	00 
  4016cf:	e8 0c f5 ff ff       	callq  400be0 <puts@plt>
  4016d4:	bf 00 00 00 00       	mov    $0x0,%edi
  4016d9:	e8 22 f6 ff ff       	callq  400d00 <exit@plt>
  4016de:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  4016e5:	00 
  4016e6:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4016ed:	00 00 
  4016ef:	74 05                	je     4016f6 <send_msg+0x110>
  4016f1:	e8 0a f5 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  4016f6:	48 81 c4 18 40 00 00 	add    $0x4018,%rsp
  4016fd:	c3                   	retq   

00000000004016fe <explode_bomb>:
  4016fe:	48 83 ec 08          	sub    $0x8,%rsp
  401702:	bf 04 2b 40 00       	mov    $0x402b04,%edi
  401707:	e8 d4 f4 ff ff       	callq  400be0 <puts@plt>
  40170c:	bf 0d 2b 40 00       	mov    $0x402b0d,%edi
  401711:	e8 ca f4 ff ff       	callq  400be0 <puts@plt>
  401716:	bf 00 00 00 00       	mov    $0x0,%edi
  40171b:	e8 c6 fe ff ff       	callq  4015e6 <send_msg>
  401720:	bf b0 29 40 00       	mov    $0x4029b0,%edi
  401725:	e8 b6 f4 ff ff       	callq  400be0 <puts@plt>
  40172a:	bf 08 00 00 00       	mov    $0x8,%edi
  40172f:	e8 cc f5 ff ff       	callq  400d00 <exit@plt>

0000000000401734 <read_six_numbers>:
  401734:	48 83 ec 08          	sub    $0x8,%rsp
  401738:	48 89 f2             	mov    %rsi,%rdx
  40173b:	48 8d 76 14          	lea    0x14(%rsi),%rsi
  40173f:	48 8d 42 10          	lea    0x10(%rdx),%rax
  401743:	48 8d 4a 04          	lea    0x4(%rdx),%rcx
  401747:	56                   	push   %rsi
  401748:	50                   	push   %rax
  401749:	4c 8d 4a 0c          	lea    0xc(%rdx),%r9
  40174d:	4c 8d 42 08          	lea    0x8(%rdx),%r8
  401751:	be 24 2b 40 00       	mov    $0x402b24,%esi
  401756:	b8 00 00 00 00       	mov    $0x0,%eax
  40175b:	e8 60 f5 ff ff       	callq  400cc0 <__isoc99_sscanf@plt>
  401760:	48 83 c4 10          	add    $0x10,%rsp
  401764:	83 f8 05             	cmp    $0x5,%eax
  401767:	7f 05                	jg     40176e <read_six_numbers+0x3a>
  401769:	e8 90 ff ff ff       	callq  4016fe <explode_bomb>
  40176e:	48 83 c4 08          	add    $0x8,%rsp
  401772:	c3                   	retq   

0000000000401773 <read_line>:
  401773:	48 83 ec 08          	sub    $0x8,%rsp
  401777:	b8 00 00 00 00       	mov    $0x0,%eax
  40177c:	e8 21 fe ff ff       	callq  4015a2 <skip>
  401781:	48 85 c0             	test   %rax,%rax
  401784:	75 6e                	jne    4017f4 <read_line+0x81>
  401786:	48 8b 05 83 3e 20 00 	mov    0x203e83(%rip),%rax        # 605610 <stdin@@GLIBC_2.2.5>
  40178d:	48 39 05 9c 3e 20 00 	cmp    %rax,0x203e9c(%rip)        # 605630 <infile>
  401794:	75 14                	jne    4017aa <read_line+0x37>
  401796:	bf 36 2b 40 00       	mov    $0x402b36,%edi
  40179b:	e8 40 f4 ff ff       	callq  400be0 <puts@plt>
  4017a0:	bf 08 00 00 00       	mov    $0x8,%edi
  4017a5:	e8 56 f5 ff ff       	callq  400d00 <exit@plt>
  4017aa:	bf 54 2b 40 00       	mov    $0x402b54,%edi
  4017af:	e8 ec f3 ff ff       	callq  400ba0 <getenv@plt>
  4017b4:	48 85 c0             	test   %rax,%rax
  4017b7:	74 0a                	je     4017c3 <read_line+0x50>
  4017b9:	bf 00 00 00 00       	mov    $0x0,%edi
  4017be:	e8 3d f5 ff ff       	callq  400d00 <exit@plt>
  4017c3:	48 8b 05 46 3e 20 00 	mov    0x203e46(%rip),%rax        # 605610 <stdin@@GLIBC_2.2.5>
  4017ca:	48 89 05 5f 3e 20 00 	mov    %rax,0x203e5f(%rip)        # 605630 <infile>
  4017d1:	b8 00 00 00 00       	mov    $0x0,%eax
  4017d6:	e8 c7 fd ff ff       	callq  4015a2 <skip>
  4017db:	48 85 c0             	test   %rax,%rax
  4017de:	75 14                	jne    4017f4 <read_line+0x81>
  4017e0:	bf 36 2b 40 00       	mov    $0x402b36,%edi
  4017e5:	e8 f6 f3 ff ff       	callq  400be0 <puts@plt>
  4017ea:	bf 00 00 00 00       	mov    $0x0,%edi
  4017ef:	e8 0c f5 ff ff       	callq  400d00 <exit@plt>
  4017f4:	44 8b 05 31 3e 20 00 	mov    0x203e31(%rip),%r8d        # 60562c <num_input_strings>
  4017fb:	49 63 c0             	movslq %r8d,%rax
  4017fe:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
  401802:	48 c1 e0 04          	shl    $0x4,%rax
  401806:	48 89 c2             	mov    %rax,%rdx
  401809:	48 81 c2 40 56 60 00 	add    $0x605640,%rdx
  401810:	b8 00 00 00 00       	mov    $0x0,%eax
  401815:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40181c:	48 89 d7             	mov    %rdx,%rdi
  40181f:	f2 ae                	repnz scas %es:(%rdi),%al
  401821:	48 f7 d1             	not    %rcx
  401824:	48 83 e9 01          	sub    $0x1,%rcx
  401828:	83 f9 4e             	cmp    $0x4e,%ecx
  40182b:	7e 46                	jle    401873 <read_line+0x100>
  40182d:	bf 5f 2b 40 00       	mov    $0x402b5f,%edi
  401832:	e8 a9 f3 ff ff       	callq  400be0 <puts@plt>
  401837:	8b 05 ef 3d 20 00    	mov    0x203def(%rip),%eax        # 60562c <num_input_strings>
  40183d:	8d 50 01             	lea    0x1(%rax),%edx
  401840:	89 15 e6 3d 20 00    	mov    %edx,0x203de6(%rip)        # 60562c <num_input_strings>
  401846:	48 98                	cltq   
  401848:	48 6b c0 50          	imul   $0x50,%rax,%rax
  40184c:	48 bf 2a 2a 2a 74 72 	movabs $0x636e7572742a2a2a,%rdi
  401853:	75 6e 63 
  401856:	48 89 b8 40 56 60 00 	mov    %rdi,0x605640(%rax)
  40185d:	48 bf 61 74 65 64 2a 	movabs $0x2a2a2a64657461,%rdi
  401864:	2a 2a 00 
  401867:	48 89 b8 48 56 60 00 	mov    %rdi,0x605648(%rax)
  40186e:	e8 8b fe ff ff       	callq  4016fe <explode_bomb>
  401873:	83 e9 01             	sub    $0x1,%ecx
  401876:	48 63 c9             	movslq %ecx,%rcx
  401879:	49 63 c0             	movslq %r8d,%rax
  40187c:	48 8d 34 80          	lea    (%rax,%rax,4),%rsi
  401880:	48 89 f0             	mov    %rsi,%rax
  401883:	48 c1 e0 04          	shl    $0x4,%rax
  401887:	c6 84 01 40 56 60 00 	movb   $0x0,0x605640(%rcx,%rax,1)
  40188e:	00 
  40188f:	41 8d 40 01          	lea    0x1(%r8),%eax
  401893:	89 05 93 3d 20 00    	mov    %eax,0x203d93(%rip)        # 60562c <num_input_strings>
  401899:	48 89 d0             	mov    %rdx,%rax
  40189c:	48 83 c4 08          	add    $0x8,%rsp
  4018a0:	c3                   	retq   

00000000004018a1 <phase_defused>:
  4018a1:	48 83 ec 78          	sub    $0x78,%rsp
  4018a5:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4018ac:	00 00 
  4018ae:	48 89 44 24 68       	mov    %rax,0x68(%rsp)
  4018b3:	31 c0                	xor    %eax,%eax
  4018b5:	bf 01 00 00 00       	mov    $0x1,%edi
  4018ba:	e8 27 fd ff ff       	callq  4015e6 <send_msg>
  4018bf:	83 3d 66 3d 20 00 06 	cmpl   $0x6,0x203d66(%rip)        # 60562c <num_input_strings>
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

000000000040194f <rio_readinitb>:
  40194f:	89 37                	mov    %esi,(%rdi)
  401951:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  401958:	48 8d 47 10          	lea    0x10(%rdi),%rax
  40195c:	48 89 47 08          	mov    %rax,0x8(%rdi)
  401960:	c3                   	retq   

0000000000401961 <sigalrm_handler>:
  401961:	48 83 ec 08          	sub    $0x8,%rsp
  401965:	b9 00 00 00 00       	mov    $0x0,%ecx
  40196a:	ba 48 2c 40 00       	mov    $0x402c48,%edx
  40196f:	be 01 00 00 00       	mov    $0x1,%esi
  401974:	48 8b 3d a5 3c 20 00 	mov    0x203ca5(%rip),%rdi        # 605620 <stderr@@GLIBC_2.2.5>
  40197b:	b8 00 00 00 00       	mov    $0x0,%eax
  401980:	e8 9b f3 ff ff       	callq  400d20 <__fprintf_chk@plt>
  401985:	bf 01 00 00 00       	mov    $0x1,%edi
  40198a:	e8 71 f3 ff ff       	callq  400d00 <exit@plt>

000000000040198f <rio_writen>:
  40198f:	41 55                	push   %r13
  401991:	41 54                	push   %r12
  401993:	55                   	push   %rbp
  401994:	53                   	push   %rbx
  401995:	48 83 ec 08          	sub    $0x8,%rsp
  401999:	41 89 fc             	mov    %edi,%r12d
  40199c:	48 89 f5             	mov    %rsi,%rbp
  40199f:	49 89 d5             	mov    %rdx,%r13
  4019a2:	48 89 d3             	mov    %rdx,%rbx
  4019a5:	eb 28                	jmp    4019cf <rio_writen+0x40>
  4019a7:	48 89 da             	mov    %rbx,%rdx
  4019aa:	48 89 ee             	mov    %rbp,%rsi
  4019ad:	44 89 e7             	mov    %r12d,%edi
  4019b0:	e8 3b f2 ff ff       	callq  400bf0 <write@plt>
  4019b5:	48 85 c0             	test   %rax,%rax
  4019b8:	7f 0f                	jg     4019c9 <rio_writen+0x3a>
  4019ba:	e8 01 f2 ff ff       	callq  400bc0 <__errno_location@plt>
  4019bf:	83 38 04             	cmpl   $0x4,(%rax)
  4019c2:	75 15                	jne    4019d9 <rio_writen+0x4a>
  4019c4:	b8 00 00 00 00       	mov    $0x0,%eax
  4019c9:	48 29 c3             	sub    %rax,%rbx
  4019cc:	48 01 c5             	add    %rax,%rbp
  4019cf:	48 85 db             	test   %rbx,%rbx
  4019d2:	75 d3                	jne    4019a7 <rio_writen+0x18>
  4019d4:	4c 89 e8             	mov    %r13,%rax
  4019d7:	eb 07                	jmp    4019e0 <rio_writen+0x51>
  4019d9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4019e0:	48 83 c4 08          	add    $0x8,%rsp
  4019e4:	5b                   	pop    %rbx
  4019e5:	5d                   	pop    %rbp
  4019e6:	41 5c                	pop    %r12
  4019e8:	41 5d                	pop    %r13
  4019ea:	c3                   	retq   

00000000004019eb <rio_read>:
  4019eb:	41 55                	push   %r13
  4019ed:	41 54                	push   %r12
  4019ef:	55                   	push   %rbp
  4019f0:	53                   	push   %rbx
  4019f1:	48 83 ec 08          	sub    $0x8,%rsp
  4019f5:	48 89 fb             	mov    %rdi,%rbx
  4019f8:	49 89 f5             	mov    %rsi,%r13
  4019fb:	49 89 d4             	mov    %rdx,%r12
  4019fe:	eb 2e                	jmp    401a2e <rio_read+0x43>
  401a00:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  401a04:	8b 3b                	mov    (%rbx),%edi
  401a06:	ba 00 20 00 00       	mov    $0x2000,%edx
  401a0b:	48 89 ee             	mov    %rbp,%rsi
  401a0e:	e8 1d f2 ff ff       	callq  400c30 <read@plt>
  401a13:	89 43 04             	mov    %eax,0x4(%rbx)
  401a16:	85 c0                	test   %eax,%eax
  401a18:	79 0c                	jns    401a26 <rio_read+0x3b>
  401a1a:	e8 a1 f1 ff ff       	callq  400bc0 <__errno_location@plt>
  401a1f:	83 38 04             	cmpl   $0x4,(%rax)
  401a22:	74 0a                	je     401a2e <rio_read+0x43>
  401a24:	eb 37                	jmp    401a5d <rio_read+0x72>
  401a26:	85 c0                	test   %eax,%eax
  401a28:	74 3c                	je     401a66 <rio_read+0x7b>
  401a2a:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  401a2e:	8b 6b 04             	mov    0x4(%rbx),%ebp
  401a31:	85 ed                	test   %ebp,%ebp
  401a33:	7e cb                	jle    401a00 <rio_read+0x15>
  401a35:	89 e8                	mov    %ebp,%eax
  401a37:	49 39 c4             	cmp    %rax,%r12
  401a3a:	77 03                	ja     401a3f <rio_read+0x54>
  401a3c:	44 89 e5             	mov    %r12d,%ebp
  401a3f:	4c 63 e5             	movslq %ebp,%r12
  401a42:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  401a46:	4c 89 e2             	mov    %r12,%rdx
  401a49:	4c 89 ef             	mov    %r13,%rdi
  401a4c:	e8 4f f2 ff ff       	callq  400ca0 <memcpy@plt>
  401a51:	4c 01 63 08          	add    %r12,0x8(%rbx)
  401a55:	29 6b 04             	sub    %ebp,0x4(%rbx)
  401a58:	4c 89 e0             	mov    %r12,%rax
  401a5b:	eb 0e                	jmp    401a6b <rio_read+0x80>
  401a5d:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401a64:	eb 05                	jmp    401a6b <rio_read+0x80>
  401a66:	b8 00 00 00 00       	mov    $0x0,%eax
  401a6b:	48 83 c4 08          	add    $0x8,%rsp
  401a6f:	5b                   	pop    %rbx
  401a70:	5d                   	pop    %rbp
  401a71:	41 5c                	pop    %r12
  401a73:	41 5d                	pop    %r13
  401a75:	c3                   	retq   

0000000000401a76 <rio_readlineb>:
  401a76:	41 55                	push   %r13
  401a78:	41 54                	push   %r12
  401a7a:	55                   	push   %rbp
  401a7b:	53                   	push   %rbx
  401a7c:	48 83 ec 18          	sub    $0x18,%rsp
  401a80:	49 89 fd             	mov    %rdi,%r13
  401a83:	48 89 f5             	mov    %rsi,%rbp
  401a86:	49 89 d4             	mov    %rdx,%r12
  401a89:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a90:	00 00 
  401a92:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401a97:	31 c0                	xor    %eax,%eax
  401a99:	bb 01 00 00 00       	mov    $0x1,%ebx
  401a9e:	eb 3f                	jmp    401adf <rio_readlineb+0x69>
  401aa0:	ba 01 00 00 00       	mov    $0x1,%edx
  401aa5:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  401aaa:	4c 89 ef             	mov    %r13,%rdi
  401aad:	e8 39 ff ff ff       	callq  4019eb <rio_read>
  401ab2:	83 f8 01             	cmp    $0x1,%eax
  401ab5:	75 15                	jne    401acc <rio_readlineb+0x56>
  401ab7:	48 8d 45 01          	lea    0x1(%rbp),%rax
  401abb:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  401ac0:	88 55 00             	mov    %dl,0x0(%rbp)
  401ac3:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  401ac8:	75 0e                	jne    401ad8 <rio_readlineb+0x62>
  401aca:	eb 1a                	jmp    401ae6 <rio_readlineb+0x70>
  401acc:	85 c0                	test   %eax,%eax
  401ace:	75 22                	jne    401af2 <rio_readlineb+0x7c>
  401ad0:	48 83 fb 01          	cmp    $0x1,%rbx
  401ad4:	75 13                	jne    401ae9 <rio_readlineb+0x73>
  401ad6:	eb 23                	jmp    401afb <rio_readlineb+0x85>
  401ad8:	48 83 c3 01          	add    $0x1,%rbx
  401adc:	48 89 c5             	mov    %rax,%rbp
  401adf:	4c 39 e3             	cmp    %r12,%rbx
  401ae2:	72 bc                	jb     401aa0 <rio_readlineb+0x2a>
  401ae4:	eb 03                	jmp    401ae9 <rio_readlineb+0x73>
  401ae6:	48 89 c5             	mov    %rax,%rbp
  401ae9:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  401aed:	48 89 d8             	mov    %rbx,%rax
  401af0:	eb 0e                	jmp    401b00 <rio_readlineb+0x8a>
  401af2:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  401af9:	eb 05                	jmp    401b00 <rio_readlineb+0x8a>
  401afb:	b8 00 00 00 00       	mov    $0x0,%eax
  401b00:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  401b05:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  401b0c:	00 00 
  401b0e:	74 05                	je     401b15 <rio_readlineb+0x9f>
  401b10:	e8 eb f0 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  401b15:	48 83 c4 18          	add    $0x18,%rsp
  401b19:	5b                   	pop    %rbx
  401b1a:	5d                   	pop    %rbp
  401b1b:	41 5c                	pop    %r12
  401b1d:	41 5d                	pop    %r13
  401b1f:	c3                   	retq   

0000000000401b20 <urlencode>:
  401b20:	41 54                	push   %r12
  401b22:	55                   	push   %rbp
  401b23:	53                   	push   %rbx
  401b24:	48 83 ec 10          	sub    $0x10,%rsp
  401b28:	48 89 fb             	mov    %rdi,%rbx
  401b2b:	48 89 f5             	mov    %rsi,%rbp
  401b2e:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401b35:	00 00 
  401b37:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  401b3c:	31 c0                	xor    %eax,%eax
  401b3e:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401b45:	f2 ae                	repnz scas %es:(%rdi),%al
  401b47:	48 f7 d1             	not    %rcx
  401b4a:	8d 41 ff             	lea    -0x1(%rcx),%eax
  401b4d:	e9 aa 00 00 00       	jmpq   401bfc <urlencode+0xdc>
  401b52:	44 0f b6 03          	movzbl (%rbx),%r8d
  401b56:	41 80 f8 2a          	cmp    $0x2a,%r8b
  401b5a:	0f 94 c2             	sete   %dl
  401b5d:	41 80 f8 2d          	cmp    $0x2d,%r8b
  401b61:	0f 94 c0             	sete   %al
  401b64:	08 c2                	or     %al,%dl
  401b66:	75 24                	jne    401b8c <urlencode+0x6c>
  401b68:	41 80 f8 2e          	cmp    $0x2e,%r8b
  401b6c:	74 1e                	je     401b8c <urlencode+0x6c>
  401b6e:	41 80 f8 5f          	cmp    $0x5f,%r8b
  401b72:	74 18                	je     401b8c <urlencode+0x6c>
  401b74:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  401b78:	3c 09                	cmp    $0x9,%al
  401b7a:	76 10                	jbe    401b8c <urlencode+0x6c>
  401b7c:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  401b80:	3c 19                	cmp    $0x19,%al
  401b82:	76 08                	jbe    401b8c <urlencode+0x6c>
  401b84:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  401b88:	3c 19                	cmp    $0x19,%al
  401b8a:	77 0a                	ja     401b96 <urlencode+0x76>
  401b8c:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  401b90:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401b94:	eb 5f                	jmp    401bf5 <urlencode+0xd5>
  401b96:	41 80 f8 20          	cmp    $0x20,%r8b
  401b9a:	75 0a                	jne    401ba6 <urlencode+0x86>
  401b9c:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  401ba0:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  401ba4:	eb 4f                	jmp    401bf5 <urlencode+0xd5>
  401ba6:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  401baa:	3c 5f                	cmp    $0x5f,%al
  401bac:	0f 96 c2             	setbe  %dl
  401baf:	41 80 f8 09          	cmp    $0x9,%r8b
  401bb3:	0f 94 c0             	sete   %al
  401bb6:	08 c2                	or     %al,%dl
  401bb8:	74 50                	je     401c0a <urlencode+0xea>
  401bba:	45 0f b6 c0          	movzbl %r8b,%r8d
  401bbe:	b9 00 2d 40 00       	mov    $0x402d00,%ecx
  401bc3:	ba 08 00 00 00       	mov    $0x8,%edx
  401bc8:	be 01 00 00 00       	mov    $0x1,%esi
  401bcd:	48 89 e7             	mov    %rsp,%rdi
  401bd0:	b8 00 00 00 00       	mov    $0x0,%eax
  401bd5:	e8 76 f1 ff ff       	callq  400d50 <__sprintf_chk@plt>
  401bda:	0f b6 04 24          	movzbl (%rsp),%eax
  401bde:	88 45 00             	mov    %al,0x0(%rbp)
  401be1:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  401be6:	88 45 01             	mov    %al,0x1(%rbp)
  401be9:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  401bee:	88 45 02             	mov    %al,0x2(%rbp)
  401bf1:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  401bf5:	48 83 c3 01          	add    $0x1,%rbx
  401bf9:	44 89 e0             	mov    %r12d,%eax
  401bfc:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  401c00:	85 c0                	test   %eax,%eax
  401c02:	0f 85 4a ff ff ff    	jne    401b52 <urlencode+0x32>
  401c08:	eb 05                	jmp    401c0f <urlencode+0xef>
  401c0a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401c0f:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  401c14:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401c1b:	00 00 
  401c1d:	74 05                	je     401c24 <urlencode+0x104>
  401c1f:	e8 dc ef ff ff       	callq  400c00 <__stack_chk_fail@plt>
  401c24:	48 83 c4 10          	add    $0x10,%rsp
  401c28:	5b                   	pop    %rbx
  401c29:	5d                   	pop    %rbp
  401c2a:	41 5c                	pop    %r12
  401c2c:	c3                   	retq   

0000000000401c2d <submitr>:
  401c2d:	41 57                	push   %r15
  401c2f:	41 56                	push   %r14
  401c31:	41 55                	push   %r13
  401c33:	41 54                	push   %r12
  401c35:	55                   	push   %rbp
  401c36:	53                   	push   %rbx
  401c37:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  401c3e:	49 89 fd             	mov    %rdi,%r13
  401c41:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  401c45:	48 89 14 24          	mov    %rdx,(%rsp)
  401c49:	49 89 ce             	mov    %rcx,%r14
  401c4c:	4d 89 c7             	mov    %r8,%r15
  401c4f:	4d 89 cc             	mov    %r9,%r12
  401c52:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  401c59:	00 
  401c5a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c61:	00 00 
  401c63:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  401c6a:	00 
  401c6b:	31 c0                	xor    %eax,%eax
  401c6d:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  401c74:	00 
  401c75:	ba 00 00 00 00       	mov    $0x0,%edx
  401c7a:	be 01 00 00 00       	mov    $0x1,%esi
  401c7f:	bf 02 00 00 00       	mov    $0x2,%edi
  401c84:	e8 d7 f0 ff ff       	callq  400d60 <socket@plt>
  401c89:	85 c0                	test   %eax,%eax
  401c8b:	79 4e                	jns    401cdb <submitr+0xae>
  401c8d:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  401c94:	3a 20 43 
  401c97:	48 89 03             	mov    %rax,(%rbx)
  401c9a:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  401ca1:	20 75 6e 
  401ca4:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401ca8:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401caf:	74 6f 20 
  401cb2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401cb6:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  401cbd:	65 20 73 
  401cc0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401cc4:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  401ccb:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  401cd1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401cd6:	e9 b3 06 00 00       	jmpq   40238e <submitr+0x761>
  401cdb:	89 c5                	mov    %eax,%ebp
  401cdd:	4c 89 ef             	mov    %r13,%rdi
  401ce0:	e8 8b ef ff ff       	callq  400c70 <gethostbyname@plt>
  401ce5:	48 85 c0             	test   %rax,%rax
  401ce8:	75 75                	jne    401d5f <submitr+0x132>
  401cea:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  401cf1:	3a 20 44 
  401cf4:	48 89 03             	mov    %rax,(%rbx)
  401cf7:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  401cfe:	20 75 6e 
  401d01:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401d05:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  401d0c:	74 6f 20 
  401d0f:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401d13:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  401d1a:	76 65 20 
  401d1d:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401d21:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  401d28:	61 62 20 
  401d2b:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401d2f:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  401d36:	72 20 61 
  401d39:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401d3d:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  401d44:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  401d4a:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  401d4e:	89 ef                	mov    %ebp,%edi
  401d50:	e8 cb ee ff ff       	callq  400c20 <close@plt>
  401d55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401d5a:	e9 2f 06 00 00       	jmpq   40238e <submitr+0x761>
  401d5f:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  401d66:	00 00 
  401d68:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  401d6f:	00 00 
  401d71:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  401d78:	48 63 50 14          	movslq 0x14(%rax),%rdx
  401d7c:	48 8b 40 18          	mov    0x18(%rax),%rax
  401d80:	48 8b 30             	mov    (%rax),%rsi
  401d83:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  401d88:	b9 0c 00 00 00       	mov    $0xc,%ecx
  401d8d:	e8 ee ee ff ff       	callq  400c80 <__memmove_chk@plt>
  401d92:	0f b7 44 24 0c       	movzwl 0xc(%rsp),%eax
  401d97:	66 c1 c8 08          	ror    $0x8,%ax
  401d9b:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  401da0:	ba 10 00 00 00       	mov    $0x10,%edx
  401da5:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  401daa:	89 ef                	mov    %ebp,%edi
  401dac:	e8 5f ef ff ff       	callq  400d10 <connect@plt>
  401db1:	85 c0                	test   %eax,%eax
  401db3:	79 67                	jns    401e1c <submitr+0x1ef>
  401db5:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  401dbc:	3a 20 55 
  401dbf:	48 89 03             	mov    %rax,(%rbx)
  401dc2:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  401dc9:	20 74 6f 
  401dcc:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401dd0:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  401dd7:	65 63 74 
  401dda:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401dde:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  401de5:	68 65 20 
  401de8:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401dec:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  401df3:	61 62 20 
  401df6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401dfa:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  401e01:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  401e07:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  401e0b:	89 ef                	mov    %ebp,%edi
  401e0d:	e8 0e ee ff ff       	callq  400c20 <close@plt>
  401e12:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401e17:	e9 72 05 00 00       	jmpq   40238e <submitr+0x761>
  401e1c:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  401e23:	b8 00 00 00 00       	mov    $0x0,%eax
  401e28:	48 89 f1             	mov    %rsi,%rcx
  401e2b:	4c 89 e7             	mov    %r12,%rdi
  401e2e:	f2 ae                	repnz scas %es:(%rdi),%al
  401e30:	48 f7 d1             	not    %rcx
  401e33:	48 89 ca             	mov    %rcx,%rdx
  401e36:	48 89 f1             	mov    %rsi,%rcx
  401e39:	48 8b 3c 24          	mov    (%rsp),%rdi
  401e3d:	f2 ae                	repnz scas %es:(%rdi),%al
  401e3f:	48 f7 d1             	not    %rcx
  401e42:	49 89 c8             	mov    %rcx,%r8
  401e45:	48 89 f1             	mov    %rsi,%rcx
  401e48:	4c 89 f7             	mov    %r14,%rdi
  401e4b:	f2 ae                	repnz scas %es:(%rdi),%al
  401e4d:	48 f7 d1             	not    %rcx
  401e50:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  401e55:	48 89 f1             	mov    %rsi,%rcx
  401e58:	4c 89 ff             	mov    %r15,%rdi
  401e5b:	f2 ae                	repnz scas %es:(%rdi),%al
  401e5d:	48 89 c8             	mov    %rcx,%rax
  401e60:	48 f7 d0             	not    %rax
  401e63:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  401e68:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  401e6d:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  401e74:	00 
  401e75:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  401e7b:	76 72                	jbe    401eef <submitr+0x2c2>
  401e7d:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401e84:	3a 20 52 
  401e87:	48 89 03             	mov    %rax,(%rbx)
  401e8a:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401e91:	20 73 74 
  401e94:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401e98:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  401e9f:	74 6f 6f 
  401ea2:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401ea6:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  401ead:	65 2e 20 
  401eb0:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401eb4:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  401ebb:	61 73 65 
  401ebe:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401ec2:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  401ec9:	49 54 52 
  401ecc:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401ed0:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  401ed7:	55 46 00 
  401eda:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401ede:	89 ef                	mov    %ebp,%edi
  401ee0:	e8 3b ed ff ff       	callq  400c20 <close@plt>
  401ee5:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401eea:	e9 9f 04 00 00       	jmpq   40238e <submitr+0x761>
  401eef:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  401ef6:	00 
  401ef7:	b9 00 04 00 00       	mov    $0x400,%ecx
  401efc:	b8 00 00 00 00       	mov    $0x0,%eax
  401f01:	48 89 f7             	mov    %rsi,%rdi
  401f04:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  401f07:	4c 89 e7             	mov    %r12,%rdi
  401f0a:	e8 11 fc ff ff       	callq  401b20 <urlencode>
  401f0f:	85 c0                	test   %eax,%eax
  401f11:	0f 89 8a 00 00 00    	jns    401fa1 <submitr+0x374>
  401f17:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  401f1e:	3a 20 52 
  401f21:	48 89 03             	mov    %rax,(%rbx)
  401f24:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  401f2b:	20 73 74 
  401f2e:	48 89 43 08          	mov    %rax,0x8(%rbx)
  401f32:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  401f39:	63 6f 6e 
  401f3c:	48 89 43 10          	mov    %rax,0x10(%rbx)
  401f40:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  401f47:	20 61 6e 
  401f4a:	48 89 43 18          	mov    %rax,0x18(%rbx)
  401f4e:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  401f55:	67 61 6c 
  401f58:	48 89 43 20          	mov    %rax,0x20(%rbx)
  401f5c:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  401f63:	6e 70 72 
  401f66:	48 89 43 28          	mov    %rax,0x28(%rbx)
  401f6a:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  401f71:	6c 65 20 
  401f74:	48 89 43 30          	mov    %rax,0x30(%rbx)
  401f78:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  401f7f:	63 74 65 
  401f82:	48 89 43 38          	mov    %rax,0x38(%rbx)
  401f86:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  401f8c:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  401f90:	89 ef                	mov    %ebp,%edi
  401f92:	e8 89 ec ff ff       	callq  400c20 <close@plt>
  401f97:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  401f9c:	e9 ed 03 00 00       	jmpq   40238e <submitr+0x761>
  401fa1:	4c 8d a4 24 40 20 00 	lea    0x2040(%rsp),%r12
  401fa8:	00 
  401fa9:	48 83 ec 08          	sub    $0x8,%rsp
  401fad:	41 55                	push   %r13
  401faf:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
  401fb6:	00 
  401fb7:	50                   	push   %rax
  401fb8:	41 56                	push   %r14
  401fba:	4d 89 f9             	mov    %r15,%r9
  401fbd:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  401fc2:	b9 70 2c 40 00       	mov    $0x402c70,%ecx
  401fc7:	ba 00 20 00 00       	mov    $0x2000,%edx
  401fcc:	be 01 00 00 00       	mov    $0x1,%esi
  401fd1:	4c 89 e7             	mov    %r12,%rdi
  401fd4:	b8 00 00 00 00       	mov    $0x0,%eax
  401fd9:	e8 72 ed ff ff       	callq  400d50 <__sprintf_chk@plt>
  401fde:	b8 00 00 00 00       	mov    $0x0,%eax
  401fe3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  401fea:	4c 89 e7             	mov    %r12,%rdi
  401fed:	f2 ae                	repnz scas %es:(%rdi),%al
  401fef:	48 f7 d1             	not    %rcx
  401ff2:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  401ff6:	48 83 c4 20          	add    $0x20,%rsp
  401ffa:	4c 89 e6             	mov    %r12,%rsi
  401ffd:	89 ef                	mov    %ebp,%edi
  401fff:	e8 8b f9 ff ff       	callq  40198f <rio_writen>
  402004:	48 85 c0             	test   %rax,%rax
  402007:	79 6b                	jns    402074 <submitr+0x447>
  402009:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402010:	3a 20 43 
  402013:	48 89 03             	mov    %rax,(%rbx)
  402016:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40201d:	20 75 6e 
  402020:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402024:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40202b:	74 6f 20 
  40202e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402032:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402039:	20 74 6f 
  40203c:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402040:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  402047:	41 75 74 
  40204a:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40204e:	48 b8 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rax
  402055:	73 65 72 
  402058:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40205c:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  402063:	89 ef                	mov    %ebp,%edi
  402065:	e8 b6 eb ff ff       	callq  400c20 <close@plt>
  40206a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40206f:	e9 1a 03 00 00       	jmpq   40238e <submitr+0x761>
  402074:	89 ee                	mov    %ebp,%esi
  402076:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40207b:	e8 cf f8 ff ff       	callq  40194f <rio_readinitb>
  402080:	ba 00 20 00 00       	mov    $0x2000,%edx
  402085:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  40208c:	00 
  40208d:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402092:	e8 df f9 ff ff       	callq  401a76 <rio_readlineb>
  402097:	48 85 c0             	test   %rax,%rax
  40209a:	7f 7f                	jg     40211b <submitr+0x4ee>
  40209c:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4020a3:	3a 20 43 
  4020a6:	48 89 03             	mov    %rax,(%rbx)
  4020a9:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4020b0:	20 75 6e 
  4020b3:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4020b7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4020be:	74 6f 20 
  4020c1:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4020c5:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  4020cc:	66 69 72 
  4020cf:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4020d3:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  4020da:	61 64 65 
  4020dd:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4020e1:	48 b8 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rax
  4020e8:	6d 20 41 
  4020eb:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4020ef:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  4020f6:	62 20 73 
  4020f9:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4020fd:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  402104:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  40210a:	89 ef                	mov    %ebp,%edi
  40210c:	e8 0f eb ff ff       	callq  400c20 <close@plt>
  402111:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402116:	e9 73 02 00 00       	jmpq   40238e <submitr+0x761>
  40211b:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  402122:	00 
  402123:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  402128:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  40212f:	00 
  402130:	be 07 2d 40 00       	mov    $0x402d07,%esi
  402135:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  40213c:	00 
  40213d:	b8 00 00 00 00       	mov    $0x0,%eax
  402142:	e8 79 eb ff ff       	callq  400cc0 <__isoc99_sscanf@plt>
  402147:	e9 92 00 00 00       	jmpq   4021de <submitr+0x5b1>
  40214c:	ba 00 20 00 00       	mov    $0x2000,%edx
  402151:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402158:	00 
  402159:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  40215e:	e8 13 f9 ff ff       	callq  401a76 <rio_readlineb>
  402163:	48 85 c0             	test   %rax,%rax
  402166:	7f 76                	jg     4021de <submitr+0x5b1>
  402168:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40216f:	3a 20 43 
  402172:	48 89 03             	mov    %rax,(%rbx)
  402175:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40217c:	20 75 6e 
  40217f:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402183:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40218a:	74 6f 20 
  40218d:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402191:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402198:	68 65 61 
  40219b:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40219f:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4021a6:	66 72 6f 
  4021a9:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4021ad:	48 b8 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rax
  4021b4:	6f 6c 61 
  4021b7:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4021bb:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  4021c2:	76 65 72 
  4021c5:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4021c9:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  4021cd:	89 ef                	mov    %ebp,%edi
  4021cf:	e8 4c ea ff ff       	callq  400c20 <close@plt>
  4021d4:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4021d9:	e9 b0 01 00 00       	jmpq   40238e <submitr+0x761>
  4021de:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  4021e5:	00 
  4021e6:	b8 0d 00 00 00       	mov    $0xd,%eax
  4021eb:	29 d0                	sub    %edx,%eax
  4021ed:	75 1b                	jne    40220a <submitr+0x5dd>
  4021ef:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  4021f6:	00 
  4021f7:	b8 0a 00 00 00       	mov    $0xa,%eax
  4021fc:	29 d0                	sub    %edx,%eax
  4021fe:	75 0a                	jne    40220a <submitr+0x5dd>
  402200:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402207:	00 
  402208:	f7 d8                	neg    %eax
  40220a:	85 c0                	test   %eax,%eax
  40220c:	0f 85 3a ff ff ff    	jne    40214c <submitr+0x51f>
  402212:	ba 00 20 00 00       	mov    $0x2000,%edx
  402217:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  40221e:	00 
  40221f:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402224:	e8 4d f8 ff ff       	callq  401a76 <rio_readlineb>
  402229:	48 85 c0             	test   %rax,%rax
  40222c:	0f 8f 80 00 00 00    	jg     4022b2 <submitr+0x685>
  402232:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402239:	3a 20 43 
  40223c:	48 89 03             	mov    %rax,(%rbx)
  40223f:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402246:	20 75 6e 
  402249:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40224d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402254:	74 6f 20 
  402257:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40225b:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402262:	73 74 61 
  402265:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402269:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402270:	65 73 73 
  402273:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402277:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  40227e:	72 6f 6d 
  402281:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402285:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  40228c:	6c 61 62 
  40228f:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402293:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  40229a:	65 72 00 
  40229d:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4022a1:	89 ef                	mov    %ebp,%edi
  4022a3:	e8 78 e9 ff ff       	callq  400c20 <close@plt>
  4022a8:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022ad:	e9 dc 00 00 00       	jmpq   40238e <submitr+0x761>
  4022b2:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  4022b7:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  4022be:	74 37                	je     4022f7 <submitr+0x6ca>
  4022c0:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  4022c7:	00 
  4022c8:	b9 d0 2c 40 00       	mov    $0x402cd0,%ecx
  4022cd:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  4022d4:	be 01 00 00 00       	mov    $0x1,%esi
  4022d9:	48 89 df             	mov    %rbx,%rdi
  4022dc:	b8 00 00 00 00       	mov    $0x0,%eax
  4022e1:	e8 6a ea ff ff       	callq  400d50 <__sprintf_chk@plt>
  4022e6:	89 ef                	mov    %ebp,%edi
  4022e8:	e8 33 e9 ff ff       	callq  400c20 <close@plt>
  4022ed:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4022f2:	e9 97 00 00 00       	jmpq   40238e <submitr+0x761>
  4022f7:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4022fe:	00 
  4022ff:	48 89 df             	mov    %rbx,%rdi
  402302:	e8 c9 e8 ff ff       	callq  400bd0 <strcpy@plt>
  402307:	89 ef                	mov    %ebp,%edi
  402309:	e8 12 e9 ff ff       	callq  400c20 <close@plt>
  40230e:	0f b6 03             	movzbl (%rbx),%eax
  402311:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402316:	29 c2                	sub    %eax,%edx
  402318:	75 22                	jne    40233c <submitr+0x70f>
  40231a:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  40231e:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402323:	29 c8                	sub    %ecx,%eax
  402325:	75 17                	jne    40233e <submitr+0x711>
  402327:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  40232b:	b8 0a 00 00 00       	mov    $0xa,%eax
  402330:	29 c8                	sub    %ecx,%eax
  402332:	75 0a                	jne    40233e <submitr+0x711>
  402334:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402338:	f7 d8                	neg    %eax
  40233a:	eb 02                	jmp    40233e <submitr+0x711>
  40233c:	89 d0                	mov    %edx,%eax
  40233e:	85 c0                	test   %eax,%eax
  402340:	74 40                	je     402382 <submitr+0x755>
  402342:	bf 18 2d 40 00       	mov    $0x402d18,%edi
  402347:	b9 05 00 00 00       	mov    $0x5,%ecx
  40234c:	48 89 de             	mov    %rbx,%rsi
  40234f:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402351:	0f 97 c0             	seta   %al
  402354:	0f 92 c1             	setb   %cl
  402357:	29 c8                	sub    %ecx,%eax
  402359:	0f be c0             	movsbl %al,%eax
  40235c:	85 c0                	test   %eax,%eax
  40235e:	74 2e                	je     40238e <submitr+0x761>
  402360:	85 d2                	test   %edx,%edx
  402362:	75 13                	jne    402377 <submitr+0x74a>
  402364:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402368:	ba 4b 00 00 00       	mov    $0x4b,%edx
  40236d:	29 c2                	sub    %eax,%edx
  40236f:	75 06                	jne    402377 <submitr+0x74a>
  402371:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402375:	f7 da                	neg    %edx
  402377:	85 d2                	test   %edx,%edx
  402379:	75 0e                	jne    402389 <submitr+0x75c>
  40237b:	b8 00 00 00 00       	mov    $0x0,%eax
  402380:	eb 0c                	jmp    40238e <submitr+0x761>
  402382:	b8 00 00 00 00       	mov    $0x0,%eax
  402387:	eb 05                	jmp    40238e <submitr+0x761>
  402389:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40238e:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402395:	00 
  402396:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  40239d:	00 00 
  40239f:	74 05                	je     4023a6 <submitr+0x779>
  4023a1:	e8 5a e8 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  4023a6:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  4023ad:	5b                   	pop    %rbx
  4023ae:	5d                   	pop    %rbp
  4023af:	41 5c                	pop    %r12
  4023b1:	41 5d                	pop    %r13
  4023b3:	41 5e                	pop    %r14
  4023b5:	41 5f                	pop    %r15
  4023b7:	c3                   	retq   

00000000004023b8 <init_timeout>:
  4023b8:	85 ff                	test   %edi,%edi
  4023ba:	74 23                	je     4023df <init_timeout+0x27>
  4023bc:	53                   	push   %rbx
  4023bd:	89 fb                	mov    %edi,%ebx
  4023bf:	85 ff                	test   %edi,%edi
  4023c1:	79 05                	jns    4023c8 <init_timeout+0x10>
  4023c3:	bb 00 00 00 00       	mov    $0x0,%ebx
  4023c8:	be 61 19 40 00       	mov    $0x401961,%esi
  4023cd:	bf 0e 00 00 00       	mov    $0xe,%edi
  4023d2:	e8 89 e8 ff ff       	callq  400c60 <signal@plt>
  4023d7:	89 df                	mov    %ebx,%edi
  4023d9:	e8 32 e8 ff ff       	callq  400c10 <alarm@plt>
  4023de:	5b                   	pop    %rbx
  4023df:	f3 c3                	repz retq 

00000000004023e1 <init_driver>:
  4023e1:	55                   	push   %rbp
  4023e2:	53                   	push   %rbx
  4023e3:	48 83 ec 28          	sub    $0x28,%rsp
  4023e7:	48 89 fd             	mov    %rdi,%rbp
  4023ea:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4023f1:	00 00 
  4023f3:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  4023f8:	31 c0                	xor    %eax,%eax
  4023fa:	be 01 00 00 00       	mov    $0x1,%esi
  4023ff:	bf 0d 00 00 00       	mov    $0xd,%edi
  402404:	e8 57 e8 ff ff       	callq  400c60 <signal@plt>
  402409:	be 01 00 00 00       	mov    $0x1,%esi
  40240e:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402413:	e8 48 e8 ff ff       	callq  400c60 <signal@plt>
  402418:	be 01 00 00 00       	mov    $0x1,%esi
  40241d:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402422:	e8 39 e8 ff ff       	callq  400c60 <signal@plt>
  402427:	ba 00 00 00 00       	mov    $0x0,%edx
  40242c:	be 01 00 00 00       	mov    $0x1,%esi
  402431:	bf 02 00 00 00       	mov    $0x2,%edi
  402436:	e8 25 e9 ff ff       	callq  400d60 <socket@plt>
  40243b:	85 c0                	test   %eax,%eax
  40243d:	79 4f                	jns    40248e <init_driver+0xad>
  40243f:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402446:	3a 20 43 
  402449:	48 89 45 00          	mov    %rax,0x0(%rbp)
  40244d:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402454:	20 75 6e 
  402457:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40245b:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402462:	74 6f 20 
  402465:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402469:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402470:	65 20 73 
  402473:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402477:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  40247e:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402484:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402489:	e9 2a 01 00 00       	jmpq   4025b8 <init_driver+0x1d7>
  40248e:	89 c3                	mov    %eax,%ebx
  402490:	bf 35 2c 40 00       	mov    $0x402c35,%edi
  402495:	e8 d6 e7 ff ff       	callq  400c70 <gethostbyname@plt>
  40249a:	48 85 c0             	test   %rax,%rax
  40249d:	75 68                	jne    402507 <init_driver+0x126>
  40249f:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  4024a6:	3a 20 44 
  4024a9:	48 89 45 00          	mov    %rax,0x0(%rbp)
  4024ad:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  4024b4:	20 75 6e 
  4024b7:	48 89 45 08          	mov    %rax,0x8(%rbp)
  4024bb:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4024c2:	74 6f 20 
  4024c5:	48 89 45 10          	mov    %rax,0x10(%rbp)
  4024c9:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  4024d0:	76 65 20 
  4024d3:	48 89 45 18          	mov    %rax,0x18(%rbp)
  4024d7:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4024de:	72 20 61 
  4024e1:	48 89 45 20          	mov    %rax,0x20(%rbp)
  4024e5:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  4024ec:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  4024f2:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  4024f6:	89 df                	mov    %ebx,%edi
  4024f8:	e8 23 e7 ff ff       	callq  400c20 <close@plt>
  4024fd:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402502:	e9 b1 00 00 00       	jmpq   4025b8 <init_driver+0x1d7>
  402507:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  40250e:	00 
  40250f:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402516:	00 00 
  402518:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  40251e:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402522:	48 8b 40 18          	mov    0x18(%rax),%rax
  402526:	48 8b 30             	mov    (%rax),%rsi
  402529:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  40252e:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402533:	e8 48 e7 ff ff       	callq  400c80 <__memmove_chk@plt>
  402538:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  40253f:	ba 10 00 00 00       	mov    $0x10,%edx
  402544:	48 89 e6             	mov    %rsp,%rsi
  402547:	89 df                	mov    %ebx,%edi
  402549:	e8 c2 e7 ff ff       	callq  400d10 <connect@plt>
  40254e:	85 c0                	test   %eax,%eax
  402550:	79 50                	jns    4025a2 <init_driver+0x1c1>
  402552:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402559:	3a 20 55 
  40255c:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402560:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402567:	20 74 6f 
  40256a:	48 89 45 08          	mov    %rax,0x8(%rbp)
  40256e:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402575:	65 63 74 
  402578:	48 89 45 10          	mov    %rax,0x10(%rbp)
  40257c:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402583:	65 72 76 
  402586:	48 89 45 18          	mov    %rax,0x18(%rbp)
  40258a:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402590:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402594:	89 df                	mov    %ebx,%edi
  402596:	e8 85 e6 ff ff       	callq  400c20 <close@plt>
  40259b:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025a0:	eb 16                	jmp    4025b8 <init_driver+0x1d7>
  4025a2:	89 df                	mov    %ebx,%edi
  4025a4:	e8 77 e6 ff ff       	callq  400c20 <close@plt>
  4025a9:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  4025af:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  4025b3:	b8 00 00 00 00       	mov    $0x0,%eax
  4025b8:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  4025bd:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  4025c4:	00 00 
  4025c6:	74 05                	je     4025cd <init_driver+0x1ec>
  4025c8:	e8 33 e6 ff ff       	callq  400c00 <__stack_chk_fail@plt>
  4025cd:	48 83 c4 28          	add    $0x28,%rsp
  4025d1:	5b                   	pop    %rbx
  4025d2:	5d                   	pop    %rbp
  4025d3:	c3                   	retq   

00000000004025d4 <driver_post>:
  4025d4:	53                   	push   %rbx
  4025d5:	4c 89 cb             	mov    %r9,%rbx
  4025d8:	45 85 c0             	test   %r8d,%r8d
  4025db:	74 27                	je     402604 <driver_post+0x30>
  4025dd:	48 89 ca             	mov    %rcx,%rdx
  4025e0:	be 1d 2d 40 00       	mov    $0x402d1d,%esi
  4025e5:	bf 01 00 00 00       	mov    $0x1,%edi
  4025ea:	b8 00 00 00 00       	mov    $0x0,%eax
  4025ef:	e8 dc e6 ff ff       	callq  400cd0 <__printf_chk@plt>
  4025f4:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  4025f9:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  4025fd:	b8 00 00 00 00       	mov    $0x0,%eax
  402602:	eb 3f                	jmp    402643 <driver_post+0x6f>
  402604:	48 85 ff             	test   %rdi,%rdi
  402607:	74 2c                	je     402635 <driver_post+0x61>
  402609:	80 3f 00             	cmpb   $0x0,(%rdi)
  40260c:	74 27                	je     402635 <driver_post+0x61>
  40260e:	48 83 ec 08          	sub    $0x8,%rsp
  402612:	41 51                	push   %r9
  402614:	49 89 c9             	mov    %rcx,%r9
  402617:	49 89 d0             	mov    %rdx,%r8
  40261a:	48 89 f9             	mov    %rdi,%rcx
  40261d:	48 89 f2             	mov    %rsi,%rdx
  402620:	be 50 00 00 00       	mov    $0x50,%esi
  402625:	bf 35 2c 40 00       	mov    $0x402c35,%edi
  40262a:	e8 fe f5 ff ff       	callq  401c2d <submitr>
  40262f:	48 83 c4 10          	add    $0x10,%rsp
  402633:	eb 0e                	jmp    402643 <driver_post+0x6f>
  402635:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  40263a:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  40263e:	b8 00 00 00 00       	mov    $0x0,%eax
  402643:	5b                   	pop    %rbx
  402644:	c3                   	retq   
  402645:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40264c:	00 00 00 
  40264f:	90                   	nop

0000000000402650 <__libc_csu_init>:
  402650:	41 57                	push   %r15
  402652:	41 56                	push   %r14
  402654:	41 89 ff             	mov    %edi,%r15d
  402657:	41 55                	push   %r13
  402659:	41 54                	push   %r12
  40265b:	4c 8d 25 9e 17 20 00 	lea    0x20179e(%rip),%r12        # 603e00 <__frame_dummy_init_array_entry>
  402662:	55                   	push   %rbp
  402663:	48 8d 2d 9e 17 20 00 	lea    0x20179e(%rip),%rbp        # 603e08 <__init_array_end>
  40266a:	53                   	push   %rbx
  40266b:	49 89 f6             	mov    %rsi,%r14
  40266e:	49 89 d5             	mov    %rdx,%r13
  402671:	4c 29 e5             	sub    %r12,%rbp
  402674:	48 83 ec 08          	sub    $0x8,%rsp
  402678:	48 c1 fd 03          	sar    $0x3,%rbp
  40267c:	e8 ef e4 ff ff       	callq  400b70 <_init>
  402681:	48 85 ed             	test   %rbp,%rbp
  402684:	74 20                	je     4026a6 <__libc_csu_init+0x56>
  402686:	31 db                	xor    %ebx,%ebx
  402688:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40268f:	00 
  402690:	4c 89 ea             	mov    %r13,%rdx
  402693:	4c 89 f6             	mov    %r14,%rsi
  402696:	44 89 ff             	mov    %r15d,%edi
  402699:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40269d:	48 83 c3 01          	add    $0x1,%rbx
  4026a1:	48 39 eb             	cmp    %rbp,%rbx
  4026a4:	75 ea                	jne    402690 <__libc_csu_init+0x40>
  4026a6:	48 83 c4 08          	add    $0x8,%rsp
  4026aa:	5b                   	pop    %rbx
  4026ab:	5d                   	pop    %rbp
  4026ac:	41 5c                	pop    %r12
  4026ae:	41 5d                	pop    %r13
  4026b0:	41 5e                	pop    %r14
  4026b2:	41 5f                	pop    %r15
  4026b4:	c3                   	retq   
  4026b5:	90                   	nop
  4026b6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  4026bd:	00 00 00 

00000000004026c0 <__libc_csu_fini>:
  4026c0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000004026c4 <_fini>:
  4026c4:	48 83 ec 08          	sub    $0x8,%rsp
  4026c8:	48 83 c4 08          	add    $0x8,%rsp
  4026cc:	c3                   	retq   
