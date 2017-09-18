
ctarget：     文件格式 elf64-x86-64


Disassembly of section .init:

0000000000400c68 <_init>:
  400c68:	48 83 ec 08          	sub    $0x8,%rsp
  400c6c:	48 8b 05 85 43 20 00 	mov    0x204385(%rip),%rax        # 604ff8 <_DYNAMIC+0x1e0>
  400c73:	48 85 c0             	test   %rax,%rax
  400c76:	74 05                	je     400c7d <_init+0x15>
  400c78:	e8 43 02 00 00       	callq  400ec0 <socket@plt+0x10>
  400c7d:	48 83 c4 08          	add    $0x8,%rsp
  400c81:	c3                   	retq   

Disassembly of section .plt:

0000000000400c90 <strcasecmp@plt-0x10>:
  400c90:	ff 35 72 43 20 00    	pushq  0x204372(%rip)        # 605008 <_GLOBAL_OFFSET_TABLE_+0x8>
  400c96:	ff 25 74 43 20 00    	jmpq   *0x204374(%rip)        # 605010 <_GLOBAL_OFFSET_TABLE_+0x10>
  400c9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400ca0 <strcasecmp@plt>:
  400ca0:	ff 25 72 43 20 00    	jmpq   *0x204372(%rip)        # 605018 <_GLOBAL_OFFSET_TABLE_+0x18>
  400ca6:	68 00 00 00 00       	pushq  $0x0
  400cab:	e9 e0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cb0 <__errno_location@plt>:
  400cb0:	ff 25 6a 43 20 00    	jmpq   *0x20436a(%rip)        # 605020 <_GLOBAL_OFFSET_TABLE_+0x20>
  400cb6:	68 01 00 00 00       	pushq  $0x1
  400cbb:	e9 d0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cc0 <srandom@plt>:
  400cc0:	ff 25 62 43 20 00    	jmpq   *0x204362(%rip)        # 605028 <_GLOBAL_OFFSET_TABLE_+0x28>
  400cc6:	68 02 00 00 00       	pushq  $0x2
  400ccb:	e9 c0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cd0 <strncmp@plt>:
  400cd0:	ff 25 5a 43 20 00    	jmpq   *0x20435a(%rip)        # 605030 <_GLOBAL_OFFSET_TABLE_+0x30>
  400cd6:	68 03 00 00 00       	pushq  $0x3
  400cdb:	e9 b0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400ce0 <strcpy@plt>:
  400ce0:	ff 25 52 43 20 00    	jmpq   *0x204352(%rip)        # 605038 <_GLOBAL_OFFSET_TABLE_+0x38>
  400ce6:	68 04 00 00 00       	pushq  $0x4
  400ceb:	e9 a0 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400cf0 <puts@plt>:
  400cf0:	ff 25 4a 43 20 00    	jmpq   *0x20434a(%rip)        # 605040 <_GLOBAL_OFFSET_TABLE_+0x40>
  400cf6:	68 05 00 00 00       	pushq  $0x5
  400cfb:	e9 90 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d00 <write@plt>:
  400d00:	ff 25 42 43 20 00    	jmpq   *0x204342(%rip)        # 605048 <_GLOBAL_OFFSET_TABLE_+0x48>
  400d06:	68 06 00 00 00       	pushq  $0x6
  400d0b:	e9 80 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d10 <__stack_chk_fail@plt>:
  400d10:	ff 25 3a 43 20 00    	jmpq   *0x20433a(%rip)        # 605050 <_GLOBAL_OFFSET_TABLE_+0x50>
  400d16:	68 07 00 00 00       	pushq  $0x7
  400d1b:	e9 70 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d20 <mmap@plt>:
  400d20:	ff 25 32 43 20 00    	jmpq   *0x204332(%rip)        # 605058 <_GLOBAL_OFFSET_TABLE_+0x58>
  400d26:	68 08 00 00 00       	pushq  $0x8
  400d2b:	e9 60 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d30 <memset@plt>:
  400d30:	ff 25 2a 43 20 00    	jmpq   *0x20432a(%rip)        # 605060 <_GLOBAL_OFFSET_TABLE_+0x60>
  400d36:	68 09 00 00 00       	pushq  $0x9
  400d3b:	e9 50 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d40 <alarm@plt>:
  400d40:	ff 25 22 43 20 00    	jmpq   *0x204322(%rip)        # 605068 <_GLOBAL_OFFSET_TABLE_+0x68>
  400d46:	68 0a 00 00 00       	pushq  $0xa
  400d4b:	e9 40 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d50 <close@plt>:
  400d50:	ff 25 1a 43 20 00    	jmpq   *0x20431a(%rip)        # 605070 <_GLOBAL_OFFSET_TABLE_+0x70>
  400d56:	68 0b 00 00 00       	pushq  $0xb
  400d5b:	e9 30 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d60 <read@plt>:
  400d60:	ff 25 12 43 20 00    	jmpq   *0x204312(%rip)        # 605078 <_GLOBAL_OFFSET_TABLE_+0x78>
  400d66:	68 0c 00 00 00       	pushq  $0xc
  400d6b:	e9 20 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d70 <__libc_start_main@plt>:
  400d70:	ff 25 0a 43 20 00    	jmpq   *0x20430a(%rip)        # 605080 <_GLOBAL_OFFSET_TABLE_+0x80>
  400d76:	68 0d 00 00 00       	pushq  $0xd
  400d7b:	e9 10 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d80 <signal@plt>:
  400d80:	ff 25 02 43 20 00    	jmpq   *0x204302(%rip)        # 605088 <_GLOBAL_OFFSET_TABLE_+0x88>
  400d86:	68 0e 00 00 00       	pushq  $0xe
  400d8b:	e9 00 ff ff ff       	jmpq   400c90 <_init+0x28>

0000000000400d90 <gethostbyname@plt>:
  400d90:	ff 25 fa 42 20 00    	jmpq   *0x2042fa(%rip)        # 605090 <_GLOBAL_OFFSET_TABLE_+0x90>
  400d96:	68 0f 00 00 00       	pushq  $0xf
  400d9b:	e9 f0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400da0 <__memmove_chk@plt>:
  400da0:	ff 25 f2 42 20 00    	jmpq   *0x2042f2(%rip)        # 605098 <_GLOBAL_OFFSET_TABLE_+0x98>
  400da6:	68 10 00 00 00       	pushq  $0x10
  400dab:	e9 e0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400db0 <strtol@plt>:
  400db0:	ff 25 ea 42 20 00    	jmpq   *0x2042ea(%rip)        # 6050a0 <_GLOBAL_OFFSET_TABLE_+0xa0>
  400db6:	68 11 00 00 00       	pushq  $0x11
  400dbb:	e9 d0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400dc0 <memcpy@plt>:
  400dc0:	ff 25 e2 42 20 00    	jmpq   *0x2042e2(%rip)        # 6050a8 <_GLOBAL_OFFSET_TABLE_+0xa8>
  400dc6:	68 12 00 00 00       	pushq  $0x12
  400dcb:	e9 c0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400dd0 <time@plt>:
  400dd0:	ff 25 da 42 20 00    	jmpq   *0x2042da(%rip)        # 6050b0 <_GLOBAL_OFFSET_TABLE_+0xb0>
  400dd6:	68 13 00 00 00       	pushq  $0x13
  400ddb:	e9 b0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400de0 <random@plt>:
  400de0:	ff 25 d2 42 20 00    	jmpq   *0x2042d2(%rip)        # 6050b8 <_GLOBAL_OFFSET_TABLE_+0xb8>
  400de6:	68 14 00 00 00       	pushq  $0x14
  400deb:	e9 a0 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400df0 <_IO_getc@plt>:
  400df0:	ff 25 ca 42 20 00    	jmpq   *0x2042ca(%rip)        # 6050c0 <_GLOBAL_OFFSET_TABLE_+0xc0>
  400df6:	68 15 00 00 00       	pushq  $0x15
  400dfb:	e9 90 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e00 <__isoc99_sscanf@plt>:
  400e00:	ff 25 c2 42 20 00    	jmpq   *0x2042c2(%rip)        # 6050c8 <_GLOBAL_OFFSET_TABLE_+0xc8>
  400e06:	68 16 00 00 00       	pushq  $0x16
  400e0b:	e9 80 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e10 <munmap@plt>:
  400e10:	ff 25 ba 42 20 00    	jmpq   *0x2042ba(%rip)        # 6050d0 <_GLOBAL_OFFSET_TABLE_+0xd0>
  400e16:	68 17 00 00 00       	pushq  $0x17
  400e1b:	e9 70 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e20 <__printf_chk@plt>:
  400e20:	ff 25 b2 42 20 00    	jmpq   *0x2042b2(%rip)        # 6050d8 <_GLOBAL_OFFSET_TABLE_+0xd8>
  400e26:	68 18 00 00 00       	pushq  $0x18
  400e2b:	e9 60 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e30 <fopen@plt>:
  400e30:	ff 25 aa 42 20 00    	jmpq   *0x2042aa(%rip)        # 6050e0 <_GLOBAL_OFFSET_TABLE_+0xe0>
  400e36:	68 19 00 00 00       	pushq  $0x19
  400e3b:	e9 50 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e40 <getopt@plt>:
  400e40:	ff 25 a2 42 20 00    	jmpq   *0x2042a2(%rip)        # 6050e8 <_GLOBAL_OFFSET_TABLE_+0xe8>
  400e46:	68 1a 00 00 00       	pushq  $0x1a
  400e4b:	e9 40 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e50 <strtoul@plt>:
  400e50:	ff 25 9a 42 20 00    	jmpq   *0x20429a(%rip)        # 6050f0 <_GLOBAL_OFFSET_TABLE_+0xf0>
  400e56:	68 1b 00 00 00       	pushq  $0x1b
  400e5b:	e9 30 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e60 <gethostname@plt>:
  400e60:	ff 25 92 42 20 00    	jmpq   *0x204292(%rip)        # 6050f8 <_GLOBAL_OFFSET_TABLE_+0xf8>
  400e66:	68 1c 00 00 00       	pushq  $0x1c
  400e6b:	e9 20 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e70 <exit@plt>:
  400e70:	ff 25 8a 42 20 00    	jmpq   *0x20428a(%rip)        # 605100 <_GLOBAL_OFFSET_TABLE_+0x100>
  400e76:	68 1d 00 00 00       	pushq  $0x1d
  400e7b:	e9 10 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e80 <connect@plt>:
  400e80:	ff 25 82 42 20 00    	jmpq   *0x204282(%rip)        # 605108 <_GLOBAL_OFFSET_TABLE_+0x108>
  400e86:	68 1e 00 00 00       	pushq  $0x1e
  400e8b:	e9 00 fe ff ff       	jmpq   400c90 <_init+0x28>

0000000000400e90 <__fprintf_chk@plt>:
  400e90:	ff 25 7a 42 20 00    	jmpq   *0x20427a(%rip)        # 605110 <_GLOBAL_OFFSET_TABLE_+0x110>
  400e96:	68 1f 00 00 00       	pushq  $0x1f
  400e9b:	e9 f0 fd ff ff       	jmpq   400c90 <_init+0x28>

0000000000400ea0 <__sprintf_chk@plt>:
  400ea0:	ff 25 72 42 20 00    	jmpq   *0x204272(%rip)        # 605118 <_GLOBAL_OFFSET_TABLE_+0x118>
  400ea6:	68 20 00 00 00       	pushq  $0x20
  400eab:	e9 e0 fd ff ff       	jmpq   400c90 <_init+0x28>

0000000000400eb0 <socket@plt>:
  400eb0:	ff 25 6a 42 20 00    	jmpq   *0x20426a(%rip)        # 605120 <_GLOBAL_OFFSET_TABLE_+0x120>
  400eb6:	68 21 00 00 00       	pushq  $0x21
  400ebb:	e9 d0 fd ff ff       	jmpq   400c90 <_init+0x28>

Disassembly of section .plt.got:

0000000000400ec0 <.plt.got>:
  400ec0:	ff 25 32 41 20 00    	jmpq   *0x204132(%rip)        # 604ff8 <_DYNAMIC+0x1e0>
  400ec6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

0000000000400ed0 <_start>:
  400ed0:	31 ed                	xor    %ebp,%ebp
  400ed2:	49 89 d1             	mov    %rdx,%r9
  400ed5:	5e                   	pop    %rsi
  400ed6:	48 89 e2             	mov    %rsp,%rdx
  400ed9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
  400edd:	50                   	push   %rax
  400ede:	54                   	push   %rsp
  400edf:	49 c7 c0 60 2f 40 00 	mov    $0x402f60,%r8
  400ee6:	48 c7 c1 f0 2e 40 00 	mov    $0x402ef0,%rcx
  400eed:	48 c7 c7 d5 11 40 00 	mov    $0x4011d5,%rdi
  400ef4:	e8 77 fe ff ff       	callq  400d70 <__libc_start_main@plt>
  400ef9:	f4                   	hlt    
  400efa:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f00 <deregister_tm_clones>:
  400f00:	b8 b7 54 60 00       	mov    $0x6054b7,%eax
  400f05:	55                   	push   %rbp
  400f06:	48 2d b0 54 60 00    	sub    $0x6054b0,%rax
  400f0c:	48 83 f8 0e          	cmp    $0xe,%rax
  400f10:	48 89 e5             	mov    %rsp,%rbp
  400f13:	76 1b                	jbe    400f30 <deregister_tm_clones+0x30>
  400f15:	b8 00 00 00 00       	mov    $0x0,%eax
  400f1a:	48 85 c0             	test   %rax,%rax
  400f1d:	74 11                	je     400f30 <deregister_tm_clones+0x30>
  400f1f:	5d                   	pop    %rbp
  400f20:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f25:	ff e0                	jmpq   *%rax
  400f27:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
  400f2e:	00 00 
  400f30:	5d                   	pop    %rbp
  400f31:	c3                   	retq   
  400f32:	0f 1f 40 00          	nopl   0x0(%rax)
  400f36:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  400f3d:	00 00 00 

0000000000400f40 <register_tm_clones>:
  400f40:	be b0 54 60 00       	mov    $0x6054b0,%esi
  400f45:	55                   	push   %rbp
  400f46:	48 81 ee b0 54 60 00 	sub    $0x6054b0,%rsi
  400f4d:	48 c1 fe 03          	sar    $0x3,%rsi
  400f51:	48 89 e5             	mov    %rsp,%rbp
  400f54:	48 89 f0             	mov    %rsi,%rax
  400f57:	48 c1 e8 3f          	shr    $0x3f,%rax
  400f5b:	48 01 c6             	add    %rax,%rsi
  400f5e:	48 d1 fe             	sar    %rsi
  400f61:	74 15                	je     400f78 <register_tm_clones+0x38>
  400f63:	b8 00 00 00 00       	mov    $0x0,%eax
  400f68:	48 85 c0             	test   %rax,%rax
  400f6b:	74 0b                	je     400f78 <register_tm_clones+0x38>
  400f6d:	5d                   	pop    %rbp
  400f6e:	bf b0 54 60 00       	mov    $0x6054b0,%edi
  400f73:	ff e0                	jmpq   *%rax
  400f75:	0f 1f 00             	nopl   (%rax)
  400f78:	5d                   	pop    %rbp
  400f79:	c3                   	retq   
  400f7a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)

0000000000400f80 <__do_global_dtors_aux>:
  400f80:	80 3d 61 45 20 00 00 	cmpb   $0x0,0x204561(%rip)        # 6054e8 <completed.7585>
  400f87:	75 11                	jne    400f9a <__do_global_dtors_aux+0x1a>
  400f89:	55                   	push   %rbp
  400f8a:	48 89 e5             	mov    %rsp,%rbp
  400f8d:	e8 6e ff ff ff       	callq  400f00 <deregister_tm_clones>
  400f92:	5d                   	pop    %rbp
  400f93:	c6 05 4e 45 20 00 01 	movb   $0x1,0x20454e(%rip)        # 6054e8 <completed.7585>
  400f9a:	f3 c3                	repz retq 
  400f9c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000400fa0 <frame_dummy>:
  400fa0:	bf 10 4e 60 00       	mov    $0x604e10,%edi
  400fa5:	48 83 3f 00          	cmpq   $0x0,(%rdi)
  400fa9:	75 05                	jne    400fb0 <frame_dummy+0x10>
  400fab:	eb 93                	jmp    400f40 <register_tm_clones>
  400fad:	0f 1f 00             	nopl   (%rax)
  400fb0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fb5:	48 85 c0             	test   %rax,%rax
  400fb8:	74 f1                	je     400fab <frame_dummy+0xb>
  400fba:	55                   	push   %rbp
  400fbb:	48 89 e5             	mov    %rsp,%rbp
  400fbe:	ff d0                	callq  *%rax
  400fc0:	5d                   	pop    %rbp
  400fc1:	e9 7a ff ff ff       	jmpq   400f40 <register_tm_clones>

0000000000400fc6 <usage>:
  400fc6:	48 83 ec 08          	sub    $0x8,%rsp
  400fca:	48 89 fa             	mov    %rdi,%rdx
  400fcd:	83 3d 54 45 20 00 00 	cmpl   $0x0,0x204554(%rip)        # 605528 <is_checker>
  400fd4:	74 3e                	je     401014 <usage+0x4e>
  400fd6:	be 78 2f 40 00       	mov    $0x402f78,%esi
  400fdb:	bf 01 00 00 00       	mov    $0x1,%edi
  400fe0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fe5:	e8 36 fe ff ff       	callq  400e20 <__printf_chk@plt>
  400fea:	bf b0 2f 40 00       	mov    $0x402fb0,%edi
  400fef:	e8 fc fc ff ff       	callq  400cf0 <puts@plt>
  400ff4:	bf 28 31 40 00       	mov    $0x403128,%edi
  400ff9:	e8 f2 fc ff ff       	callq  400cf0 <puts@plt>
  400ffe:	bf d8 2f 40 00       	mov    $0x402fd8,%edi
  401003:	e8 e8 fc ff ff       	callq  400cf0 <puts@plt>
  401008:	bf 42 31 40 00       	mov    $0x403142,%edi
  40100d:	e8 de fc ff ff       	callq  400cf0 <puts@plt>
  401012:	eb 32                	jmp    401046 <usage+0x80>
  401014:	be 5e 31 40 00       	mov    $0x40315e,%esi
  401019:	bf 01 00 00 00       	mov    $0x1,%edi
  40101e:	b8 00 00 00 00       	mov    $0x0,%eax
  401023:	e8 f8 fd ff ff       	callq  400e20 <__printf_chk@plt>
  401028:	bf 00 30 40 00       	mov    $0x403000,%edi
  40102d:	e8 be fc ff ff       	callq  400cf0 <puts@plt>
  401032:	bf 28 30 40 00       	mov    $0x403028,%edi
  401037:	e8 b4 fc ff ff       	callq  400cf0 <puts@plt>
  40103c:	bf 7c 31 40 00       	mov    $0x40317c,%edi
  401041:	e8 aa fc ff ff       	callq  400cf0 <puts@plt>
  401046:	bf 00 00 00 00       	mov    $0x0,%edi
  40104b:	e8 20 fe ff ff       	callq  400e70 <exit@plt>

0000000000401050 <initialize_target>:
  401050:	55                   	push   %rbp
  401051:	53                   	push   %rbx
  401052:	48 81 ec 18 21 00 00 	sub    $0x2118,%rsp
  401059:	89 f5                	mov    %esi,%ebp
  40105b:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401062:	00 00 
  401064:	48 89 84 24 08 21 00 	mov    %rax,0x2108(%rsp)
  40106b:	00 
  40106c:	31 c0                	xor    %eax,%eax
  40106e:	89 3d a4 44 20 00    	mov    %edi,0x2044a4(%rip)        # 605518 <check_level>
  401074:	8b 3d ee 40 20 00    	mov    0x2040ee(%rip),%edi        # 605168 <target_id>
  40107a:	e8 50 1e 00 00       	callq  402ecf <gencookie>
  40107f:	89 05 9f 44 20 00    	mov    %eax,0x20449f(%rip)        # 605524 <cookie>
  401085:	89 c7                	mov    %eax,%edi
  401087:	e8 43 1e 00 00       	callq  402ecf <gencookie>
  40108c:	89 05 8e 44 20 00    	mov    %eax,0x20448e(%rip)        # 605520 <authkey>
  401092:	8b 05 d0 40 20 00    	mov    0x2040d0(%rip),%eax        # 605168 <target_id>
  401098:	8d 78 01             	lea    0x1(%rax),%edi
  40109b:	e8 20 fc ff ff       	callq  400cc0 <srandom@plt>
  4010a0:	e8 3b fd ff ff       	callq  400de0 <random@plt>
  4010a5:	89 c7                	mov    %eax,%edi
  4010a7:	e8 03 03 00 00       	callq  4013af <scramble>
  4010ac:	89 c3                	mov    %eax,%ebx
  4010ae:	85 ed                	test   %ebp,%ebp
  4010b0:	74 18                	je     4010ca <initialize_target+0x7a>
  4010b2:	bf 00 00 00 00       	mov    $0x0,%edi
  4010b7:	e8 14 fd ff ff       	callq  400dd0 <time@plt>
  4010bc:	89 c7                	mov    %eax,%edi
  4010be:	e8 fd fb ff ff       	callq  400cc0 <srandom@plt>
  4010c3:	e8 18 fd ff ff       	callq  400de0 <random@plt>
  4010c8:	eb 05                	jmp    4010cf <initialize_target+0x7f>
  4010ca:	b8 00 00 00 00       	mov    $0x0,%eax
  4010cf:	01 c3                	add    %eax,%ebx
  4010d1:	0f b7 db             	movzwl %bx,%ebx
  4010d4:	8d 04 dd 00 01 00 00 	lea    0x100(,%rbx,8),%eax
  4010db:	89 c0                	mov    %eax,%eax
  4010dd:	48 89 05 bc 43 20 00 	mov    %rax,0x2043bc(%rip)        # 6054a0 <buf_offset>
  4010e4:	c6 05 5d 50 20 00 63 	movb   $0x63,0x20505d(%rip)        # 606148 <target_prefix>
  4010eb:	83 3d b6 43 20 00 00 	cmpl   $0x0,0x2043b6(%rip)        # 6054a8 <notify>
  4010f2:	0f 84 bb 00 00 00    	je     4011b3 <initialize_target+0x163>
  4010f8:	83 3d 29 44 20 00 00 	cmpl   $0x0,0x204429(%rip)        # 605528 <is_checker>
  4010ff:	0f 85 ae 00 00 00    	jne    4011b3 <initialize_target+0x163>
  401105:	be 00 01 00 00       	mov    $0x100,%esi
  40110a:	48 89 e7             	mov    %rsp,%rdi
  40110d:	e8 4e fd ff ff       	callq  400e60 <gethostname@plt>
  401112:	85 c0                	test   %eax,%eax
  401114:	74 25                	je     40113b <initialize_target+0xeb>
  401116:	bf 58 30 40 00       	mov    $0x403058,%edi
  40111b:	e8 d0 fb ff ff       	callq  400cf0 <puts@plt>
  401120:	bf 08 00 00 00       	mov    $0x8,%edi
  401125:	e8 46 fd ff ff       	callq  400e70 <exit@plt>
  40112a:	48 89 e6             	mov    %rsp,%rsi
  40112d:	e8 6e fb ff ff       	callq  400ca0 <strcasecmp@plt>
  401132:	85 c0                	test   %eax,%eax
  401134:	74 21                	je     401157 <initialize_target+0x107>
  401136:	83 c3 01             	add    $0x1,%ebx
  401139:	eb 05                	jmp    401140 <initialize_target+0xf0>
  40113b:	bb 00 00 00 00       	mov    $0x0,%ebx
  401140:	48 63 c3             	movslq %ebx,%rax
  401143:	48 8b 3c c5 80 51 60 	mov    0x605180(,%rax,8),%rdi
  40114a:	00 
  40114b:	48 85 ff             	test   %rdi,%rdi
  40114e:	75 da                	jne    40112a <initialize_target+0xda>
  401150:	b8 00 00 00 00       	mov    $0x0,%eax
  401155:	eb 05                	jmp    40115c <initialize_target+0x10c>
  401157:	b8 01 00 00 00       	mov    $0x1,%eax
  40115c:	85 c0                	test   %eax,%eax
  40115e:	75 1c                	jne    40117c <initialize_target+0x12c>
  401160:	48 89 e2             	mov    %rsp,%rdx
  401163:	be 90 30 40 00       	mov    $0x403090,%esi
  401168:	bf 01 00 00 00       	mov    $0x1,%edi
  40116d:	e8 ae fc ff ff       	callq  400e20 <__printf_chk@plt>
  401172:	bf 08 00 00 00       	mov    $0x8,%edi
  401177:	e8 f4 fc ff ff       	callq  400e70 <exit@plt>
  40117c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401183:	00 
  401184:	e8 b0 1a 00 00       	callq  402c39 <init_driver>
  401189:	85 c0                	test   %eax,%eax
  40118b:	79 26                	jns    4011b3 <initialize_target+0x163>
  40118d:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401194:	00 
  401195:	be d0 30 40 00       	mov    $0x4030d0,%esi
  40119a:	bf 01 00 00 00       	mov    $0x1,%edi
  40119f:	b8 00 00 00 00       	mov    $0x0,%eax
  4011a4:	e8 77 fc ff ff       	callq  400e20 <__printf_chk@plt>
  4011a9:	bf 08 00 00 00       	mov    $0x8,%edi
  4011ae:	e8 bd fc ff ff       	callq  400e70 <exit@plt>
  4011b3:	48 8b 84 24 08 21 00 	mov    0x2108(%rsp),%rax
  4011ba:	00 
  4011bb:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4011c2:	00 00 
  4011c4:	74 05                	je     4011cb <initialize_target+0x17b>
  4011c6:	e8 45 fb ff ff       	callq  400d10 <__stack_chk_fail@plt>
  4011cb:	48 81 c4 18 21 00 00 	add    $0x2118,%rsp
  4011d2:	5b                   	pop    %rbx
  4011d3:	5d                   	pop    %rbp
  4011d4:	c3                   	retq   

00000000004011d5 <main>:
  4011d5:	41 56                	push   %r14
  4011d7:	41 55                	push   %r13
  4011d9:	41 54                	push   %r12
  4011db:	55                   	push   %rbp
  4011dc:	53                   	push   %rbx
  4011dd:	41 89 fc             	mov    %edi,%r12d
  4011e0:	48 89 f3             	mov    %rsi,%rbx
  4011e3:	be 59 1f 40 00       	mov    $0x401f59,%esi
  4011e8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011ed:	e8 8e fb ff ff       	callq  400d80 <signal@plt>
  4011f2:	be 0b 1f 40 00       	mov    $0x401f0b,%esi
  4011f7:	bf 07 00 00 00       	mov    $0x7,%edi
  4011fc:	e8 7f fb ff ff       	callq  400d80 <signal@plt>
  401201:	be a7 1f 40 00       	mov    $0x401fa7,%esi
  401206:	bf 04 00 00 00       	mov    $0x4,%edi
  40120b:	e8 70 fb ff ff       	callq  400d80 <signal@plt>
  401210:	83 3d 11 43 20 00 00 	cmpl   $0x0,0x204311(%rip)        # 605528 <is_checker>
  401217:	74 20                	je     401239 <main+0x64>
  401219:	be f5 1f 40 00       	mov    $0x401ff5,%esi
  40121e:	bf 0e 00 00 00       	mov    $0xe,%edi
  401223:	e8 58 fb ff ff       	callq  400d80 <signal@plt>
  401228:	bf 05 00 00 00       	mov    $0x5,%edi
  40122d:	e8 0e fb ff ff       	callq  400d40 <alarm@plt>
  401232:	bd 9a 31 40 00       	mov    $0x40319a,%ebp
  401237:	eb 05                	jmp    40123e <main+0x69>
  401239:	bd 95 31 40 00       	mov    $0x403195,%ebp
  40123e:	48 8b 05 7b 42 20 00 	mov    0x20427b(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401245:	48 89 05 c4 42 20 00 	mov    %rax,0x2042c4(%rip)        # 605510 <infile>
  40124c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401252:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401258:	e9 c6 00 00 00       	jmpq   401323 <main+0x14e>
  40125d:	83 e8 61             	sub    $0x61,%eax
  401260:	3c 10                	cmp    $0x10,%al
  401262:	0f 87 9c 00 00 00    	ja     401304 <main+0x12f>
  401268:	0f b6 c0             	movzbl %al,%eax
  40126b:	ff 24 c5 e0 31 40 00 	jmpq   *0x4031e0(,%rax,8)
  401272:	48 8b 3b             	mov    (%rbx),%rdi
  401275:	e8 4c fd ff ff       	callq  400fc6 <usage>
  40127a:	be ed 34 40 00       	mov    $0x4034ed,%esi
  40127f:	48 8b 3d 42 42 20 00 	mov    0x204242(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401286:	e8 a5 fb ff ff       	callq  400e30 <fopen@plt>
  40128b:	48 89 05 7e 42 20 00 	mov    %rax,0x20427e(%rip)        # 605510 <infile>
  401292:	48 85 c0             	test   %rax,%rax
  401295:	0f 85 88 00 00 00    	jne    401323 <main+0x14e>
  40129b:	48 8b 0d 26 42 20 00 	mov    0x204226(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012a2:	ba a2 31 40 00       	mov    $0x4031a2,%edx
  4012a7:	be 01 00 00 00       	mov    $0x1,%esi
  4012ac:	48 8b 3d 2d 42 20 00 	mov    0x20422d(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4012b3:	e8 d8 fb ff ff       	callq  400e90 <__fprintf_chk@plt>
  4012b8:	b8 01 00 00 00       	mov    $0x1,%eax
  4012bd:	e9 e4 00 00 00       	jmpq   4013a6 <main+0x1d1>
  4012c2:	ba 10 00 00 00       	mov    $0x10,%edx
  4012c7:	be 00 00 00 00       	mov    $0x0,%esi
  4012cc:	48 8b 3d f5 41 20 00 	mov    0x2041f5(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012d3:	e8 78 fb ff ff       	callq  400e50 <strtoul@plt>
  4012d8:	41 89 c6             	mov    %eax,%r14d
  4012db:	eb 46                	jmp    401323 <main+0x14e>
  4012dd:	ba 0a 00 00 00       	mov    $0xa,%edx
  4012e2:	be 00 00 00 00       	mov    $0x0,%esi
  4012e7:	48 8b 3d da 41 20 00 	mov    0x2041da(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012ee:	e8 bd fa ff ff       	callq  400db0 <strtol@plt>
  4012f3:	41 89 c5             	mov    %eax,%r13d
  4012f6:	eb 2b                	jmp    401323 <main+0x14e>
  4012f8:	c7 05 a6 41 20 00 00 	movl   $0x0,0x2041a6(%rip)        # 6054a8 <notify>
  4012ff:	00 00 00 
  401302:	eb 1f                	jmp    401323 <main+0x14e>
  401304:	0f be d2             	movsbl %dl,%edx
  401307:	be bf 31 40 00       	mov    $0x4031bf,%esi
  40130c:	bf 01 00 00 00       	mov    $0x1,%edi
  401311:	b8 00 00 00 00       	mov    $0x0,%eax
  401316:	e8 05 fb ff ff       	callq  400e20 <__printf_chk@plt>
  40131b:	48 8b 3b             	mov    (%rbx),%rdi
  40131e:	e8 a3 fc ff ff       	callq  400fc6 <usage>
  401323:	48 89 ea             	mov    %rbp,%rdx
  401326:	48 89 de             	mov    %rbx,%rsi
  401329:	44 89 e7             	mov    %r12d,%edi
  40132c:	e8 0f fb ff ff       	callq  400e40 <getopt@plt>
  401331:	89 c2                	mov    %eax,%edx
  401333:	3c ff                	cmp    $0xff,%al
  401335:	0f 85 22 ff ff ff    	jne    40125d <main+0x88>
  40133b:	be 00 00 00 00       	mov    $0x0,%esi
  401340:	44 89 ef             	mov    %r13d,%edi
  401343:	e8 08 fd ff ff       	callq  401050 <initialize_target>
  401348:	83 3d d9 41 20 00 00 	cmpl   $0x0,0x2041d9(%rip)        # 605528 <is_checker>
  40134f:	74 2a                	je     40137b <main+0x1a6>
  401351:	44 3b 35 c8 41 20 00 	cmp    0x2041c8(%rip),%r14d        # 605520 <authkey>
  401358:	74 21                	je     40137b <main+0x1a6>
  40135a:	44 89 f2             	mov    %r14d,%edx
  40135d:	be f8 30 40 00       	mov    $0x4030f8,%esi
  401362:	bf 01 00 00 00       	mov    $0x1,%edi
  401367:	b8 00 00 00 00       	mov    $0x0,%eax
  40136c:	e8 af fa ff ff       	callq  400e20 <__printf_chk@plt>
  401371:	b8 00 00 00 00       	mov    $0x0,%eax
  401376:	e8 2c 08 00 00       	callq  401ba7 <check_fail>
  40137b:	8b 15 a3 41 20 00    	mov    0x2041a3(%rip),%edx        # 605524 <cookie>
  401381:	be d2 31 40 00       	mov    $0x4031d2,%esi
  401386:	bf 01 00 00 00       	mov    $0x1,%edi
  40138b:	b8 00 00 00 00       	mov    $0x0,%eax
  401390:	e8 8b fa ff ff       	callq  400e20 <__printf_chk@plt>
  401395:	48 8b 3d 04 41 20 00 	mov    0x204104(%rip),%rdi        # 6054a0 <buf_offset>
  40139c:	e8 54 0d 00 00       	callq  4020f5 <stable_launch>
  4013a1:	b8 00 00 00 00       	mov    $0x0,%eax
  4013a6:	5b                   	pop    %rbx
  4013a7:	5d                   	pop    %rbp
  4013a8:	41 5c                	pop    %r12
  4013aa:	41 5d                	pop    %r13
  4013ac:	41 5e                	pop    %r14
  4013ae:	c3                   	retq   

00000000004013af <scramble>:
  4013af:	48 83 ec 38          	sub    $0x38,%rsp
  4013b3:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4013ba:	00 00 
  4013bc:	48 89 44 24 28       	mov    %rax,0x28(%rsp)
  4013c1:	31 c0                	xor    %eax,%eax
  4013c3:	eb 10                	jmp    4013d5 <scramble+0x26>
  4013c5:	69 d0 43 e2 00 00    	imul   $0xe243,%eax,%edx
  4013cb:	01 fa                	add    %edi,%edx
  4013cd:	89 c1                	mov    %eax,%ecx
  4013cf:	89 14 8c             	mov    %edx,(%rsp,%rcx,4)
  4013d2:	83 c0 01             	add    $0x1,%eax
  4013d5:	83 f8 09             	cmp    $0x9,%eax
  4013d8:	76 eb                	jbe    4013c5 <scramble+0x16>
  4013da:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4013de:	69 c0 3b 07 00 00    	imul   $0x73b,%eax,%eax
  4013e4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4013e8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4013ec:	69 c0 6d 1a 00 00    	imul   $0x1a6d,%eax,%eax
  4013f2:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4013f6:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4013fa:	69 c0 7a 3b 00 00    	imul   $0x3b7a,%eax,%eax
  401400:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401404:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401408:	69 c0 50 17 00 00    	imul   $0x1750,%eax,%eax
  40140e:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401412:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401416:	69 c0 73 86 00 00    	imul   $0x8673,%eax,%eax
  40141c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401420:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401424:	69 c0 e3 0f 00 00    	imul   $0xfe3,%eax,%eax
  40142a:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40142e:	8b 04 24             	mov    (%rsp),%eax
  401431:	69 c0 a9 d9 00 00    	imul   $0xd9a9,%eax,%eax
  401437:	89 04 24             	mov    %eax,(%rsp)
  40143a:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40143e:	69 c0 f2 a5 00 00    	imul   $0xa5f2,%eax,%eax
  401444:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401448:	8b 44 24 18          	mov    0x18(%rsp),%eax
  40144c:	69 c0 72 0c 00 00    	imul   $0xc72,%eax,%eax
  401452:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401456:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40145a:	69 c0 78 97 00 00    	imul   $0x9778,%eax,%eax
  401460:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401464:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401468:	69 c0 7c a8 00 00    	imul   $0xa87c,%eax,%eax
  40146e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401472:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401476:	69 c0 cd 18 00 00    	imul   $0x18cd,%eax,%eax
  40147c:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401480:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401484:	69 c0 01 9e 00 00    	imul   $0x9e01,%eax,%eax
  40148a:	89 44 24 08          	mov    %eax,0x8(%rsp)
  40148e:	8b 04 24             	mov    (%rsp),%eax
  401491:	69 c0 c1 20 00 00    	imul   $0x20c1,%eax,%eax
  401497:	89 04 24             	mov    %eax,(%rsp)
  40149a:	8b 44 24 10          	mov    0x10(%rsp),%eax
  40149e:	69 c0 4d 25 00 00    	imul   $0x254d,%eax,%eax
  4014a4:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014a8:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4014ac:	69 c0 b2 85 00 00    	imul   $0x85b2,%eax,%eax
  4014b2:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4014b6:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4014ba:	69 c0 66 9d 00 00    	imul   $0x9d66,%eax,%eax
  4014c0:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4014c4:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4014c8:	69 c0 a3 bf 00 00    	imul   $0xbfa3,%eax,%eax
  4014ce:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4014d2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4014d6:	69 c0 b1 fb 00 00    	imul   $0xfbb1,%eax,%eax
  4014dc:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4014e0:	8b 04 24             	mov    (%rsp),%eax
  4014e3:	69 c0 19 63 00 00    	imul   $0x6319,%eax,%eax
  4014e9:	89 04 24             	mov    %eax,(%rsp)
  4014ec:	8b 04 24             	mov    (%rsp),%eax
  4014ef:	69 c0 dd 72 00 00    	imul   $0x72dd,%eax,%eax
  4014f5:	89 04 24             	mov    %eax,(%rsp)
  4014f8:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4014fc:	69 c0 0a 8c 00 00    	imul   $0x8c0a,%eax,%eax
  401502:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401506:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40150a:	69 c0 b4 14 00 00    	imul   $0x14b4,%eax,%eax
  401510:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401514:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401518:	69 c0 09 16 00 00    	imul   $0x1609,%eax,%eax
  40151e:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401522:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401526:	69 c0 5d 0b 00 00    	imul   $0xb5d,%eax,%eax
  40152c:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401530:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401534:	69 c0 2a 4a 00 00    	imul   $0x4a2a,%eax,%eax
  40153a:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40153e:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401542:	69 c0 69 13 00 00    	imul   $0x1369,%eax,%eax
  401548:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40154c:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401550:	69 c0 a5 46 00 00    	imul   $0x46a5,%eax,%eax
  401556:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40155a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40155e:	69 c0 68 2c 00 00    	imul   $0x2c68,%eax,%eax
  401564:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401568:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40156c:	69 c0 d8 54 00 00    	imul   $0x54d8,%eax,%eax
  401572:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401576:	8b 44 24 20          	mov    0x20(%rsp),%eax
  40157a:	69 c0 1d 68 00 00    	imul   $0x681d,%eax,%eax
  401580:	89 44 24 20          	mov    %eax,0x20(%rsp)
  401584:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  401588:	69 c0 3e 7e 00 00    	imul   $0x7e3e,%eax,%eax
  40158e:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401592:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401596:	69 c0 aa 7a 00 00    	imul   $0x7aaa,%eax,%eax
  40159c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4015a0:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015a4:	69 c0 63 de 00 00    	imul   $0xde63,%eax,%eax
  4015aa:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015ae:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4015b2:	69 c0 d5 14 00 00    	imul   $0x14d5,%eax,%eax
  4015b8:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4015bc:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4015c0:	69 c0 7f f8 00 00    	imul   $0xf87f,%eax,%eax
  4015c6:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4015ca:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015ce:	69 c0 79 b4 00 00    	imul   $0xb479,%eax,%eax
  4015d4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015d8:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4015dc:	69 c0 3a d4 00 00    	imul   $0xd43a,%eax,%eax
  4015e2:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4015e6:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4015ea:	69 c0 86 b6 00 00    	imul   $0xb686,%eax,%eax
  4015f0:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4015f4:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4015f8:	69 c0 54 ea 00 00    	imul   $0xea54,%eax,%eax
  4015fe:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401602:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401606:	69 c0 c4 97 00 00    	imul   $0x97c4,%eax,%eax
  40160c:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401610:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401614:	69 c0 bc 75 00 00    	imul   $0x75bc,%eax,%eax
  40161a:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40161e:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401622:	69 c0 76 97 00 00    	imul   $0x9776,%eax,%eax
  401628:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40162c:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401630:	69 c0 97 5c 00 00    	imul   $0x5c97,%eax,%eax
  401636:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40163a:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40163e:	69 c0 c9 23 00 00    	imul   $0x23c9,%eax,%eax
  401644:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401648:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40164c:	69 c0 93 15 00 00    	imul   $0x1593,%eax,%eax
  401652:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401656:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40165a:	69 c0 fa 8b 00 00    	imul   $0x8bfa,%eax,%eax
  401660:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401664:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401668:	69 c0 6a 91 00 00    	imul   $0x916a,%eax,%eax
  40166e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401672:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401676:	69 c0 b3 d1 00 00    	imul   $0xd1b3,%eax,%eax
  40167c:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401680:	8b 04 24             	mov    (%rsp),%eax
  401683:	69 c0 ff 7c 00 00    	imul   $0x7cff,%eax,%eax
  401689:	89 04 24             	mov    %eax,(%rsp)
  40168c:	8b 04 24             	mov    (%rsp),%eax
  40168f:	69 c0 4a b1 00 00    	imul   $0xb14a,%eax,%eax
  401695:	89 04 24             	mov    %eax,(%rsp)
  401698:	8b 44 24 08          	mov    0x8(%rsp),%eax
  40169c:	69 c0 3b 6e 00 00    	imul   $0x6e3b,%eax,%eax
  4016a2:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4016a6:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4016aa:	69 c0 07 fa 00 00    	imul   $0xfa07,%eax,%eax
  4016b0:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4016b4:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4016b8:	69 c0 f2 2e 00 00    	imul   $0x2ef2,%eax,%eax
  4016be:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4016c2:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4016c6:	69 c0 b8 2c 00 00    	imul   $0x2cb8,%eax,%eax
  4016cc:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016d0:	8b 04 24             	mov    (%rsp),%eax
  4016d3:	69 c0 71 72 00 00    	imul   $0x7271,%eax,%eax
  4016d9:	89 04 24             	mov    %eax,(%rsp)
  4016dc:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4016e0:	69 c0 c5 4d 00 00    	imul   $0x4dc5,%eax,%eax
  4016e6:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4016ea:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4016ee:	69 c0 a9 6f 00 00    	imul   $0x6fa9,%eax,%eax
  4016f4:	89 44 24 24          	mov    %eax,0x24(%rsp)
  4016f8:	8b 04 24             	mov    (%rsp),%eax
  4016fb:	69 c0 90 a4 00 00    	imul   $0xa490,%eax,%eax
  401701:	89 04 24             	mov    %eax,(%rsp)
  401704:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401708:	69 c0 19 a9 00 00    	imul   $0xa919,%eax,%eax
  40170e:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401712:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401716:	69 c0 b0 7d 00 00    	imul   $0x7db0,%eax,%eax
  40171c:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401720:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401724:	69 c0 3f 54 00 00    	imul   $0x543f,%eax,%eax
  40172a:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40172e:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401732:	69 c0 7e 52 00 00    	imul   $0x527e,%eax,%eax
  401738:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40173c:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401740:	69 c0 4e 10 00 00    	imul   $0x104e,%eax,%eax
  401746:	89 44 24 14          	mov    %eax,0x14(%rsp)
  40174a:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40174e:	69 c0 77 55 00 00    	imul   $0x5577,%eax,%eax
  401754:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401758:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  40175c:	69 c0 b9 0a 00 00    	imul   $0xab9,%eax,%eax
  401762:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401766:	8b 44 24 14          	mov    0x14(%rsp),%eax
  40176a:	69 c0 cb 02 00 00    	imul   $0x2cb,%eax,%eax
  401770:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401774:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401778:	69 c0 85 6c 00 00    	imul   $0x6c85,%eax,%eax
  40177e:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401782:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401786:	69 c0 6a bb 00 00    	imul   $0xbb6a,%eax,%eax
  40178c:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401790:	8b 44 24 24          	mov    0x24(%rsp),%eax
  401794:	69 c0 60 ad 00 00    	imul   $0xad60,%eax,%eax
  40179a:	89 44 24 24          	mov    %eax,0x24(%rsp)
  40179e:	8b 04 24             	mov    (%rsp),%eax
  4017a1:	69 c0 be b4 00 00    	imul   $0xb4be,%eax,%eax
  4017a7:	89 04 24             	mov    %eax,(%rsp)
  4017aa:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017ae:	69 c0 9f ac 00 00    	imul   $0xac9f,%eax,%eax
  4017b4:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017b8:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017bc:	c1 e0 0b             	shl    $0xb,%eax
  4017bf:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4017c3:	8b 44 24 18          	mov    0x18(%rsp),%eax
  4017c7:	69 c0 be e7 00 00    	imul   $0xe7be,%eax,%eax
  4017cd:	89 44 24 18          	mov    %eax,0x18(%rsp)
  4017d1:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4017d5:	69 c0 89 e8 00 00    	imul   $0xe889,%eax,%eax
  4017db:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4017df:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4017e3:	69 c0 e9 74 00 00    	imul   $0x74e9,%eax,%eax
  4017e9:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4017ed:	8b 44 24 08          	mov    0x8(%rsp),%eax
  4017f1:	69 c0 83 4f 00 00    	imul   $0x4f83,%eax,%eax
  4017f7:	89 44 24 08          	mov    %eax,0x8(%rsp)
  4017fb:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4017ff:	69 c0 e3 6f 00 00    	imul   $0x6fe3,%eax,%eax
  401805:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  401809:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  40180d:	69 c0 d2 ae 00 00    	imul   $0xaed2,%eax,%eax
  401813:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  401817:	8b 44 24 24          	mov    0x24(%rsp),%eax
  40181b:	69 c0 32 c6 00 00    	imul   $0xc632,%eax,%eax
  401821:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401825:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401829:	69 c0 7e 0d 00 00    	imul   $0xd7e,%eax,%eax
  40182f:	89 44 24 18          	mov    %eax,0x18(%rsp)
  401833:	8b 44 24 14          	mov    0x14(%rsp),%eax
  401837:	69 c0 0a 0b 00 00    	imul   $0xb0a,%eax,%eax
  40183d:	89 44 24 14          	mov    %eax,0x14(%rsp)
  401841:	8b 04 24             	mov    (%rsp),%eax
  401844:	69 c0 e1 49 00 00    	imul   $0x49e1,%eax,%eax
  40184a:	89 04 24             	mov    %eax,(%rsp)
  40184d:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  401851:	69 c0 1c 0d 00 00    	imul   $0xd1c,%eax,%eax
  401857:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  40185b:	8b 04 24             	mov    (%rsp),%eax
  40185e:	69 c0 07 13 00 00    	imul   $0x1307,%eax,%eax
  401864:	89 04 24             	mov    %eax,(%rsp)
  401867:	8b 44 24 04          	mov    0x4(%rsp),%eax
  40186b:	69 c0 6e ed 00 00    	imul   $0xed6e,%eax,%eax
  401871:	89 44 24 04          	mov    %eax,0x4(%rsp)
  401875:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401879:	69 c0 4e da 00 00    	imul   $0xda4e,%eax,%eax
  40187f:	89 44 24 10          	mov    %eax,0x10(%rsp)
  401883:	8b 44 24 08          	mov    0x8(%rsp),%eax
  401887:	69 c0 48 ca 00 00    	imul   $0xca48,%eax,%eax
  40188d:	89 44 24 08          	mov    %eax,0x8(%rsp)
  401891:	8b 44 24 18          	mov    0x18(%rsp),%eax
  401895:	69 c0 57 b6 00 00    	imul   $0xb657,%eax,%eax
  40189b:	89 44 24 18          	mov    %eax,0x18(%rsp)
  40189f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  4018a3:	69 c0 de 8e 00 00    	imul   $0x8ede,%eax,%eax
  4018a9:	89 44 24 10          	mov    %eax,0x10(%rsp)
  4018ad:	8b 44 24 04          	mov    0x4(%rsp),%eax
  4018b1:	69 c0 dd 42 00 00    	imul   $0x42dd,%eax,%eax
  4018b7:	89 44 24 04          	mov    %eax,0x4(%rsp)
  4018bb:	8b 44 24 1c          	mov    0x1c(%rsp),%eax
  4018bf:	69 c0 1a 05 00 00    	imul   $0x51a,%eax,%eax
  4018c5:	89 44 24 1c          	mov    %eax,0x1c(%rsp)
  4018c9:	8b 44 24 14          	mov    0x14(%rsp),%eax
  4018cd:	69 c0 f0 cc 00 00    	imul   $0xccf0,%eax,%eax
  4018d3:	89 44 24 14          	mov    %eax,0x14(%rsp)
  4018d7:	8b 44 24 20          	mov    0x20(%rsp),%eax
  4018db:	69 c0 62 34 00 00    	imul   $0x3462,%eax,%eax
  4018e1:	89 44 24 20          	mov    %eax,0x20(%rsp)
  4018e5:	8b 44 24 0c          	mov    0xc(%rsp),%eax
  4018e9:	69 c0 2f f5 00 00    	imul   $0xf52f,%eax,%eax
  4018ef:	89 44 24 0c          	mov    %eax,0xc(%rsp)
  4018f3:	8b 44 24 24          	mov    0x24(%rsp),%eax
  4018f7:	69 c0 0b 80 00 00    	imul   $0x800b,%eax,%eax
  4018fd:	89 44 24 24          	mov    %eax,0x24(%rsp)
  401901:	8b 44 24 04          	mov    0x4(%rsp),%eax
  401905:	69 c0 81 cb 00 00    	imul   $0xcb81,%eax,%eax
  40190b:	89 44 24 04          	mov    %eax,0x4(%rsp)
  40190f:	8b 44 24 10          	mov    0x10(%rsp),%eax
  401913:	69 c0 f7 12 00 00    	imul   $0x12f7,%eax,%eax
  401919:	89 44 24 10          	mov    %eax,0x10(%rsp)
  40191d:	ba 00 00 00 00       	mov    $0x0,%edx
  401922:	b8 00 00 00 00       	mov    $0x0,%eax
  401927:	eb 0a                	jmp    401933 <scramble+0x584>
  401929:	89 d1                	mov    %edx,%ecx
  40192b:	8b 0c 8c             	mov    (%rsp,%rcx,4),%ecx
  40192e:	01 c8                	add    %ecx,%eax
  401930:	83 c2 01             	add    $0x1,%edx
  401933:	83 fa 09             	cmp    $0x9,%edx
  401936:	76 f1                	jbe    401929 <scramble+0x57a>
  401938:	48 8b 74 24 28       	mov    0x28(%rsp),%rsi
  40193d:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  401944:	00 00 
  401946:	74 05                	je     40194d <scramble+0x59e>
  401948:	e8 c3 f3 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  40194d:	48 83 c4 38          	add    $0x38,%rsp
  401951:	c3                   	retq   

0000000000401952 <getbuf>:
  401952:	48 83 ec 18          	sub    $0x18,%rsp
  401956:	48 89 e7             	mov    %rsp,%rdi
  401959:	e8 7e 02 00 00       	callq  401bdc <Gets>
  40195e:	b8 01 00 00 00       	mov    $0x1,%eax
  401963:	48 83 c4 18          	add    $0x18,%rsp
  401967:	c3                   	retq   

0000000000401968 <touch1>:
  401968:	48 83 ec 08          	sub    $0x8,%rsp
  40196c:	c7 05 a6 3b 20 00 01 	movl   $0x1,0x203ba6(%rip)        # 60551c <vlevel>
  401973:	00 00 00 
  401976:	bf 46 33 40 00       	mov    $0x403346,%edi
  40197b:	e8 70 f3 ff ff       	callq  400cf0 <puts@plt>
  401980:	bf 01 00 00 00       	mov    $0x1,%edi
  401985:	e8 97 04 00 00       	callq  401e21 <validate>
  40198a:	bf 00 00 00 00       	mov    $0x0,%edi
  40198f:	e8 dc f4 ff ff       	callq  400e70 <exit@plt>

0000000000401994 <touch2>:
  401994:	48 83 ec 08          	sub    $0x8,%rsp
  401998:	89 fa                	mov    %edi,%edx
  40199a:	c7 05 78 3b 20 00 02 	movl   $0x2,0x203b78(%rip)        # 60551c <vlevel>
  4019a1:	00 00 00 
  4019a4:	39 3d 7a 3b 20 00    	cmp    %edi,0x203b7a(%rip)        # 605524 <cookie>
  4019aa:	75 20                	jne    4019cc <touch2+0x38>
  4019ac:	be 68 33 40 00       	mov    $0x403368,%esi
  4019b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4019b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019bb:	e8 60 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  4019c0:	bf 02 00 00 00       	mov    $0x2,%edi
  4019c5:	e8 57 04 00 00       	callq  401e21 <validate>
  4019ca:	eb 1e                	jmp    4019ea <touch2+0x56>
  4019cc:	be 90 33 40 00       	mov    $0x403390,%esi
  4019d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4019d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019db:	e8 40 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  4019e0:	bf 02 00 00 00       	mov    $0x2,%edi
  4019e5:	e8 f9 04 00 00       	callq  401ee3 <fail>
  4019ea:	bf 00 00 00 00       	mov    $0x0,%edi
  4019ef:	e8 7c f4 ff ff       	callq  400e70 <exit@plt>

00000000004019f4 <hexmatch>:
  4019f4:	41 54                	push   %r12
  4019f6:	55                   	push   %rbp
  4019f7:	53                   	push   %rbx
  4019f8:	48 83 c4 80          	add    $0xffffffffffffff80,%rsp
  4019fc:	89 fd                	mov    %edi,%ebp
  4019fe:	48 89 f3             	mov    %rsi,%rbx
  401a01:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401a08:	00 00 
  401a0a:	48 89 44 24 78       	mov    %rax,0x78(%rsp)
  401a0f:	31 c0                	xor    %eax,%eax
  401a11:	e8 ca f3 ff ff       	callq  400de0 <random@plt>
  401a16:	48 89 c1             	mov    %rax,%rcx
  401a19:	48 ba 0b d7 a3 70 3d 	movabs $0xa3d70a3d70a3d70b,%rdx
  401a20:	0a d7 a3 
  401a23:	48 f7 ea             	imul   %rdx
  401a26:	48 01 ca             	add    %rcx,%rdx
  401a29:	48 c1 fa 06          	sar    $0x6,%rdx
  401a2d:	48 89 c8             	mov    %rcx,%rax
  401a30:	48 c1 f8 3f          	sar    $0x3f,%rax
  401a34:	48 29 c2             	sub    %rax,%rdx
  401a37:	48 8d 04 92          	lea    (%rdx,%rdx,4),%rax
  401a3b:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
  401a3f:	48 8d 04 95 00 00 00 	lea    0x0(,%rdx,4),%rax
  401a46:	00 
  401a47:	48 29 c1             	sub    %rax,%rcx
  401a4a:	4c 8d 24 0c          	lea    (%rsp,%rcx,1),%r12
  401a4e:	41 89 e8             	mov    %ebp,%r8d
  401a51:	b9 63 33 40 00       	mov    $0x403363,%ecx
  401a56:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  401a5d:	be 01 00 00 00       	mov    $0x1,%esi
  401a62:	4c 89 e7             	mov    %r12,%rdi
  401a65:	b8 00 00 00 00       	mov    $0x0,%eax
  401a6a:	e8 31 f4 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401a6f:	ba 09 00 00 00       	mov    $0x9,%edx
  401a74:	4c 89 e6             	mov    %r12,%rsi
  401a77:	48 89 df             	mov    %rbx,%rdi
  401a7a:	e8 51 f2 ff ff       	callq  400cd0 <strncmp@plt>
  401a7f:	85 c0                	test   %eax,%eax
  401a81:	0f 94 c0             	sete   %al
  401a84:	48 8b 5c 24 78       	mov    0x78(%rsp),%rbx
  401a89:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  401a90:	00 00 
  401a92:	74 05                	je     401a99 <hexmatch+0xa5>
  401a94:	e8 77 f2 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  401a99:	0f b6 c0             	movzbl %al,%eax
  401a9c:	48 83 ec 80          	sub    $0xffffffffffffff80,%rsp
  401aa0:	5b                   	pop    %rbx
  401aa1:	5d                   	pop    %rbp
  401aa2:	41 5c                	pop    %r12
  401aa4:	c3                   	retq   

0000000000401aa5 <touch3>:
  401aa5:	53                   	push   %rbx
  401aa6:	48 89 fb             	mov    %rdi,%rbx
  401aa9:	c7 05 69 3a 20 00 03 	movl   $0x3,0x203a69(%rip)        # 60551c <vlevel>
  401ab0:	00 00 00 
  401ab3:	48 89 fe             	mov    %rdi,%rsi
  401ab6:	8b 3d 68 3a 20 00    	mov    0x203a68(%rip),%edi        # 605524 <cookie>
  401abc:	e8 33 ff ff ff       	callq  4019f4 <hexmatch>
  401ac1:	85 c0                	test   %eax,%eax
  401ac3:	74 23                	je     401ae8 <touch3+0x43>
  401ac5:	48 89 da             	mov    %rbx,%rdx
  401ac8:	be b8 33 40 00       	mov    $0x4033b8,%esi
  401acd:	bf 01 00 00 00       	mov    $0x1,%edi
  401ad2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad7:	e8 44 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401adc:	bf 03 00 00 00       	mov    $0x3,%edi
  401ae1:	e8 3b 03 00 00       	callq  401e21 <validate>
  401ae6:	eb 21                	jmp    401b09 <touch3+0x64>
  401ae8:	48 89 da             	mov    %rbx,%rdx
  401aeb:	be e0 33 40 00       	mov    $0x4033e0,%esi
  401af0:	bf 01 00 00 00       	mov    $0x1,%edi
  401af5:	b8 00 00 00 00       	mov    $0x0,%eax
  401afa:	e8 21 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401aff:	bf 03 00 00 00       	mov    $0x3,%edi
  401b04:	e8 da 03 00 00       	callq  401ee3 <fail>
  401b09:	bf 00 00 00 00       	mov    $0x0,%edi
  401b0e:	e8 5d f3 ff ff       	callq  400e70 <exit@plt>

0000000000401b13 <test>:
  401b13:	48 83 ec 08          	sub    $0x8,%rsp
  401b17:	b8 00 00 00 00       	mov    $0x0,%eax
  401b1c:	e8 31 fe ff ff       	callq  401952 <getbuf>
  401b21:	89 c2                	mov    %eax,%edx
  401b23:	be 08 34 40 00       	mov    $0x403408,%esi
  401b28:	bf 01 00 00 00       	mov    $0x1,%edi
  401b2d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b32:	e8 e9 f2 ff ff       	callq  400e20 <__printf_chk@plt>
  401b37:	48 83 c4 08          	add    $0x8,%rsp
  401b3b:	c3                   	retq   

0000000000401b3c <save_char>:
  401b3c:	8b 05 02 46 20 00    	mov    0x204602(%rip),%eax        # 606144 <gets_cnt>
  401b42:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401b47:	7f 49                	jg     401b92 <save_char+0x56>
  401b49:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401b4c:	89 f9                	mov    %edi,%ecx
  401b4e:	c0 e9 04             	shr    $0x4,%cl
  401b51:	83 e1 0f             	and    $0xf,%ecx
  401b54:	0f b6 b1 30 37 40 00 	movzbl 0x403730(%rcx),%esi
  401b5b:	48 63 ca             	movslq %edx,%rcx
  401b5e:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401b65:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401b68:	83 e7 0f             	and    $0xf,%edi
  401b6b:	0f b6 b7 30 37 40 00 	movzbl 0x403730(%rdi),%esi
  401b72:	48 63 c9             	movslq %ecx,%rcx
  401b75:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401b7c:	83 c2 02             	add    $0x2,%edx
  401b7f:	48 63 d2             	movslq %edx,%rdx
  401b82:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401b89:	83 c0 01             	add    $0x1,%eax
  401b8c:	89 05 b2 45 20 00    	mov    %eax,0x2045b2(%rip)        # 606144 <gets_cnt>
  401b92:	f3 c3                	repz retq 

0000000000401b94 <save_term>:
  401b94:	8b 05 aa 45 20 00    	mov    0x2045aa(%rip),%eax        # 606144 <gets_cnt>
  401b9a:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401b9d:	48 98                	cltq   
  401b9f:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401ba6:	c3                   	retq   

0000000000401ba7 <check_fail>:
  401ba7:	48 83 ec 08          	sub    $0x8,%rsp
  401bab:	0f be 15 96 45 20 00 	movsbl 0x204596(%rip),%edx        # 606148 <target_prefix>
  401bb2:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401bb8:	8b 0d 5a 39 20 00    	mov    0x20395a(%rip),%ecx        # 605518 <check_level>
  401bbe:	be 2b 34 40 00       	mov    $0x40342b,%esi
  401bc3:	bf 01 00 00 00       	mov    $0x1,%edi
  401bc8:	b8 00 00 00 00       	mov    $0x0,%eax
  401bcd:	e8 4e f2 ff ff       	callq  400e20 <__printf_chk@plt>
  401bd2:	bf 01 00 00 00       	mov    $0x1,%edi
  401bd7:	e8 94 f2 ff ff       	callq  400e70 <exit@plt>

0000000000401bdc <Gets>:
  401bdc:	41 54                	push   %r12
  401bde:	55                   	push   %rbp
  401bdf:	53                   	push   %rbx
  401be0:	49 89 fc             	mov    %rdi,%r12
  401be3:	c7 05 57 45 20 00 00 	movl   $0x0,0x204557(%rip)        # 606144 <gets_cnt>
  401bea:	00 00 00 
  401bed:	48 89 fb             	mov    %rdi,%rbx
  401bf0:	eb 11                	jmp    401c03 <Gets+0x27>
  401bf2:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401bf6:	88 03                	mov    %al,(%rbx)
  401bf8:	0f b6 f8             	movzbl %al,%edi
  401bfb:	e8 3c ff ff ff       	callq  401b3c <save_char>
  401c00:	48 89 eb             	mov    %rbp,%rbx
  401c03:	48 8b 3d 06 39 20 00 	mov    0x203906(%rip),%rdi        # 605510 <infile>
  401c0a:	e8 e1 f1 ff ff       	callq  400df0 <_IO_getc@plt>
  401c0f:	83 f8 ff             	cmp    $0xffffffff,%eax
  401c12:	74 05                	je     401c19 <Gets+0x3d>
  401c14:	83 f8 0a             	cmp    $0xa,%eax
  401c17:	75 d9                	jne    401bf2 <Gets+0x16>
  401c19:	c6 03 00             	movb   $0x0,(%rbx)
  401c1c:	b8 00 00 00 00       	mov    $0x0,%eax
  401c21:	e8 6e ff ff ff       	callq  401b94 <save_term>
  401c26:	4c 89 e0             	mov    %r12,%rax
  401c29:	5b                   	pop    %rbx
  401c2a:	5d                   	pop    %rbp
  401c2b:	41 5c                	pop    %r12
  401c2d:	c3                   	retq   

0000000000401c2e <notify_server>:
  401c2e:	53                   	push   %rbx
  401c2f:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401c36:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401c3d:	00 00 
  401c3f:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401c46:	00 
  401c47:	31 c0                	xor    %eax,%eax
  401c49:	83 3d d8 38 20 00 00 	cmpl   $0x0,0x2038d8(%rip)        # 605528 <is_checker>
  401c50:	0f 85 aa 01 00 00    	jne    401e00 <notify_server+0x1d2>
  401c56:	89 fb                	mov    %edi,%ebx
  401c58:	8b 05 e6 44 20 00    	mov    0x2044e6(%rip),%eax        # 606144 <gets_cnt>
  401c5e:	83 c0 64             	add    $0x64,%eax
  401c61:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401c66:	7e 1e                	jle    401c86 <notify_server+0x58>
  401c68:	be 60 35 40 00       	mov    $0x403560,%esi
  401c6d:	bf 01 00 00 00       	mov    $0x1,%edi
  401c72:	b8 00 00 00 00       	mov    $0x0,%eax
  401c77:	e8 a4 f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401c7c:	bf 01 00 00 00       	mov    $0x1,%edi
  401c81:	e8 ea f1 ff ff       	callq  400e70 <exit@plt>
  401c86:	0f be 05 bb 44 20 00 	movsbl 0x2044bb(%rip),%eax        # 606148 <target_prefix>
  401c8d:	83 3d 14 38 20 00 00 	cmpl   $0x0,0x203814(%rip)        # 6054a8 <notify>
  401c94:	74 08                	je     401c9e <notify_server+0x70>
  401c96:	8b 15 84 38 20 00    	mov    0x203884(%rip),%edx        # 605520 <authkey>
  401c9c:	eb 05                	jmp    401ca3 <notify_server+0x75>
  401c9e:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401ca3:	85 db                	test   %ebx,%ebx
  401ca5:	74 08                	je     401caf <notify_server+0x81>
  401ca7:	41 b9 41 34 40 00    	mov    $0x403441,%r9d
  401cad:	eb 06                	jmp    401cb5 <notify_server+0x87>
  401caf:	41 b9 46 34 40 00    	mov    $0x403446,%r9d
  401cb5:	68 40 55 60 00       	pushq  $0x605540
  401cba:	56                   	push   %rsi
  401cbb:	50                   	push   %rax
  401cbc:	52                   	push   %rdx
  401cbd:	44 8b 05 a4 34 20 00 	mov    0x2034a4(%rip),%r8d        # 605168 <target_id>
  401cc4:	b9 4b 34 40 00       	mov    $0x40344b,%ecx
  401cc9:	ba 00 20 00 00       	mov    $0x2000,%edx
  401cce:	be 01 00 00 00       	mov    $0x1,%esi
  401cd3:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401cd8:	b8 00 00 00 00       	mov    $0x0,%eax
  401cdd:	e8 be f1 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401ce2:	48 83 c4 20          	add    $0x20,%rsp
  401ce6:	83 3d bb 37 20 00 00 	cmpl   $0x0,0x2037bb(%rip)        # 6054a8 <notify>
  401ced:	0f 84 81 00 00 00    	je     401d74 <notify_server+0x146>
  401cf3:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401cfa:	00 
  401cfb:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401d01:	48 89 e1             	mov    %rsp,%rcx
  401d04:	48 8b 15 65 34 20 00 	mov    0x203465(%rip),%rdx        # 605170 <lab>
  401d0b:	48 8b 35 66 34 20 00 	mov    0x203466(%rip),%rsi        # 605178 <course>
  401d12:	48 8b 3d 47 34 20 00 	mov    0x203447(%rip),%rdi        # 605160 <user_id>
  401d19:	e8 0e 11 00 00       	callq  402e2c <driver_post>
  401d1e:	85 c0                	test   %eax,%eax
  401d20:	79 26                	jns    401d48 <notify_server+0x11a>
  401d22:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401d29:	00 
  401d2a:	be 67 34 40 00       	mov    $0x403467,%esi
  401d2f:	bf 01 00 00 00       	mov    $0x1,%edi
  401d34:	b8 00 00 00 00       	mov    $0x0,%eax
  401d39:	e8 e2 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d3e:	bf 01 00 00 00       	mov    $0x1,%edi
  401d43:	e8 28 f1 ff ff       	callq  400e70 <exit@plt>
  401d48:	85 db                	test   %ebx,%ebx
  401d4a:	74 19                	je     401d65 <notify_server+0x137>
  401d4c:	bf 90 35 40 00       	mov    $0x403590,%edi
  401d51:	e8 9a ef ff ff       	callq  400cf0 <puts@plt>
  401d56:	bf 73 34 40 00       	mov    $0x403473,%edi
  401d5b:	e8 90 ef ff ff       	callq  400cf0 <puts@plt>
  401d60:	e9 9b 00 00 00       	jmpq   401e00 <notify_server+0x1d2>
  401d65:	bf 7d 34 40 00       	mov    $0x40347d,%edi
  401d6a:	e8 81 ef ff ff       	callq  400cf0 <puts@plt>
  401d6f:	e9 8c 00 00 00       	jmpq   401e00 <notify_server+0x1d2>
  401d74:	85 db                	test   %ebx,%ebx
  401d76:	74 07                	je     401d7f <notify_server+0x151>
  401d78:	ba 41 34 40 00       	mov    $0x403441,%edx
  401d7d:	eb 05                	jmp    401d84 <notify_server+0x156>
  401d7f:	ba 46 34 40 00       	mov    $0x403446,%edx
  401d84:	be c8 35 40 00       	mov    $0x4035c8,%esi
  401d89:	bf 01 00 00 00       	mov    $0x1,%edi
  401d8e:	b8 00 00 00 00       	mov    $0x0,%eax
  401d93:	e8 88 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401d98:	48 8b 15 c1 33 20 00 	mov    0x2033c1(%rip),%rdx        # 605160 <user_id>
  401d9f:	be 84 34 40 00       	mov    $0x403484,%esi
  401da4:	bf 01 00 00 00       	mov    $0x1,%edi
  401da9:	b8 00 00 00 00       	mov    $0x0,%eax
  401dae:	e8 6d f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401db3:	48 8b 15 be 33 20 00 	mov    0x2033be(%rip),%rdx        # 605178 <course>
  401dba:	be 91 34 40 00       	mov    $0x403491,%esi
  401dbf:	bf 01 00 00 00       	mov    $0x1,%edi
  401dc4:	b8 00 00 00 00       	mov    $0x0,%eax
  401dc9:	e8 52 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401dce:	48 8b 15 9b 33 20 00 	mov    0x20339b(%rip),%rdx        # 605170 <lab>
  401dd5:	be 9d 34 40 00       	mov    $0x40349d,%esi
  401dda:	bf 01 00 00 00       	mov    $0x1,%edi
  401ddf:	b8 00 00 00 00       	mov    $0x0,%eax
  401de4:	e8 37 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401de9:	48 89 e2             	mov    %rsp,%rdx
  401dec:	be a6 34 40 00       	mov    $0x4034a6,%esi
  401df1:	bf 01 00 00 00       	mov    $0x1,%edi
  401df6:	b8 00 00 00 00       	mov    $0x0,%eax
  401dfb:	e8 20 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401e00:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401e07:	00 
  401e08:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401e0f:	00 00 
  401e11:	74 05                	je     401e18 <notify_server+0x1ea>
  401e13:	e8 f8 ee ff ff       	callq  400d10 <__stack_chk_fail@plt>
  401e18:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401e1f:	5b                   	pop    %rbx
  401e20:	c3                   	retq   

0000000000401e21 <validate>:
  401e21:	53                   	push   %rbx
  401e22:	89 fb                	mov    %edi,%ebx
  401e24:	83 3d fd 36 20 00 00 	cmpl   $0x0,0x2036fd(%rip)        # 605528 <is_checker>
  401e2b:	74 6b                	je     401e98 <validate+0x77>
  401e2d:	39 3d e9 36 20 00    	cmp    %edi,0x2036e9(%rip)        # 60551c <vlevel>
  401e33:	74 14                	je     401e49 <validate+0x28>
  401e35:	bf b2 34 40 00       	mov    $0x4034b2,%edi
  401e3a:	e8 b1 ee ff ff       	callq  400cf0 <puts@plt>
  401e3f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e44:	e8 5e fd ff ff       	callq  401ba7 <check_fail>
  401e49:	8b 15 c9 36 20 00    	mov    0x2036c9(%rip),%edx        # 605518 <check_level>
  401e4f:	39 d7                	cmp    %edx,%edi
  401e51:	74 20                	je     401e73 <validate+0x52>
  401e53:	89 f9                	mov    %edi,%ecx
  401e55:	be f0 35 40 00       	mov    $0x4035f0,%esi
  401e5a:	bf 01 00 00 00       	mov    $0x1,%edi
  401e5f:	b8 00 00 00 00       	mov    $0x0,%eax
  401e64:	e8 b7 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e69:	b8 00 00 00 00       	mov    $0x0,%eax
  401e6e:	e8 34 fd ff ff       	callq  401ba7 <check_fail>
  401e73:	0f be 15 ce 42 20 00 	movsbl 0x2042ce(%rip),%edx        # 606148 <target_prefix>
  401e7a:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401e80:	89 f9                	mov    %edi,%ecx
  401e82:	be d0 34 40 00       	mov    $0x4034d0,%esi
  401e87:	bf 01 00 00 00       	mov    $0x1,%edi
  401e8c:	b8 00 00 00 00       	mov    $0x0,%eax
  401e91:	e8 8a ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e96:	eb 49                	jmp    401ee1 <validate+0xc0>
  401e98:	3b 3d 7e 36 20 00    	cmp    0x20367e(%rip),%edi        # 60551c <vlevel>
  401e9e:	74 18                	je     401eb8 <validate+0x97>
  401ea0:	bf b2 34 40 00       	mov    $0x4034b2,%edi
  401ea5:	e8 46 ee ff ff       	callq  400cf0 <puts@plt>
  401eaa:	89 de                	mov    %ebx,%esi
  401eac:	bf 00 00 00 00       	mov    $0x0,%edi
  401eb1:	e8 78 fd ff ff       	callq  401c2e <notify_server>
  401eb6:	eb 29                	jmp    401ee1 <validate+0xc0>
  401eb8:	0f be 0d 89 42 20 00 	movsbl 0x204289(%rip),%ecx        # 606148 <target_prefix>
  401ebf:	89 fa                	mov    %edi,%edx
  401ec1:	be 18 36 40 00       	mov    $0x403618,%esi
  401ec6:	bf 01 00 00 00       	mov    $0x1,%edi
  401ecb:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed0:	e8 4b ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ed5:	89 de                	mov    %ebx,%esi
  401ed7:	bf 01 00 00 00       	mov    $0x1,%edi
  401edc:	e8 4d fd ff ff       	callq  401c2e <notify_server>
  401ee1:	5b                   	pop    %rbx
  401ee2:	c3                   	retq   

0000000000401ee3 <fail>:
  401ee3:	48 83 ec 08          	sub    $0x8,%rsp
  401ee7:	83 3d 3a 36 20 00 00 	cmpl   $0x0,0x20363a(%rip)        # 605528 <is_checker>
  401eee:	74 0a                	je     401efa <fail+0x17>
  401ef0:	b8 00 00 00 00       	mov    $0x0,%eax
  401ef5:	e8 ad fc ff ff       	callq  401ba7 <check_fail>
  401efa:	89 fe                	mov    %edi,%esi
  401efc:	bf 00 00 00 00       	mov    $0x0,%edi
  401f01:	e8 28 fd ff ff       	callq  401c2e <notify_server>
  401f06:	48 83 c4 08          	add    $0x8,%rsp
  401f0a:	c3                   	retq   

0000000000401f0b <bushandler>:
  401f0b:	48 83 ec 08          	sub    $0x8,%rsp
  401f0f:	83 3d 12 36 20 00 00 	cmpl   $0x0,0x203612(%rip)        # 605528 <is_checker>
  401f16:	74 14                	je     401f2c <bushandler+0x21>
  401f18:	bf e5 34 40 00       	mov    $0x4034e5,%edi
  401f1d:	e8 ce ed ff ff       	callq  400cf0 <puts@plt>
  401f22:	b8 00 00 00 00       	mov    $0x0,%eax
  401f27:	e8 7b fc ff ff       	callq  401ba7 <check_fail>
  401f2c:	bf 50 36 40 00       	mov    $0x403650,%edi
  401f31:	e8 ba ed ff ff       	callq  400cf0 <puts@plt>
  401f36:	bf ef 34 40 00       	mov    $0x4034ef,%edi
  401f3b:	e8 b0 ed ff ff       	callq  400cf0 <puts@plt>
  401f40:	be 00 00 00 00       	mov    $0x0,%esi
  401f45:	bf 00 00 00 00       	mov    $0x0,%edi
  401f4a:	e8 df fc ff ff       	callq  401c2e <notify_server>
  401f4f:	bf 01 00 00 00       	mov    $0x1,%edi
  401f54:	e8 17 ef ff ff       	callq  400e70 <exit@plt>

0000000000401f59 <seghandler>:
  401f59:	48 83 ec 08          	sub    $0x8,%rsp
  401f5d:	83 3d c4 35 20 00 00 	cmpl   $0x0,0x2035c4(%rip)        # 605528 <is_checker>
  401f64:	74 14                	je     401f7a <seghandler+0x21>
  401f66:	bf 05 35 40 00       	mov    $0x403505,%edi
  401f6b:	e8 80 ed ff ff       	callq  400cf0 <puts@plt>
  401f70:	b8 00 00 00 00       	mov    $0x0,%eax
  401f75:	e8 2d fc ff ff       	callq  401ba7 <check_fail>
  401f7a:	bf 70 36 40 00       	mov    $0x403670,%edi
  401f7f:	e8 6c ed ff ff       	callq  400cf0 <puts@plt>
  401f84:	bf ef 34 40 00       	mov    $0x4034ef,%edi
  401f89:	e8 62 ed ff ff       	callq  400cf0 <puts@plt>
  401f8e:	be 00 00 00 00       	mov    $0x0,%esi
  401f93:	bf 00 00 00 00       	mov    $0x0,%edi
  401f98:	e8 91 fc ff ff       	callq  401c2e <notify_server>
  401f9d:	bf 01 00 00 00       	mov    $0x1,%edi
  401fa2:	e8 c9 ee ff ff       	callq  400e70 <exit@plt>

0000000000401fa7 <illegalhandler>:
  401fa7:	48 83 ec 08          	sub    $0x8,%rsp
  401fab:	83 3d 76 35 20 00 00 	cmpl   $0x0,0x203576(%rip)        # 605528 <is_checker>
  401fb2:	74 14                	je     401fc8 <illegalhandler+0x21>
  401fb4:	bf 18 35 40 00       	mov    $0x403518,%edi
  401fb9:	e8 32 ed ff ff       	callq  400cf0 <puts@plt>
  401fbe:	b8 00 00 00 00       	mov    $0x0,%eax
  401fc3:	e8 df fb ff ff       	callq  401ba7 <check_fail>
  401fc8:	bf 98 36 40 00       	mov    $0x403698,%edi
  401fcd:	e8 1e ed ff ff       	callq  400cf0 <puts@plt>
  401fd2:	bf ef 34 40 00       	mov    $0x4034ef,%edi
  401fd7:	e8 14 ed ff ff       	callq  400cf0 <puts@plt>
  401fdc:	be 00 00 00 00       	mov    $0x0,%esi
  401fe1:	bf 00 00 00 00       	mov    $0x0,%edi
  401fe6:	e8 43 fc ff ff       	callq  401c2e <notify_server>
  401feb:	bf 01 00 00 00       	mov    $0x1,%edi
  401ff0:	e8 7b ee ff ff       	callq  400e70 <exit@plt>

0000000000401ff5 <sigalrmhandler>:
  401ff5:	48 83 ec 08          	sub    $0x8,%rsp
  401ff9:	83 3d 28 35 20 00 00 	cmpl   $0x0,0x203528(%rip)        # 605528 <is_checker>
  402000:	74 14                	je     402016 <sigalrmhandler+0x21>
  402002:	bf 2c 35 40 00       	mov    $0x40352c,%edi
  402007:	e8 e4 ec ff ff       	callq  400cf0 <puts@plt>
  40200c:	b8 00 00 00 00       	mov    $0x0,%eax
  402011:	e8 91 fb ff ff       	callq  401ba7 <check_fail>
  402016:	ba 05 00 00 00       	mov    $0x5,%edx
  40201b:	be c8 36 40 00       	mov    $0x4036c8,%esi
  402020:	bf 01 00 00 00       	mov    $0x1,%edi
  402025:	b8 00 00 00 00       	mov    $0x0,%eax
  40202a:	e8 f1 ed ff ff       	callq  400e20 <__printf_chk@plt>
  40202f:	be 00 00 00 00       	mov    $0x0,%esi
  402034:	bf 00 00 00 00       	mov    $0x0,%edi
  402039:	e8 f0 fb ff ff       	callq  401c2e <notify_server>
  40203e:	bf 01 00 00 00       	mov    $0x1,%edi
  402043:	e8 28 ee ff ff       	callq  400e70 <exit@plt>

0000000000402048 <launch>:
  402048:	55                   	push   %rbp
  402049:	48 89 e5             	mov    %rsp,%rbp
  40204c:	48 83 ec 10          	sub    $0x10,%rsp
  402050:	48 89 fa             	mov    %rdi,%rdx
  402053:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40205a:	00 00 
  40205c:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402060:	31 c0                	xor    %eax,%eax
  402062:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  402066:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40206a:	48 29 c4             	sub    %rax,%rsp
  40206d:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402072:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  402076:	be f4 00 00 00       	mov    $0xf4,%esi
  40207b:	e8 b0 ec ff ff       	callq  400d30 <memset@plt>
  402080:	48 8b 05 39 34 20 00 	mov    0x203439(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  402087:	48 39 05 82 34 20 00 	cmp    %rax,0x203482(%rip)        # 605510 <infile>
  40208e:	75 14                	jne    4020a4 <launch+0x5c>
  402090:	be 34 35 40 00       	mov    $0x403534,%esi
  402095:	bf 01 00 00 00       	mov    $0x1,%edi
  40209a:	b8 00 00 00 00       	mov    $0x0,%eax
  40209f:	e8 7c ed ff ff       	callq  400e20 <__printf_chk@plt>
  4020a4:	c7 05 6e 34 20 00 00 	movl   $0x0,0x20346e(%rip)        # 60551c <vlevel>
  4020ab:	00 00 00 
  4020ae:	b8 00 00 00 00       	mov    $0x0,%eax
  4020b3:	e8 5b fa ff ff       	callq  401b13 <test>
  4020b8:	83 3d 69 34 20 00 00 	cmpl   $0x0,0x203469(%rip)        # 605528 <is_checker>
  4020bf:	74 14                	je     4020d5 <launch+0x8d>
  4020c1:	bf 41 35 40 00       	mov    $0x403541,%edi
  4020c6:	e8 25 ec ff ff       	callq  400cf0 <puts@plt>
  4020cb:	b8 00 00 00 00       	mov    $0x0,%eax
  4020d0:	e8 d2 fa ff ff       	callq  401ba7 <check_fail>
  4020d5:	bf 4c 35 40 00       	mov    $0x40354c,%edi
  4020da:	e8 11 ec ff ff       	callq  400cf0 <puts@plt>
  4020df:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  4020e3:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  4020ea:	00 00 
  4020ec:	74 05                	je     4020f3 <launch+0xab>
  4020ee:	e8 1d ec ff ff       	callq  400d10 <__stack_chk_fail@plt>
  4020f3:	c9                   	leaveq 
  4020f4:	c3                   	retq   

00000000004020f5 <stable_launch>:
  4020f5:	53                   	push   %rbx
  4020f6:	48 89 3d 0b 34 20 00 	mov    %rdi,0x20340b(%rip)        # 605508 <global_offset>
  4020fd:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402103:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  402109:	b9 32 01 00 00       	mov    $0x132,%ecx
  40210e:	ba 07 00 00 00       	mov    $0x7,%edx
  402113:	be 00 00 10 00       	mov    $0x100000,%esi
  402118:	bf 00 60 58 55       	mov    $0x55586000,%edi
  40211d:	e8 fe eb ff ff       	callq  400d20 <mmap@plt>
  402122:	48 89 c3             	mov    %rax,%rbx
  402125:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40212b:	74 37                	je     402164 <stable_launch+0x6f>
  40212d:	be 00 00 10 00       	mov    $0x100000,%esi
  402132:	48 89 c7             	mov    %rax,%rdi
  402135:	e8 d6 ec ff ff       	callq  400e10 <munmap@plt>
  40213a:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  40213f:	ba 00 37 40 00       	mov    $0x403700,%edx
  402144:	be 01 00 00 00       	mov    $0x1,%esi
  402149:	48 8b 3d 90 33 20 00 	mov    0x203390(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402150:	b8 00 00 00 00       	mov    $0x0,%eax
  402155:	e8 36 ed ff ff       	callq  400e90 <__fprintf_chk@plt>
  40215a:	bf 01 00 00 00       	mov    $0x1,%edi
  40215f:	e8 0c ed ff ff       	callq  400e70 <exit@plt>
  402164:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40216b:	48 89 15 de 3f 20 00 	mov    %rdx,0x203fde(%rip)        # 606150 <stack_top>
  402172:	48 89 e0             	mov    %rsp,%rax
  402175:	48 89 d4             	mov    %rdx,%rsp
  402178:	48 89 c2             	mov    %rax,%rdx
  40217b:	48 89 15 7e 33 20 00 	mov    %rdx,0x20337e(%rip)        # 605500 <global_save_stack>
  402182:	48 8b 3d 7f 33 20 00 	mov    0x20337f(%rip),%rdi        # 605508 <global_offset>
  402189:	e8 ba fe ff ff       	callq  402048 <launch>
  40218e:	48 8b 05 6b 33 20 00 	mov    0x20336b(%rip),%rax        # 605500 <global_save_stack>
  402195:	48 89 c4             	mov    %rax,%rsp
  402198:	be 00 00 10 00       	mov    $0x100000,%esi
  40219d:	48 89 df             	mov    %rbx,%rdi
  4021a0:	e8 6b ec ff ff       	callq  400e10 <munmap@plt>
  4021a5:	5b                   	pop    %rbx
  4021a6:	c3                   	retq   

00000000004021a7 <rio_readinitb>:
  4021a7:	89 37                	mov    %esi,(%rdi)
  4021a9:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4021b0:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4021b4:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4021b8:	c3                   	retq   

00000000004021b9 <sigalrm_handler>:
  4021b9:	48 83 ec 08          	sub    $0x8,%rsp
  4021bd:	b9 00 00 00 00       	mov    $0x0,%ecx
  4021c2:	ba 40 37 40 00       	mov    $0x403740,%edx
  4021c7:	be 01 00 00 00       	mov    $0x1,%esi
  4021cc:	48 8b 3d 0d 33 20 00 	mov    0x20330d(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4021d3:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d8:	e8 b3 ec ff ff       	callq  400e90 <__fprintf_chk@plt>
  4021dd:	bf 01 00 00 00       	mov    $0x1,%edi
  4021e2:	e8 89 ec ff ff       	callq  400e70 <exit@plt>

00000000004021e7 <rio_writen>:
  4021e7:	41 55                	push   %r13
  4021e9:	41 54                	push   %r12
  4021eb:	55                   	push   %rbp
  4021ec:	53                   	push   %rbx
  4021ed:	48 83 ec 08          	sub    $0x8,%rsp
  4021f1:	41 89 fc             	mov    %edi,%r12d
  4021f4:	48 89 f5             	mov    %rsi,%rbp
  4021f7:	49 89 d5             	mov    %rdx,%r13
  4021fa:	48 89 d3             	mov    %rdx,%rbx
  4021fd:	eb 28                	jmp    402227 <rio_writen+0x40>
  4021ff:	48 89 da             	mov    %rbx,%rdx
  402202:	48 89 ee             	mov    %rbp,%rsi
  402205:	44 89 e7             	mov    %r12d,%edi
  402208:	e8 f3 ea ff ff       	callq  400d00 <write@plt>
  40220d:	48 85 c0             	test   %rax,%rax
  402210:	7f 0f                	jg     402221 <rio_writen+0x3a>
  402212:	e8 99 ea ff ff       	callq  400cb0 <__errno_location@plt>
  402217:	83 38 04             	cmpl   $0x4,(%rax)
  40221a:	75 15                	jne    402231 <rio_writen+0x4a>
  40221c:	b8 00 00 00 00       	mov    $0x0,%eax
  402221:	48 29 c3             	sub    %rax,%rbx
  402224:	48 01 c5             	add    %rax,%rbp
  402227:	48 85 db             	test   %rbx,%rbx
  40222a:	75 d3                	jne    4021ff <rio_writen+0x18>
  40222c:	4c 89 e8             	mov    %r13,%rax
  40222f:	eb 07                	jmp    402238 <rio_writen+0x51>
  402231:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402238:	48 83 c4 08          	add    $0x8,%rsp
  40223c:	5b                   	pop    %rbx
  40223d:	5d                   	pop    %rbp
  40223e:	41 5c                	pop    %r12
  402240:	41 5d                	pop    %r13
  402242:	c3                   	retq   

0000000000402243 <rio_read>:
  402243:	41 55                	push   %r13
  402245:	41 54                	push   %r12
  402247:	55                   	push   %rbp
  402248:	53                   	push   %rbx
  402249:	48 83 ec 08          	sub    $0x8,%rsp
  40224d:	48 89 fb             	mov    %rdi,%rbx
  402250:	49 89 f5             	mov    %rsi,%r13
  402253:	49 89 d4             	mov    %rdx,%r12
  402256:	eb 2e                	jmp    402286 <rio_read+0x43>
  402258:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  40225c:	8b 3b                	mov    (%rbx),%edi
  40225e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402263:	48 89 ee             	mov    %rbp,%rsi
  402266:	e8 f5 ea ff ff       	callq  400d60 <read@plt>
  40226b:	89 43 04             	mov    %eax,0x4(%rbx)
  40226e:	85 c0                	test   %eax,%eax
  402270:	79 0c                	jns    40227e <rio_read+0x3b>
  402272:	e8 39 ea ff ff       	callq  400cb0 <__errno_location@plt>
  402277:	83 38 04             	cmpl   $0x4,(%rax)
  40227a:	74 0a                	je     402286 <rio_read+0x43>
  40227c:	eb 37                	jmp    4022b5 <rio_read+0x72>
  40227e:	85 c0                	test   %eax,%eax
  402280:	74 3c                	je     4022be <rio_read+0x7b>
  402282:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  402286:	8b 6b 04             	mov    0x4(%rbx),%ebp
  402289:	85 ed                	test   %ebp,%ebp
  40228b:	7e cb                	jle    402258 <rio_read+0x15>
  40228d:	89 e8                	mov    %ebp,%eax
  40228f:	49 39 c4             	cmp    %rax,%r12
  402292:	77 03                	ja     402297 <rio_read+0x54>
  402294:	44 89 e5             	mov    %r12d,%ebp
  402297:	4c 63 e5             	movslq %ebp,%r12
  40229a:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  40229e:	4c 89 e2             	mov    %r12,%rdx
  4022a1:	4c 89 ef             	mov    %r13,%rdi
  4022a4:	e8 17 eb ff ff       	callq  400dc0 <memcpy@plt>
  4022a9:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4022ad:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4022b0:	4c 89 e0             	mov    %r12,%rax
  4022b3:	eb 0e                	jmp    4022c3 <rio_read+0x80>
  4022b5:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4022bc:	eb 05                	jmp    4022c3 <rio_read+0x80>
  4022be:	b8 00 00 00 00       	mov    $0x0,%eax
  4022c3:	48 83 c4 08          	add    $0x8,%rsp
  4022c7:	5b                   	pop    %rbx
  4022c8:	5d                   	pop    %rbp
  4022c9:	41 5c                	pop    %r12
  4022cb:	41 5d                	pop    %r13
  4022cd:	c3                   	retq   

00000000004022ce <rio_readlineb>:
  4022ce:	41 55                	push   %r13
  4022d0:	41 54                	push   %r12
  4022d2:	55                   	push   %rbp
  4022d3:	53                   	push   %rbx
  4022d4:	48 83 ec 18          	sub    $0x18,%rsp
  4022d8:	49 89 fd             	mov    %rdi,%r13
  4022db:	48 89 f5             	mov    %rsi,%rbp
  4022de:	49 89 d4             	mov    %rdx,%r12
  4022e1:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4022e8:	00 00 
  4022ea:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4022ef:	31 c0                	xor    %eax,%eax
  4022f1:	bb 01 00 00 00       	mov    $0x1,%ebx
  4022f6:	eb 3f                	jmp    402337 <rio_readlineb+0x69>
  4022f8:	ba 01 00 00 00       	mov    $0x1,%edx
  4022fd:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402302:	4c 89 ef             	mov    %r13,%rdi
  402305:	e8 39 ff ff ff       	callq  402243 <rio_read>
  40230a:	83 f8 01             	cmp    $0x1,%eax
  40230d:	75 15                	jne    402324 <rio_readlineb+0x56>
  40230f:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402313:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  402318:	88 55 00             	mov    %dl,0x0(%rbp)
  40231b:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402320:	75 0e                	jne    402330 <rio_readlineb+0x62>
  402322:	eb 1a                	jmp    40233e <rio_readlineb+0x70>
  402324:	85 c0                	test   %eax,%eax
  402326:	75 22                	jne    40234a <rio_readlineb+0x7c>
  402328:	48 83 fb 01          	cmp    $0x1,%rbx
  40232c:	75 13                	jne    402341 <rio_readlineb+0x73>
  40232e:	eb 23                	jmp    402353 <rio_readlineb+0x85>
  402330:	48 83 c3 01          	add    $0x1,%rbx
  402334:	48 89 c5             	mov    %rax,%rbp
  402337:	4c 39 e3             	cmp    %r12,%rbx
  40233a:	72 bc                	jb     4022f8 <rio_readlineb+0x2a>
  40233c:	eb 03                	jmp    402341 <rio_readlineb+0x73>
  40233e:	48 89 c5             	mov    %rax,%rbp
  402341:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402345:	48 89 d8             	mov    %rbx,%rax
  402348:	eb 0e                	jmp    402358 <rio_readlineb+0x8a>
  40234a:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402351:	eb 05                	jmp    402358 <rio_readlineb+0x8a>
  402353:	b8 00 00 00 00       	mov    $0x0,%eax
  402358:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  40235d:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402364:	00 00 
  402366:	74 05                	je     40236d <rio_readlineb+0x9f>
  402368:	e8 a3 e9 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  40236d:	48 83 c4 18          	add    $0x18,%rsp
  402371:	5b                   	pop    %rbx
  402372:	5d                   	pop    %rbp
  402373:	41 5c                	pop    %r12
  402375:	41 5d                	pop    %r13
  402377:	c3                   	retq   

0000000000402378 <urlencode>:
  402378:	41 54                	push   %r12
  40237a:	55                   	push   %rbp
  40237b:	53                   	push   %rbx
  40237c:	48 83 ec 10          	sub    $0x10,%rsp
  402380:	48 89 fb             	mov    %rdi,%rbx
  402383:	48 89 f5             	mov    %rsi,%rbp
  402386:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40238d:	00 00 
  40238f:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402394:	31 c0                	xor    %eax,%eax
  402396:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  40239d:	f2 ae                	repnz scas %es:(%rdi),%al
  40239f:	48 f7 d1             	not    %rcx
  4023a2:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4023a5:	e9 aa 00 00 00       	jmpq   402454 <urlencode+0xdc>
  4023aa:	44 0f b6 03          	movzbl (%rbx),%r8d
  4023ae:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4023b2:	0f 94 c2             	sete   %dl
  4023b5:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4023b9:	0f 94 c0             	sete   %al
  4023bc:	08 c2                	or     %al,%dl
  4023be:	75 24                	jne    4023e4 <urlencode+0x6c>
  4023c0:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4023c4:	74 1e                	je     4023e4 <urlencode+0x6c>
  4023c6:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4023ca:	74 18                	je     4023e4 <urlencode+0x6c>
  4023cc:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4023d0:	3c 09                	cmp    $0x9,%al
  4023d2:	76 10                	jbe    4023e4 <urlencode+0x6c>
  4023d4:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4023d8:	3c 19                	cmp    $0x19,%al
  4023da:	76 08                	jbe    4023e4 <urlencode+0x6c>
  4023dc:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  4023e0:	3c 19                	cmp    $0x19,%al
  4023e2:	77 0a                	ja     4023ee <urlencode+0x76>
  4023e4:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  4023e8:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023ec:	eb 5f                	jmp    40244d <urlencode+0xd5>
  4023ee:	41 80 f8 20          	cmp    $0x20,%r8b
  4023f2:	75 0a                	jne    4023fe <urlencode+0x86>
  4023f4:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  4023f8:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  4023fc:	eb 4f                	jmp    40244d <urlencode+0xd5>
  4023fe:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402402:	3c 5f                	cmp    $0x5f,%al
  402404:	0f 96 c2             	setbe  %dl
  402407:	41 80 f8 09          	cmp    $0x9,%r8b
  40240b:	0f 94 c0             	sete   %al
  40240e:	08 c2                	or     %al,%dl
  402410:	74 50                	je     402462 <urlencode+0xea>
  402412:	45 0f b6 c0          	movzbl %r8b,%r8d
  402416:	b9 f8 37 40 00       	mov    $0x4037f8,%ecx
  40241b:	ba 08 00 00 00       	mov    $0x8,%edx
  402420:	be 01 00 00 00       	mov    $0x1,%esi
  402425:	48 89 e7             	mov    %rsp,%rdi
  402428:	b8 00 00 00 00       	mov    $0x0,%eax
  40242d:	e8 6e ea ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402432:	0f b6 04 24          	movzbl (%rsp),%eax
  402436:	88 45 00             	mov    %al,0x0(%rbp)
  402439:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  40243e:	88 45 01             	mov    %al,0x1(%rbp)
  402441:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  402446:	88 45 02             	mov    %al,0x2(%rbp)
  402449:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  40244d:	48 83 c3 01          	add    $0x1,%rbx
  402451:	44 89 e0             	mov    %r12d,%eax
  402454:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  402458:	85 c0                	test   %eax,%eax
  40245a:	0f 85 4a ff ff ff    	jne    4023aa <urlencode+0x32>
  402460:	eb 05                	jmp    402467 <urlencode+0xef>
  402462:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402467:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  40246c:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402473:	00 00 
  402475:	74 05                	je     40247c <urlencode+0x104>
  402477:	e8 94 e8 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  40247c:	48 83 c4 10          	add    $0x10,%rsp
  402480:	5b                   	pop    %rbx
  402481:	5d                   	pop    %rbp
  402482:	41 5c                	pop    %r12
  402484:	c3                   	retq   

0000000000402485 <submitr>:
  402485:	41 57                	push   %r15
  402487:	41 56                	push   %r14
  402489:	41 55                	push   %r13
  40248b:	41 54                	push   %r12
  40248d:	55                   	push   %rbp
  40248e:	53                   	push   %rbx
  40248f:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  402496:	49 89 fd             	mov    %rdi,%r13
  402499:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  40249d:	48 89 14 24          	mov    %rdx,(%rsp)
  4024a1:	49 89 ce             	mov    %rcx,%r14
  4024a4:	4d 89 c7             	mov    %r8,%r15
  4024a7:	4d 89 cc             	mov    %r9,%r12
  4024aa:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  4024b1:	00 
  4024b2:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024b9:	00 00 
  4024bb:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  4024c2:	00 
  4024c3:	31 c0                	xor    %eax,%eax
  4024c5:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  4024cc:	00 
  4024cd:	ba 00 00 00 00       	mov    $0x0,%edx
  4024d2:	be 01 00 00 00       	mov    $0x1,%esi
  4024d7:	bf 02 00 00 00       	mov    $0x2,%edi
  4024dc:	e8 cf e9 ff ff       	callq  400eb0 <socket@plt>
  4024e1:	85 c0                	test   %eax,%eax
  4024e3:	79 4e                	jns    402533 <submitr+0xae>
  4024e5:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4024ec:	3a 20 43 
  4024ef:	48 89 03             	mov    %rax,(%rbx)
  4024f2:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4024f9:	20 75 6e 
  4024fc:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402500:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402507:	74 6f 20 
  40250a:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40250e:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402515:	65 20 73 
  402518:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40251c:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402523:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  402529:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40252e:	e9 b3 06 00 00       	jmpq   402be6 <submitr+0x761>
  402533:	89 c5                	mov    %eax,%ebp
  402535:	4c 89 ef             	mov    %r13,%rdi
  402538:	e8 53 e8 ff ff       	callq  400d90 <gethostbyname@plt>
  40253d:	48 85 c0             	test   %rax,%rax
  402540:	75 75                	jne    4025b7 <submitr+0x132>
  402542:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402549:	3a 20 44 
  40254c:	48 89 03             	mov    %rax,(%rbx)
  40254f:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402556:	20 75 6e 
  402559:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40255d:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402564:	74 6f 20 
  402567:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40256b:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402572:	76 65 20 
  402575:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402579:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  402580:	61 62 20 
  402583:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402587:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  40258e:	72 20 61 
  402591:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402595:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  40259c:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  4025a2:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  4025a6:	89 ef                	mov    %ebp,%edi
  4025a8:	e8 a3 e7 ff ff       	callq  400d50 <close@plt>
  4025ad:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4025b2:	e9 2f 06 00 00       	jmpq   402be6 <submitr+0x761>
  4025b7:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4025be:	00 00 
  4025c0:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  4025c7:	00 00 
  4025c9:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  4025d0:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4025d4:	48 8b 40 18          	mov    0x18(%rax),%rax
  4025d8:	48 8b 30             	mov    (%rax),%rsi
  4025db:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  4025e0:	b9 0c 00 00 00       	mov    $0xc,%ecx
  4025e5:	e8 b6 e7 ff ff       	callq  400da0 <__memmove_chk@plt>
  4025ea:	0f b7 44 24 0c       	movzwl 0xc(%rsp),%eax
  4025ef:	66 c1 c8 08          	ror    $0x8,%ax
  4025f3:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  4025f8:	ba 10 00 00 00       	mov    $0x10,%edx
  4025fd:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  402602:	89 ef                	mov    %ebp,%edi
  402604:	e8 77 e8 ff ff       	callq  400e80 <connect@plt>
  402609:	85 c0                	test   %eax,%eax
  40260b:	79 67                	jns    402674 <submitr+0x1ef>
  40260d:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402614:	3a 20 55 
  402617:	48 89 03             	mov    %rax,(%rbx)
  40261a:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402621:	20 74 6f 
  402624:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402628:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  40262f:	65 63 74 
  402632:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402636:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  40263d:	68 65 20 
  402640:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402644:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  40264b:	61 62 20 
  40264e:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402652:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  402659:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  40265f:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402663:	89 ef                	mov    %ebp,%edi
  402665:	e8 e6 e6 ff ff       	callq  400d50 <close@plt>
  40266a:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40266f:	e9 72 05 00 00       	jmpq   402be6 <submitr+0x761>
  402674:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40267b:	b8 00 00 00 00       	mov    $0x0,%eax
  402680:	48 89 f1             	mov    %rsi,%rcx
  402683:	4c 89 e7             	mov    %r12,%rdi
  402686:	f2 ae                	repnz scas %es:(%rdi),%al
  402688:	48 f7 d1             	not    %rcx
  40268b:	48 89 ca             	mov    %rcx,%rdx
  40268e:	48 89 f1             	mov    %rsi,%rcx
  402691:	48 8b 3c 24          	mov    (%rsp),%rdi
  402695:	f2 ae                	repnz scas %es:(%rdi),%al
  402697:	48 f7 d1             	not    %rcx
  40269a:	49 89 c8             	mov    %rcx,%r8
  40269d:	48 89 f1             	mov    %rsi,%rcx
  4026a0:	4c 89 f7             	mov    %r14,%rdi
  4026a3:	f2 ae                	repnz scas %es:(%rdi),%al
  4026a5:	48 f7 d1             	not    %rcx
  4026a8:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4026ad:	48 89 f1             	mov    %rsi,%rcx
  4026b0:	4c 89 ff             	mov    %r15,%rdi
  4026b3:	f2 ae                	repnz scas %es:(%rdi),%al
  4026b5:	48 89 c8             	mov    %rcx,%rax
  4026b8:	48 f7 d0             	not    %rax
  4026bb:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4026c0:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4026c5:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4026cc:	00 
  4026cd:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4026d3:	76 72                	jbe    402747 <submitr+0x2c2>
  4026d5:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  4026dc:	3a 20 52 
  4026df:	48 89 03             	mov    %rax,(%rbx)
  4026e2:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4026e9:	20 73 74 
  4026ec:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4026f0:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  4026f7:	74 6f 6f 
  4026fa:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4026fe:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402705:	65 2e 20 
  402708:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40270c:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402713:	61 73 65 
  402716:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40271a:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402721:	49 54 52 
  402724:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402728:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  40272f:	55 46 00 
  402732:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402736:	89 ef                	mov    %ebp,%edi
  402738:	e8 13 e6 ff ff       	callq  400d50 <close@plt>
  40273d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402742:	e9 9f 04 00 00       	jmpq   402be6 <submitr+0x761>
  402747:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  40274e:	00 
  40274f:	b9 00 04 00 00       	mov    $0x400,%ecx
  402754:	b8 00 00 00 00       	mov    $0x0,%eax
  402759:	48 89 f7             	mov    %rsi,%rdi
  40275c:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  40275f:	4c 89 e7             	mov    %r12,%rdi
  402762:	e8 11 fc ff ff       	callq  402378 <urlencode>
  402767:	85 c0                	test   %eax,%eax
  402769:	0f 89 8a 00 00 00    	jns    4027f9 <submitr+0x374>
  40276f:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402776:	3a 20 52 
  402779:	48 89 03             	mov    %rax,(%rbx)
  40277c:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  402783:	20 73 74 
  402786:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40278a:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  402791:	63 6f 6e 
  402794:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402798:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  40279f:	20 61 6e 
  4027a2:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4027a6:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4027ad:	67 61 6c 
  4027b0:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4027b4:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4027bb:	6e 70 72 
  4027be:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4027c2:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4027c9:	6c 65 20 
  4027cc:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4027d0:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4027d7:	63 74 65 
  4027da:	48 89 43 38          	mov    %rax,0x38(%rbx)
  4027de:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  4027e4:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  4027e8:	89 ef                	mov    %ebp,%edi
  4027ea:	e8 61 e5 ff ff       	callq  400d50 <close@plt>
  4027ef:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4027f4:	e9 ed 03 00 00       	jmpq   402be6 <submitr+0x761>
  4027f9:	4c 8d a4 24 40 20 00 	lea    0x2040(%rsp),%r12
  402800:	00 
  402801:	48 83 ec 08          	sub    $0x8,%rsp
  402805:	41 55                	push   %r13
  402807:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
  40280e:	00 
  40280f:	50                   	push   %rax
  402810:	41 56                	push   %r14
  402812:	4d 89 f9             	mov    %r15,%r9
  402815:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  40281a:	b9 68 37 40 00       	mov    $0x403768,%ecx
  40281f:	ba 00 20 00 00       	mov    $0x2000,%edx
  402824:	be 01 00 00 00       	mov    $0x1,%esi
  402829:	4c 89 e7             	mov    %r12,%rdi
  40282c:	b8 00 00 00 00       	mov    $0x0,%eax
  402831:	e8 6a e6 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402836:	b8 00 00 00 00       	mov    $0x0,%eax
  40283b:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402842:	4c 89 e7             	mov    %r12,%rdi
  402845:	f2 ae                	repnz scas %es:(%rdi),%al
  402847:	48 f7 d1             	not    %rcx
  40284a:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  40284e:	48 83 c4 20          	add    $0x20,%rsp
  402852:	4c 89 e6             	mov    %r12,%rsi
  402855:	89 ef                	mov    %ebp,%edi
  402857:	e8 8b f9 ff ff       	callq  4021e7 <rio_writen>
  40285c:	48 85 c0             	test   %rax,%rax
  40285f:	79 6b                	jns    4028cc <submitr+0x447>
  402861:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402868:	3a 20 43 
  40286b:	48 89 03             	mov    %rax,(%rbx)
  40286e:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402875:	20 75 6e 
  402878:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40287c:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402883:	74 6f 20 
  402886:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40288a:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  402891:	20 74 6f 
  402894:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402898:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  40289f:	41 75 74 
  4028a2:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4028a6:	48 b8 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rax
  4028ad:	73 65 72 
  4028b0:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4028b4:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  4028bb:	89 ef                	mov    %ebp,%edi
  4028bd:	e8 8e e4 ff ff       	callq  400d50 <close@plt>
  4028c2:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4028c7:	e9 1a 03 00 00       	jmpq   402be6 <submitr+0x761>
  4028cc:	89 ee                	mov    %ebp,%esi
  4028ce:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4028d3:	e8 cf f8 ff ff       	callq  4021a7 <rio_readinitb>
  4028d8:	ba 00 20 00 00       	mov    $0x2000,%edx
  4028dd:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4028e4:	00 
  4028e5:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4028ea:	e8 df f9 ff ff       	callq  4022ce <rio_readlineb>
  4028ef:	48 85 c0             	test   %rax,%rax
  4028f2:	7f 7f                	jg     402973 <submitr+0x4ee>
  4028f4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4028fb:	3a 20 43 
  4028fe:	48 89 03             	mov    %rax,(%rbx)
  402901:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402908:	20 75 6e 
  40290b:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40290f:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402916:	74 6f 20 
  402919:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40291d:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402924:	66 69 72 
  402927:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40292b:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402932:	61 64 65 
  402935:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402939:	48 b8 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rax
  402940:	6d 20 41 
  402943:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402947:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  40294e:	62 20 73 
  402951:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402955:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  40295c:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  402962:	89 ef                	mov    %ebp,%edi
  402964:	e8 e7 e3 ff ff       	callq  400d50 <close@plt>
  402969:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40296e:	e9 73 02 00 00       	jmpq   402be6 <submitr+0x761>
  402973:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  40297a:	00 
  40297b:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  402980:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  402987:	00 
  402988:	be ff 37 40 00       	mov    $0x4037ff,%esi
  40298d:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402994:	00 
  402995:	b8 00 00 00 00       	mov    $0x0,%eax
  40299a:	e8 61 e4 ff ff       	callq  400e00 <__isoc99_sscanf@plt>
  40299f:	e9 92 00 00 00       	jmpq   402a36 <submitr+0x5b1>
  4029a4:	ba 00 20 00 00       	mov    $0x2000,%edx
  4029a9:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  4029b0:	00 
  4029b1:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4029b6:	e8 13 f9 ff ff       	callq  4022ce <rio_readlineb>
  4029bb:	48 85 c0             	test   %rax,%rax
  4029be:	7f 76                	jg     402a36 <submitr+0x5b1>
  4029c0:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  4029c7:	3a 20 43 
  4029ca:	48 89 03             	mov    %rax,(%rbx)
  4029cd:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  4029d4:	20 75 6e 
  4029d7:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029db:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029e2:	74 6f 20 
  4029e5:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4029e9:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  4029f0:	68 65 61 
  4029f3:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4029f7:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  4029fe:	66 72 6f 
  402a01:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402a05:	48 b8 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rax
  402a0c:	6f 6c 61 
  402a0f:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a13:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402a1a:	76 65 72 
  402a1d:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a21:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  402a25:	89 ef                	mov    %ebp,%edi
  402a27:	e8 24 e3 ff ff       	callq  400d50 <close@plt>
  402a2c:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a31:	e9 b0 01 00 00       	jmpq   402be6 <submitr+0x761>
  402a36:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  402a3d:	00 
  402a3e:	b8 0d 00 00 00       	mov    $0xd,%eax
  402a43:	29 d0                	sub    %edx,%eax
  402a45:	75 1b                	jne    402a62 <submitr+0x5dd>
  402a47:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  402a4e:	00 
  402a4f:	b8 0a 00 00 00       	mov    $0xa,%eax
  402a54:	29 d0                	sub    %edx,%eax
  402a56:	75 0a                	jne    402a62 <submitr+0x5dd>
  402a58:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402a5f:	00 
  402a60:	f7 d8                	neg    %eax
  402a62:	85 c0                	test   %eax,%eax
  402a64:	0f 85 3a ff ff ff    	jne    4029a4 <submitr+0x51f>
  402a6a:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a6f:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a76:	00 
  402a77:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402a7c:	e8 4d f8 ff ff       	callq  4022ce <rio_readlineb>
  402a81:	48 85 c0             	test   %rax,%rax
  402a84:	0f 8f 80 00 00 00    	jg     402b0a <submitr+0x685>
  402a8a:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a91:	3a 20 43 
  402a94:	48 89 03             	mov    %rax,(%rbx)
  402a97:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a9e:	20 75 6e 
  402aa1:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402aa5:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402aac:	74 6f 20 
  402aaf:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402ab3:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402aba:	73 74 61 
  402abd:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402ac1:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402ac8:	65 73 73 
  402acb:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402acf:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402ad6:	72 6f 6d 
  402ad9:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402add:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402ae4:	6c 61 62 
  402ae7:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402aeb:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402af2:	65 72 00 
  402af5:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402af9:	89 ef                	mov    %ebp,%edi
  402afb:	e8 50 e2 ff ff       	callq  400d50 <close@plt>
  402b00:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b05:	e9 dc 00 00 00       	jmpq   402be6 <submitr+0x761>
  402b0a:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402b0f:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402b16:	74 37                	je     402b4f <submitr+0x6ca>
  402b18:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402b1f:	00 
  402b20:	b9 c8 37 40 00       	mov    $0x4037c8,%ecx
  402b25:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402b2c:	be 01 00 00 00       	mov    $0x1,%esi
  402b31:	48 89 df             	mov    %rbx,%rdi
  402b34:	b8 00 00 00 00       	mov    $0x0,%eax
  402b39:	e8 62 e3 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402b3e:	89 ef                	mov    %ebp,%edi
  402b40:	e8 0b e2 ff ff       	callq  400d50 <close@plt>
  402b45:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b4a:	e9 97 00 00 00       	jmpq   402be6 <submitr+0x761>
  402b4f:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402b56:	00 
  402b57:	48 89 df             	mov    %rbx,%rdi
  402b5a:	e8 81 e1 ff ff       	callq  400ce0 <strcpy@plt>
  402b5f:	89 ef                	mov    %ebp,%edi
  402b61:	e8 ea e1 ff ff       	callq  400d50 <close@plt>
  402b66:	0f b6 03             	movzbl (%rbx),%eax
  402b69:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402b6e:	29 c2                	sub    %eax,%edx
  402b70:	75 22                	jne    402b94 <submitr+0x70f>
  402b72:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402b76:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402b7b:	29 c8                	sub    %ecx,%eax
  402b7d:	75 17                	jne    402b96 <submitr+0x711>
  402b7f:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402b83:	b8 0a 00 00 00       	mov    $0xa,%eax
  402b88:	29 c8                	sub    %ecx,%eax
  402b8a:	75 0a                	jne    402b96 <submitr+0x711>
  402b8c:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402b90:	f7 d8                	neg    %eax
  402b92:	eb 02                	jmp    402b96 <submitr+0x711>
  402b94:	89 d0                	mov    %edx,%eax
  402b96:	85 c0                	test   %eax,%eax
  402b98:	74 40                	je     402bda <submitr+0x755>
  402b9a:	bf 10 38 40 00       	mov    $0x403810,%edi
  402b9f:	b9 05 00 00 00       	mov    $0x5,%ecx
  402ba4:	48 89 de             	mov    %rbx,%rsi
  402ba7:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402ba9:	0f 97 c0             	seta   %al
  402bac:	0f 92 c1             	setb   %cl
  402baf:	29 c8                	sub    %ecx,%eax
  402bb1:	0f be c0             	movsbl %al,%eax
  402bb4:	85 c0                	test   %eax,%eax
  402bb6:	74 2e                	je     402be6 <submitr+0x761>
  402bb8:	85 d2                	test   %edx,%edx
  402bba:	75 13                	jne    402bcf <submitr+0x74a>
  402bbc:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402bc0:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402bc5:	29 c2                	sub    %eax,%edx
  402bc7:	75 06                	jne    402bcf <submitr+0x74a>
  402bc9:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402bcd:	f7 da                	neg    %edx
  402bcf:	85 d2                	test   %edx,%edx
  402bd1:	75 0e                	jne    402be1 <submitr+0x75c>
  402bd3:	b8 00 00 00 00       	mov    $0x0,%eax
  402bd8:	eb 0c                	jmp    402be6 <submitr+0x761>
  402bda:	b8 00 00 00 00       	mov    $0x0,%eax
  402bdf:	eb 05                	jmp    402be6 <submitr+0x761>
  402be1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402be6:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402bed:	00 
  402bee:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402bf5:	00 00 
  402bf7:	74 05                	je     402bfe <submitr+0x779>
  402bf9:	e8 12 e1 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402bfe:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402c05:	5b                   	pop    %rbx
  402c06:	5d                   	pop    %rbp
  402c07:	41 5c                	pop    %r12
  402c09:	41 5d                	pop    %r13
  402c0b:	41 5e                	pop    %r14
  402c0d:	41 5f                	pop    %r15
  402c0f:	c3                   	retq   

0000000000402c10 <init_timeout>:
  402c10:	85 ff                	test   %edi,%edi
  402c12:	74 23                	je     402c37 <init_timeout+0x27>
  402c14:	53                   	push   %rbx
  402c15:	89 fb                	mov    %edi,%ebx
  402c17:	85 ff                	test   %edi,%edi
  402c19:	79 05                	jns    402c20 <init_timeout+0x10>
  402c1b:	bb 00 00 00 00       	mov    $0x0,%ebx
  402c20:	be b9 21 40 00       	mov    $0x4021b9,%esi
  402c25:	bf 0e 00 00 00       	mov    $0xe,%edi
  402c2a:	e8 51 e1 ff ff       	callq  400d80 <signal@plt>
  402c2f:	89 df                	mov    %ebx,%edi
  402c31:	e8 0a e1 ff ff       	callq  400d40 <alarm@plt>
  402c36:	5b                   	pop    %rbx
  402c37:	f3 c3                	repz retq 

0000000000402c39 <init_driver>:
  402c39:	55                   	push   %rbp
  402c3a:	53                   	push   %rbx
  402c3b:	48 83 ec 28          	sub    $0x28,%rsp
  402c3f:	48 89 fd             	mov    %rdi,%rbp
  402c42:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402c49:	00 00 
  402c4b:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402c50:	31 c0                	xor    %eax,%eax
  402c52:	be 01 00 00 00       	mov    $0x1,%esi
  402c57:	bf 0d 00 00 00       	mov    $0xd,%edi
  402c5c:	e8 1f e1 ff ff       	callq  400d80 <signal@plt>
  402c61:	be 01 00 00 00       	mov    $0x1,%esi
  402c66:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c6b:	e8 10 e1 ff ff       	callq  400d80 <signal@plt>
  402c70:	be 01 00 00 00       	mov    $0x1,%esi
  402c75:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402c7a:	e8 01 e1 ff ff       	callq  400d80 <signal@plt>
  402c7f:	ba 00 00 00 00       	mov    $0x0,%edx
  402c84:	be 01 00 00 00       	mov    $0x1,%esi
  402c89:	bf 02 00 00 00       	mov    $0x2,%edi
  402c8e:	e8 1d e2 ff ff       	callq  400eb0 <socket@plt>
  402c93:	85 c0                	test   %eax,%eax
  402c95:	79 4f                	jns    402ce6 <init_driver+0xad>
  402c97:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402c9e:	3a 20 43 
  402ca1:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402ca5:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402cac:	20 75 6e 
  402caf:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402cb3:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402cba:	74 6f 20 
  402cbd:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402cc1:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402cc8:	65 20 73 
  402ccb:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402ccf:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402cd6:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402cdc:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402ce1:	e9 2a 01 00 00       	jmpq   402e10 <init_driver+0x1d7>
  402ce6:	89 c3                	mov    %eax,%ebx
  402ce8:	bf 35 33 40 00       	mov    $0x403335,%edi
  402ced:	e8 9e e0 ff ff       	callq  400d90 <gethostbyname@plt>
  402cf2:	48 85 c0             	test   %rax,%rax
  402cf5:	75 68                	jne    402d5f <init_driver+0x126>
  402cf7:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402cfe:	3a 20 44 
  402d01:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402d05:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402d0c:	20 75 6e 
  402d0f:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402d13:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402d1a:	74 6f 20 
  402d1d:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402d21:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402d28:	76 65 20 
  402d2b:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402d2f:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402d36:	72 20 61 
  402d39:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402d3d:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402d44:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402d4a:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402d4e:	89 df                	mov    %ebx,%edi
  402d50:	e8 fb df ff ff       	callq  400d50 <close@plt>
  402d55:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d5a:	e9 b1 00 00 00       	jmpq   402e10 <init_driver+0x1d7>
  402d5f:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402d66:	00 
  402d67:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402d6e:	00 00 
  402d70:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402d76:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402d7a:	48 8b 40 18          	mov    0x18(%rax),%rax
  402d7e:	48 8b 30             	mov    (%rax),%rsi
  402d81:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402d86:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402d8b:	e8 10 e0 ff ff       	callq  400da0 <__memmove_chk@plt>
  402d90:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  402d97:	ba 10 00 00 00       	mov    $0x10,%edx
  402d9c:	48 89 e6             	mov    %rsp,%rsi
  402d9f:	89 df                	mov    %ebx,%edi
  402da1:	e8 da e0 ff ff       	callq  400e80 <connect@plt>
  402da6:	85 c0                	test   %eax,%eax
  402da8:	79 50                	jns    402dfa <init_driver+0x1c1>
  402daa:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402db1:	3a 20 55 
  402db4:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402db8:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402dbf:	20 74 6f 
  402dc2:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402dc6:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402dcd:	65 63 74 
  402dd0:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402dd4:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402ddb:	65 72 76 
  402dde:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402de2:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402de8:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402dec:	89 df                	mov    %ebx,%edi
  402dee:	e8 5d df ff ff       	callq  400d50 <close@plt>
  402df3:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402df8:	eb 16                	jmp    402e10 <init_driver+0x1d7>
  402dfa:	89 df                	mov    %ebx,%edi
  402dfc:	e8 4f df ff ff       	callq  400d50 <close@plt>
  402e01:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402e07:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402e0b:	b8 00 00 00 00       	mov    $0x0,%eax
  402e10:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402e15:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402e1c:	00 00 
  402e1e:	74 05                	je     402e25 <init_driver+0x1ec>
  402e20:	e8 eb de ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402e25:	48 83 c4 28          	add    $0x28,%rsp
  402e29:	5b                   	pop    %rbx
  402e2a:	5d                   	pop    %rbp
  402e2b:	c3                   	retq   

0000000000402e2c <driver_post>:
  402e2c:	53                   	push   %rbx
  402e2d:	4c 89 cb             	mov    %r9,%rbx
  402e30:	45 85 c0             	test   %r8d,%r8d
  402e33:	74 27                	je     402e5c <driver_post+0x30>
  402e35:	48 89 ca             	mov    %rcx,%rdx
  402e38:	be 15 38 40 00       	mov    $0x403815,%esi
  402e3d:	bf 01 00 00 00       	mov    $0x1,%edi
  402e42:	b8 00 00 00 00       	mov    $0x0,%eax
  402e47:	e8 d4 df ff ff       	callq  400e20 <__printf_chk@plt>
  402e4c:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e51:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e55:	b8 00 00 00 00       	mov    $0x0,%eax
  402e5a:	eb 3f                	jmp    402e9b <driver_post+0x6f>
  402e5c:	48 85 ff             	test   %rdi,%rdi
  402e5f:	74 2c                	je     402e8d <driver_post+0x61>
  402e61:	80 3f 00             	cmpb   $0x0,(%rdi)
  402e64:	74 27                	je     402e8d <driver_post+0x61>
  402e66:	48 83 ec 08          	sub    $0x8,%rsp
  402e6a:	41 51                	push   %r9
  402e6c:	49 89 c9             	mov    %rcx,%r9
  402e6f:	49 89 d0             	mov    %rdx,%r8
  402e72:	48 89 f9             	mov    %rdi,%rcx
  402e75:	48 89 f2             	mov    %rsi,%rdx
  402e78:	be 50 00 00 00       	mov    $0x50,%esi
  402e7d:	bf 35 33 40 00       	mov    $0x403335,%edi
  402e82:	e8 fe f5 ff ff       	callq  402485 <submitr>
  402e87:	48 83 c4 10          	add    $0x10,%rsp
  402e8b:	eb 0e                	jmp    402e9b <driver_post+0x6f>
  402e8d:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402e92:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402e96:	b8 00 00 00 00       	mov    $0x0,%eax
  402e9b:	5b                   	pop    %rbx
  402e9c:	c3                   	retq   

0000000000402e9d <check>:
  402e9d:	89 f8                	mov    %edi,%eax
  402e9f:	c1 e8 1c             	shr    $0x1c,%eax
  402ea2:	85 c0                	test   %eax,%eax
  402ea4:	74 1d                	je     402ec3 <check+0x26>
  402ea6:	b9 00 00 00 00       	mov    $0x0,%ecx
  402eab:	eb 0b                	jmp    402eb8 <check+0x1b>
  402ead:	89 f8                	mov    %edi,%eax
  402eaf:	d3 e8                	shr    %cl,%eax
  402eb1:	3c 0a                	cmp    $0xa,%al
  402eb3:	74 14                	je     402ec9 <check+0x2c>
  402eb5:	83 c1 08             	add    $0x8,%ecx
  402eb8:	83 f9 1f             	cmp    $0x1f,%ecx
  402ebb:	7e f0                	jle    402ead <check+0x10>
  402ebd:	b8 01 00 00 00       	mov    $0x1,%eax
  402ec2:	c3                   	retq   
  402ec3:	b8 00 00 00 00       	mov    $0x0,%eax
  402ec8:	c3                   	retq   
  402ec9:	b8 00 00 00 00       	mov    $0x0,%eax
  402ece:	c3                   	retq   

0000000000402ecf <gencookie>:
  402ecf:	53                   	push   %rbx
  402ed0:	83 c7 01             	add    $0x1,%edi
  402ed3:	e8 e8 dd ff ff       	callq  400cc0 <srandom@plt>
  402ed8:	e8 03 df ff ff       	callq  400de0 <random@plt>
  402edd:	89 c3                	mov    %eax,%ebx
  402edf:	89 c7                	mov    %eax,%edi
  402ee1:	e8 b7 ff ff ff       	callq  402e9d <check>
  402ee6:	85 c0                	test   %eax,%eax
  402ee8:	74 ee                	je     402ed8 <gencookie+0x9>
  402eea:	89 d8                	mov    %ebx,%eax
  402eec:	5b                   	pop    %rbx
  402eed:	c3                   	retq   
  402eee:	66 90                	xchg   %ax,%ax

0000000000402ef0 <__libc_csu_init>:
  402ef0:	41 57                	push   %r15
  402ef2:	41 56                	push   %r14
  402ef4:	41 89 ff             	mov    %edi,%r15d
  402ef7:	41 55                	push   %r13
  402ef9:	41 54                	push   %r12
  402efb:	4c 8d 25 fe 1e 20 00 	lea    0x201efe(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  402f02:	55                   	push   %rbp
  402f03:	48 8d 2d fe 1e 20 00 	lea    0x201efe(%rip),%rbp        # 604e08 <__init_array_end>
  402f0a:	53                   	push   %rbx
  402f0b:	49 89 f6             	mov    %rsi,%r14
  402f0e:	49 89 d5             	mov    %rdx,%r13
  402f11:	4c 29 e5             	sub    %r12,%rbp
  402f14:	48 83 ec 08          	sub    $0x8,%rsp
  402f18:	48 c1 fd 03          	sar    $0x3,%rbp
  402f1c:	e8 47 dd ff ff       	callq  400c68 <_init>
  402f21:	48 85 ed             	test   %rbp,%rbp
  402f24:	74 20                	je     402f46 <__libc_csu_init+0x56>
  402f26:	31 db                	xor    %ebx,%ebx
  402f28:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  402f2f:	00 
  402f30:	4c 89 ea             	mov    %r13,%rdx
  402f33:	4c 89 f6             	mov    %r14,%rsi
  402f36:	44 89 ff             	mov    %r15d,%edi
  402f39:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  402f3d:	48 83 c3 01          	add    $0x1,%rbx
  402f41:	48 39 eb             	cmp    %rbp,%rbx
  402f44:	75 ea                	jne    402f30 <__libc_csu_init+0x40>
  402f46:	48 83 c4 08          	add    $0x8,%rsp
  402f4a:	5b                   	pop    %rbx
  402f4b:	5d                   	pop    %rbp
  402f4c:	41 5c                	pop    %r12
  402f4e:	41 5d                	pop    %r13
  402f50:	41 5e                	pop    %r14
  402f52:	41 5f                	pop    %r15
  402f54:	c3                   	retq   
  402f55:	90                   	nop
  402f56:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  402f5d:	00 00 00 

0000000000402f60 <__libc_csu_fini>:
  402f60:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000402f64 <_fini>:
  402f64:	48 83 ec 08          	sub    $0x8,%rsp
  402f68:	48 83 c4 08          	add    $0x8,%rsp
  402f6c:	c3                   	retq   
