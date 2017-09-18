
rtarget：     文件格式 elf64-x86-64


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
  400edf:	49 c7 c0 90 30 40 00 	mov    $0x403090,%r8
  400ee6:	48 c7 c1 20 30 40 00 	mov    $0x403020,%rcx
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
  400fd6:	be a8 30 40 00       	mov    $0x4030a8,%esi
  400fdb:	bf 01 00 00 00       	mov    $0x1,%edi
  400fe0:	b8 00 00 00 00       	mov    $0x0,%eax
  400fe5:	e8 36 fe ff ff       	callq  400e20 <__printf_chk@plt>
  400fea:	bf e0 30 40 00       	mov    $0x4030e0,%edi
  400fef:	e8 fc fc ff ff       	callq  400cf0 <puts@plt>
  400ff4:	bf 58 32 40 00       	mov    $0x403258,%edi
  400ff9:	e8 f2 fc ff ff       	callq  400cf0 <puts@plt>
  400ffe:	bf 08 31 40 00       	mov    $0x403108,%edi
  401003:	e8 e8 fc ff ff       	callq  400cf0 <puts@plt>
  401008:	bf 72 32 40 00       	mov    $0x403272,%edi
  40100d:	e8 de fc ff ff       	callq  400cf0 <puts@plt>
  401012:	eb 32                	jmp    401046 <usage+0x80>
  401014:	be 8e 32 40 00       	mov    $0x40328e,%esi
  401019:	bf 01 00 00 00       	mov    $0x1,%edi
  40101e:	b8 00 00 00 00       	mov    $0x0,%eax
  401023:	e8 f8 fd ff ff       	callq  400e20 <__printf_chk@plt>
  401028:	bf 30 31 40 00       	mov    $0x403130,%edi
  40102d:	e8 be fc ff ff       	callq  400cf0 <puts@plt>
  401032:	bf 58 31 40 00       	mov    $0x403158,%edi
  401037:	e8 b4 fc ff ff       	callq  400cf0 <puts@plt>
  40103c:	bf ac 32 40 00       	mov    $0x4032ac,%edi
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
  40107a:	e8 74 1f 00 00       	callq  402ff3 <gencookie>
  40107f:	89 05 9f 44 20 00    	mov    %eax,0x20449f(%rip)        # 605524 <cookie>
  401085:	89 c7                	mov    %eax,%edi
  401087:	e8 67 1f 00 00       	callq  402ff3 <gencookie>
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
  4010e4:	c6 05 5d 50 20 00 72 	movb   $0x72,0x20505d(%rip)        # 606148 <target_prefix>
  4010eb:	83 3d b6 43 20 00 00 	cmpl   $0x0,0x2043b6(%rip)        # 6054a8 <notify>
  4010f2:	0f 84 bb 00 00 00    	je     4011b3 <initialize_target+0x163>
  4010f8:	83 3d 29 44 20 00 00 	cmpl   $0x0,0x204429(%rip)        # 605528 <is_checker>
  4010ff:	0f 85 ae 00 00 00    	jne    4011b3 <initialize_target+0x163>
  401105:	be 00 01 00 00       	mov    $0x100,%esi
  40110a:	48 89 e7             	mov    %rsp,%rdi
  40110d:	e8 4e fd ff ff       	callq  400e60 <gethostname@plt>
  401112:	85 c0                	test   %eax,%eax
  401114:	74 25                	je     40113b <initialize_target+0xeb>
  401116:	bf 88 31 40 00       	mov    $0x403188,%edi
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
  401163:	be c0 31 40 00       	mov    $0x4031c0,%esi
  401168:	bf 01 00 00 00       	mov    $0x1,%edi
  40116d:	e8 ae fc ff ff       	callq  400e20 <__printf_chk@plt>
  401172:	bf 08 00 00 00       	mov    $0x8,%edi
  401177:	e8 f4 fc ff ff       	callq  400e70 <exit@plt>
  40117c:	48 8d bc 24 00 01 00 	lea    0x100(%rsp),%rdi
  401183:	00 
  401184:	e8 d4 1b 00 00       	callq  402d5d <init_driver>
  401189:	85 c0                	test   %eax,%eax
  40118b:	79 26                	jns    4011b3 <initialize_target+0x163>
  40118d:	48 8d 94 24 00 01 00 	lea    0x100(%rsp),%rdx
  401194:	00 
  401195:	be 00 32 40 00       	mov    $0x403200,%esi
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
  4011e3:	be 7d 20 40 00       	mov    $0x40207d,%esi
  4011e8:	bf 0b 00 00 00       	mov    $0xb,%edi
  4011ed:	e8 8e fb ff ff       	callq  400d80 <signal@plt>
  4011f2:	be 2f 20 40 00       	mov    $0x40202f,%esi
  4011f7:	bf 07 00 00 00       	mov    $0x7,%edi
  4011fc:	e8 7f fb ff ff       	callq  400d80 <signal@plt>
  401201:	be cb 20 40 00       	mov    $0x4020cb,%esi
  401206:	bf 04 00 00 00       	mov    $0x4,%edi
  40120b:	e8 70 fb ff ff       	callq  400d80 <signal@plt>
  401210:	83 3d 11 43 20 00 00 	cmpl   $0x0,0x204311(%rip)        # 605528 <is_checker>
  401217:	74 20                	je     401239 <main+0x64>
  401219:	be 19 21 40 00       	mov    $0x402119,%esi
  40121e:	bf 0e 00 00 00       	mov    $0xe,%edi
  401223:	e8 58 fb ff ff       	callq  400d80 <signal@plt>
  401228:	bf 05 00 00 00       	mov    $0x5,%edi
  40122d:	e8 0e fb ff ff       	callq  400d40 <alarm@plt>
  401232:	bd ca 32 40 00       	mov    $0x4032ca,%ebp
  401237:	eb 05                	jmp    40123e <main+0x69>
  401239:	bd c5 32 40 00       	mov    $0x4032c5,%ebp
  40123e:	48 8b 05 7b 42 20 00 	mov    0x20427b(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  401245:	48 89 05 c4 42 20 00 	mov    %rax,0x2042c4(%rip)        # 605510 <infile>
  40124c:	41 bd 00 00 00 00    	mov    $0x0,%r13d
  401252:	41 be 00 00 00 00    	mov    $0x0,%r14d
  401258:	e9 c6 00 00 00       	jmpq   401323 <main+0x14e>
  40125d:	83 e8 61             	sub    $0x61,%eax
  401260:	3c 10                	cmp    $0x10,%al
  401262:	0f 87 9c 00 00 00    	ja     401304 <main+0x12f>
  401268:	0f b6 c0             	movzbl %al,%eax
  40126b:	ff 24 c5 10 33 40 00 	jmpq   *0x403310(,%rax,8)
  401272:	48 8b 3b             	mov    (%rbx),%rdi
  401275:	e8 4c fd ff ff       	callq  400fc6 <usage>
  40127a:	be 1d 36 40 00       	mov    $0x40361d,%esi
  40127f:	48 8b 3d 42 42 20 00 	mov    0x204242(%rip),%rdi        # 6054c8 <optarg@@GLIBC_2.2.5>
  401286:	e8 a5 fb ff ff       	callq  400e30 <fopen@plt>
  40128b:	48 89 05 7e 42 20 00 	mov    %rax,0x20427e(%rip)        # 605510 <infile>
  401292:	48 85 c0             	test   %rax,%rax
  401295:	0f 85 88 00 00 00    	jne    401323 <main+0x14e>
  40129b:	48 8b 0d 26 42 20 00 	mov    0x204226(%rip),%rcx        # 6054c8 <optarg@@GLIBC_2.2.5>
  4012a2:	ba d2 32 40 00       	mov    $0x4032d2,%edx
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
  401307:	be ef 32 40 00       	mov    $0x4032ef,%esi
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
  40133b:	be 01 00 00 00       	mov    $0x1,%esi
  401340:	44 89 ef             	mov    %r13d,%edi
  401343:	e8 08 fd ff ff       	callq  401050 <initialize_target>
  401348:	83 3d d9 41 20 00 00 	cmpl   $0x0,0x2041d9(%rip)        # 605528 <is_checker>
  40134f:	74 2a                	je     40137b <main+0x1a6>
  401351:	44 3b 35 c8 41 20 00 	cmp    0x2041c8(%rip),%r14d        # 605520 <authkey>
  401358:	74 21                	je     40137b <main+0x1a6>
  40135a:	44 89 f2             	mov    %r14d,%edx
  40135d:	be 28 32 40 00       	mov    $0x403228,%esi
  401362:	bf 01 00 00 00       	mov    $0x1,%edi
  401367:	b8 00 00 00 00       	mov    $0x0,%eax
  40136c:	e8 af fa ff ff       	callq  400e20 <__printf_chk@plt>
  401371:	b8 00 00 00 00       	mov    $0x0,%eax
  401376:	e8 50 09 00 00       	callq  401ccb <check_fail>
  40137b:	8b 15 a3 41 20 00    	mov    0x2041a3(%rip),%edx        # 605524 <cookie>
  401381:	be 02 33 40 00       	mov    $0x403302,%esi
  401386:	bf 01 00 00 00       	mov    $0x1,%edi
  40138b:	b8 00 00 00 00       	mov    $0x0,%eax
  401390:	e8 8b fa ff ff       	callq  400e20 <__printf_chk@plt>
  401395:	48 8b 3d 04 41 20 00 	mov    0x204104(%rip),%rdi        # 6054a0 <buf_offset>
  40139c:	e8 cb 0d 00 00       	callq  40216c <launch>
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
  401959:	e8 a2 03 00 00       	callq  401d00 <Gets>
  40195e:	b8 01 00 00 00       	mov    $0x1,%eax
  401963:	48 83 c4 18          	add    $0x18,%rsp
  401967:	c3                   	retq   

0000000000401968 <touch1>:
  401968:	48 83 ec 08          	sub    $0x8,%rsp
  40196c:	c7 05 a6 3b 20 00 01 	movl   $0x1,0x203ba6(%rip)        # 60551c <vlevel>
  401973:	00 00 00 
  401976:	bf 76 34 40 00       	mov    $0x403476,%edi
  40197b:	e8 70 f3 ff ff       	callq  400cf0 <puts@plt>
  401980:	bf 01 00 00 00       	mov    $0x1,%edi
  401985:	e8 bb 05 00 00       	callq  401f45 <validate>
  40198a:	bf 00 00 00 00       	mov    $0x0,%edi
  40198f:	e8 dc f4 ff ff       	callq  400e70 <exit@plt>

0000000000401994 <touch2>:
  401994:	48 83 ec 08          	sub    $0x8,%rsp
  401998:	89 fa                	mov    %edi,%edx
  40199a:	c7 05 78 3b 20 00 02 	movl   $0x2,0x203b78(%rip)        # 60551c <vlevel>
  4019a1:	00 00 00 
  4019a4:	39 3d 7a 3b 20 00    	cmp    %edi,0x203b7a(%rip)        # 605524 <cookie>
  4019aa:	75 20                	jne    4019cc <touch2+0x38>
  4019ac:	be 98 34 40 00       	mov    $0x403498,%esi
  4019b1:	bf 01 00 00 00       	mov    $0x1,%edi
  4019b6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019bb:	e8 60 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  4019c0:	bf 02 00 00 00       	mov    $0x2,%edi
  4019c5:	e8 7b 05 00 00       	callq  401f45 <validate>
  4019ca:	eb 1e                	jmp    4019ea <touch2+0x56>
  4019cc:	be c0 34 40 00       	mov    $0x4034c0,%esi
  4019d1:	bf 01 00 00 00       	mov    $0x1,%edi
  4019d6:	b8 00 00 00 00       	mov    $0x0,%eax
  4019db:	e8 40 f4 ff ff       	callq  400e20 <__printf_chk@plt>
  4019e0:	bf 02 00 00 00       	mov    $0x2,%edi
  4019e5:	e8 1d 06 00 00       	callq  402007 <fail>
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
  401a51:	b9 93 34 40 00       	mov    $0x403493,%ecx
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
  401ac8:	be e8 34 40 00       	mov    $0x4034e8,%esi
  401acd:	bf 01 00 00 00       	mov    $0x1,%edi
  401ad2:	b8 00 00 00 00       	mov    $0x0,%eax
  401ad7:	e8 44 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401adc:	bf 03 00 00 00       	mov    $0x3,%edi
  401ae1:	e8 5f 04 00 00       	callq  401f45 <validate>
  401ae6:	eb 21                	jmp    401b09 <touch3+0x64>
  401ae8:	48 89 da             	mov    %rbx,%rdx
  401aeb:	be 10 35 40 00       	mov    $0x403510,%esi
  401af0:	bf 01 00 00 00       	mov    $0x1,%edi
  401af5:	b8 00 00 00 00       	mov    $0x0,%eax
  401afa:	e8 21 f3 ff ff       	callq  400e20 <__printf_chk@plt>
  401aff:	bf 03 00 00 00       	mov    $0x3,%edi
  401b04:	e8 fe 04 00 00       	callq  402007 <fail>
  401b09:	bf 00 00 00 00       	mov    $0x0,%edi
  401b0e:	e8 5d f3 ff ff       	callq  400e70 <exit@plt>

0000000000401b13 <test>:
  401b13:	48 83 ec 08          	sub    $0x8,%rsp
  401b17:	b8 00 00 00 00       	mov    $0x0,%eax
  401b1c:	e8 31 fe ff ff       	callq  401952 <getbuf>
  401b21:	89 c2                	mov    %eax,%edx
  401b23:	be 38 35 40 00       	mov    $0x403538,%esi
  401b28:	bf 01 00 00 00       	mov    $0x1,%edi
  401b2d:	b8 00 00 00 00       	mov    $0x0,%eax
  401b32:	e8 e9 f2 ff ff       	callq  400e20 <__printf_chk@plt>
  401b37:	48 83 c4 08          	add    $0x8,%rsp
  401b3b:	c3                   	retq   

0000000000401b3c <start_farm>:
  401b3c:	b8 01 00 00 00       	mov    $0x1,%eax
  401b41:	c3                   	retq   

0000000000401b42 <addval_497>:
  401b42:	8d 87 48 89 c7 90    	lea    -0x6f3876b8(%rdi),%eax
  401b48:	c3                   	retq   

0000000000401b49 <setval_159>:
  401b49:	c7 07 75 ac 31 58    	movl   $0x5831ac75,(%rdi)
  401b4f:	c3                   	retq   

0000000000401b50 <getval_269>:
  401b50:	b8 d8 18 90 90       	mov    $0x909018d8,%eax
  401b55:	c3                   	retq   

0000000000401b56 <addval_394>:
  401b56:	8d 87 85 48 09 c7    	lea    -0x38f6b77b(%rdi),%eax
  401b5c:	c3                   	retq   

0000000000401b5d <getval_404>:
  401b5d:	b8 34 48 89 c7       	mov    $0xc7894834,%eax
  401b62:	c3                   	retq   

0000000000401b63 <addval_193>:
  401b63:	8d 87 52 58 c3 8f    	lea    -0x703ca7ae(%rdi),%eax
  401b69:	c3                   	retq   

0000000000401b6a <setval_166>:
  401b6a:	c7 07 48 89 c7 c1    	movl   $0xc1c78948,(%rdi)
  401b70:	c3                   	retq   

0000000000401b71 <getval_208>:
  401b71:	b8 ec 9e bf 18       	mov    $0x18bf9eec,%eax
  401b76:	c3                   	retq   

0000000000401b77 <mid_farm>:
  401b77:	b8 01 00 00 00       	mov    $0x1,%eax
  401b7c:	c3                   	retq   

0000000000401b7d <add_xy>:
  401b7d:	48 8d 04 37          	lea    (%rdi,%rsi,1),%rax
  401b81:	c3                   	retq   

0000000000401b82 <setval_451>:
  401b82:	c7 07 39 81 ce c3    	movl   $0xc3ce8139,(%rdi)
  401b88:	c3                   	retq   

0000000000401b89 <getval_229>:
  401b89:	b8 89 ce 28 c0       	mov    $0xc028ce89,%eax
  401b8e:	c3                   	retq   

0000000000401b8f <addval_314>:
  401b8f:	8d 87 8b ce 84 c0    	lea    -0x3f7b3175(%rdi),%eax
  401b95:	c3                   	retq   

0000000000401b96 <getval_105>:
  401b96:	b8 48 89 e0 91       	mov    $0x91e08948,%eax
  401b9b:	c3                   	retq   

0000000000401b9c <addval_158>:
  401b9c:	8d 87 8b c2 90 c3    	lea    -0x3c6f3d75(%rdi),%eax
  401ba2:	c3                   	retq   

0000000000401ba3 <getval_259>:
  401ba3:	b8 89 ce 20 c0       	mov    $0xc020ce89,%eax
  401ba8:	c3                   	retq   

0000000000401ba9 <setval_211>:
  401ba9:	c7 07 48 89 e0 c3    	movl   $0xc3e08948,(%rdi)
  401baf:	c3                   	retq   

0000000000401bb0 <addval_186>:
  401bb0:	8d 87 c8 89 e0 90    	lea    -0x6f1f7638(%rdi),%eax
  401bb6:	c3                   	retq   

0000000000401bb7 <setval_146>:
  401bb7:	c7 07 89 c2 90 c3    	movl   $0xc390c289,(%rdi)
  401bbd:	c3                   	retq   

0000000000401bbe <setval_165>:
  401bbe:	c7 07 48 09 e0 90    	movl   $0x90e00948,(%rdi)
  401bc4:	c3                   	retq   

0000000000401bc5 <getval_112>:
  401bc5:	b8 72 74 89 ce       	mov    $0xce897472,%eax
  401bca:	c3                   	retq   

0000000000401bcb <addval_198>:
  401bcb:	8d 87 8b c2 84 d2    	lea    -0x2d7b3d75(%rdi),%eax
  401bd1:	c3                   	retq   

0000000000401bd2 <setval_164>:
  401bd2:	c7 07 d4 4c 89 e0    	movl   $0xe0894cd4,(%rdi)
  401bd8:	c3                   	retq   

0000000000401bd9 <setval_191>:
  401bd9:	c7 07 89 c2 20 c9    	movl   $0xc920c289,(%rdi)
  401bdf:	c3                   	retq   

0000000000401be0 <setval_271>:
  401be0:	c7 07 99 d1 20 d2    	movl   $0xd220d199,(%rdi)
  401be6:	c3                   	retq   

0000000000401be7 <getval_462>:
  401be7:	b8 48 89 e0 c7       	mov    $0xc7e08948,%eax
  401bec:	c3                   	retq   

0000000000401bed <setval_321>:
  401bed:	c7 07 89 ce 30 c9    	movl   $0xc930ce89,(%rdi)
  401bf3:	c3                   	retq   

0000000000401bf4 <addval_447>:
  401bf4:	8d 87 88 c2 20 d2    	lea    -0x2ddf3d78(%rdi),%eax
  401bfa:	c3                   	retq   

0000000000401bfb <getval_297>:
  401bfb:	b8 27 48 89 e0       	mov    $0xe0894827,%eax
  401c00:	c3                   	retq   

0000000000401c01 <setval_144>:
  401c01:	c7 07 89 c2 a4 d2    	movl   $0xd2a4c289,(%rdi)
  401c07:	c3                   	retq   

0000000000401c08 <addval_418>:
  401c08:	8d 87 89 d1 92 c3    	lea    -0x3c6d2e77(%rdi),%eax
  401c0e:	c3                   	retq   

0000000000401c0f <addval_250>:
  401c0f:	8d 87 89 d1 08 c9    	lea    -0x36f72e77(%rdi),%eax
  401c15:	c3                   	retq   

0000000000401c16 <setval_102>:
  401c16:	c7 07 88 c2 08 c9    	movl   $0xc908c288,(%rdi)
  401c1c:	c3                   	retq   

0000000000401c1d <setval_174>:
  401c1d:	c7 07 48 89 e0 91    	movl   $0x91e08948,(%rdi)
  401c23:	c3                   	retq   

0000000000401c24 <setval_270>:
  401c24:	c7 07 a9 d1 84 c9    	movl   $0xc984d1a9,(%rdi)
  401c2a:	c3                   	retq   

0000000000401c2b <setval_273>:
  401c2b:	c7 07 89 d1 84 c9    	movl   $0xc984d189,(%rdi)
  401c31:	c3                   	retq   

0000000000401c32 <getval_376>:
  401c32:	b8 4a 81 ce 90       	mov    $0x90ce814a,%eax
  401c37:	c3                   	retq   

0000000000401c38 <getval_460>:
  401c38:	b8 89 d1 28 db       	mov    $0xdb28d189,%eax
  401c3d:	c3                   	retq   

0000000000401c3e <setval_141>:
  401c3e:	c7 07 75 89 ce c1    	movl   $0xc1ce8975,(%rdi)
  401c44:	c3                   	retq   

0000000000401c45 <addval_181>:
  401c45:	8d 87 89 d1 92 90    	lea    -0x6f6d2e77(%rdi),%eax
  401c4b:	c3                   	retq   

0000000000401c4c <addval_143>:
  401c4c:	8d 87 89 c2 94 c3    	lea    -0x3c6b3d77(%rdi),%eax
  401c52:	c3                   	retq   

0000000000401c53 <addval_318>:
  401c53:	8d 87 a9 d1 84 db    	lea    -0x247b2e57(%rdi),%eax
  401c59:	c3                   	retq   

0000000000401c5a <end_farm>:
  401c5a:	b8 01 00 00 00       	mov    $0x1,%eax
  401c5f:	c3                   	retq   

0000000000401c60 <save_char>:
  401c60:	8b 05 de 44 20 00    	mov    0x2044de(%rip),%eax        # 606144 <gets_cnt>
  401c66:	3d ff 03 00 00       	cmp    $0x3ff,%eax
  401c6b:	7f 49                	jg     401cb6 <save_char+0x56>
  401c6d:	8d 14 40             	lea    (%rax,%rax,2),%edx
  401c70:	89 f9                	mov    %edi,%ecx
  401c72:	c0 e9 04             	shr    $0x4,%cl
  401c75:	83 e1 0f             	and    $0xf,%ecx
  401c78:	0f b6 b1 60 38 40 00 	movzbl 0x403860(%rcx),%esi
  401c7f:	48 63 ca             	movslq %edx,%rcx
  401c82:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401c89:	8d 4a 01             	lea    0x1(%rdx),%ecx
  401c8c:	83 e7 0f             	and    $0xf,%edi
  401c8f:	0f b6 b7 60 38 40 00 	movzbl 0x403860(%rdi),%esi
  401c96:	48 63 c9             	movslq %ecx,%rcx
  401c99:	40 88 b1 40 55 60 00 	mov    %sil,0x605540(%rcx)
  401ca0:	83 c2 02             	add    $0x2,%edx
  401ca3:	48 63 d2             	movslq %edx,%rdx
  401ca6:	c6 82 40 55 60 00 20 	movb   $0x20,0x605540(%rdx)
  401cad:	83 c0 01             	add    $0x1,%eax
  401cb0:	89 05 8e 44 20 00    	mov    %eax,0x20448e(%rip)        # 606144 <gets_cnt>
  401cb6:	f3 c3                	repz retq 

0000000000401cb8 <save_term>:
  401cb8:	8b 05 86 44 20 00    	mov    0x204486(%rip),%eax        # 606144 <gets_cnt>
  401cbe:	8d 04 40             	lea    (%rax,%rax,2),%eax
  401cc1:	48 98                	cltq   
  401cc3:	c6 80 40 55 60 00 00 	movb   $0x0,0x605540(%rax)
  401cca:	c3                   	retq   

0000000000401ccb <check_fail>:
  401ccb:	48 83 ec 08          	sub    $0x8,%rsp
  401ccf:	0f be 15 72 44 20 00 	movsbl 0x204472(%rip),%edx        # 606148 <target_prefix>
  401cd6:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401cdc:	8b 0d 36 38 20 00    	mov    0x203836(%rip),%ecx        # 605518 <check_level>
  401ce2:	be 5b 35 40 00       	mov    $0x40355b,%esi
  401ce7:	bf 01 00 00 00       	mov    $0x1,%edi
  401cec:	b8 00 00 00 00       	mov    $0x0,%eax
  401cf1:	e8 2a f1 ff ff       	callq  400e20 <__printf_chk@plt>
  401cf6:	bf 01 00 00 00       	mov    $0x1,%edi
  401cfb:	e8 70 f1 ff ff       	callq  400e70 <exit@plt>

0000000000401d00 <Gets>:
  401d00:	41 54                	push   %r12
  401d02:	55                   	push   %rbp
  401d03:	53                   	push   %rbx
  401d04:	49 89 fc             	mov    %rdi,%r12
  401d07:	c7 05 33 44 20 00 00 	movl   $0x0,0x204433(%rip)        # 606144 <gets_cnt>
  401d0e:	00 00 00 
  401d11:	48 89 fb             	mov    %rdi,%rbx
  401d14:	eb 11                	jmp    401d27 <Gets+0x27>
  401d16:	48 8d 6b 01          	lea    0x1(%rbx),%rbp
  401d1a:	88 03                	mov    %al,(%rbx)
  401d1c:	0f b6 f8             	movzbl %al,%edi
  401d1f:	e8 3c ff ff ff       	callq  401c60 <save_char>
  401d24:	48 89 eb             	mov    %rbp,%rbx
  401d27:	48 8b 3d e2 37 20 00 	mov    0x2037e2(%rip),%rdi        # 605510 <infile>
  401d2e:	e8 bd f0 ff ff       	callq  400df0 <_IO_getc@plt>
  401d33:	83 f8 ff             	cmp    $0xffffffff,%eax
  401d36:	74 05                	je     401d3d <Gets+0x3d>
  401d38:	83 f8 0a             	cmp    $0xa,%eax
  401d3b:	75 d9                	jne    401d16 <Gets+0x16>
  401d3d:	c6 03 00             	movb   $0x0,(%rbx)
  401d40:	b8 00 00 00 00       	mov    $0x0,%eax
  401d45:	e8 6e ff ff ff       	callq  401cb8 <save_term>
  401d4a:	4c 89 e0             	mov    %r12,%rax
  401d4d:	5b                   	pop    %rbx
  401d4e:	5d                   	pop    %rbp
  401d4f:	41 5c                	pop    %r12
  401d51:	c3                   	retq   

0000000000401d52 <notify_server>:
  401d52:	53                   	push   %rbx
  401d53:	48 81 ec 10 40 00 00 	sub    $0x4010,%rsp
  401d5a:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  401d61:	00 00 
  401d63:	48 89 84 24 08 40 00 	mov    %rax,0x4008(%rsp)
  401d6a:	00 
  401d6b:	31 c0                	xor    %eax,%eax
  401d6d:	83 3d b4 37 20 00 00 	cmpl   $0x0,0x2037b4(%rip)        # 605528 <is_checker>
  401d74:	0f 85 aa 01 00 00    	jne    401f24 <notify_server+0x1d2>
  401d7a:	89 fb                	mov    %edi,%ebx
  401d7c:	8b 05 c2 43 20 00    	mov    0x2043c2(%rip),%eax        # 606144 <gets_cnt>
  401d82:	83 c0 64             	add    $0x64,%eax
  401d85:	3d 00 20 00 00       	cmp    $0x2000,%eax
  401d8a:	7e 1e                	jle    401daa <notify_server+0x58>
  401d8c:	be 90 36 40 00       	mov    $0x403690,%esi
  401d91:	bf 01 00 00 00       	mov    $0x1,%edi
  401d96:	b8 00 00 00 00       	mov    $0x0,%eax
  401d9b:	e8 80 f0 ff ff       	callq  400e20 <__printf_chk@plt>
  401da0:	bf 01 00 00 00       	mov    $0x1,%edi
  401da5:	e8 c6 f0 ff ff       	callq  400e70 <exit@plt>
  401daa:	0f be 05 97 43 20 00 	movsbl 0x204397(%rip),%eax        # 606148 <target_prefix>
  401db1:	83 3d f0 36 20 00 00 	cmpl   $0x0,0x2036f0(%rip)        # 6054a8 <notify>
  401db8:	74 08                	je     401dc2 <notify_server+0x70>
  401dba:	8b 15 60 37 20 00    	mov    0x203760(%rip),%edx        # 605520 <authkey>
  401dc0:	eb 05                	jmp    401dc7 <notify_server+0x75>
  401dc2:	ba ff ff ff ff       	mov    $0xffffffff,%edx
  401dc7:	85 db                	test   %ebx,%ebx
  401dc9:	74 08                	je     401dd3 <notify_server+0x81>
  401dcb:	41 b9 71 35 40 00    	mov    $0x403571,%r9d
  401dd1:	eb 06                	jmp    401dd9 <notify_server+0x87>
  401dd3:	41 b9 76 35 40 00    	mov    $0x403576,%r9d
  401dd9:	68 40 55 60 00       	pushq  $0x605540
  401dde:	56                   	push   %rsi
  401ddf:	50                   	push   %rax
  401de0:	52                   	push   %rdx
  401de1:	44 8b 05 80 33 20 00 	mov    0x203380(%rip),%r8d        # 605168 <target_id>
  401de8:	b9 7b 35 40 00       	mov    $0x40357b,%ecx
  401ded:	ba 00 20 00 00       	mov    $0x2000,%edx
  401df2:	be 01 00 00 00       	mov    $0x1,%esi
  401df7:	48 8d 7c 24 20       	lea    0x20(%rsp),%rdi
  401dfc:	b8 00 00 00 00       	mov    $0x0,%eax
  401e01:	e8 9a f0 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  401e06:	48 83 c4 20          	add    $0x20,%rsp
  401e0a:	83 3d 97 36 20 00 00 	cmpl   $0x0,0x203697(%rip)        # 6054a8 <notify>
  401e11:	0f 84 81 00 00 00    	je     401e98 <notify_server+0x146>
  401e17:	4c 8d 8c 24 00 20 00 	lea    0x2000(%rsp),%r9
  401e1e:	00 
  401e1f:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  401e25:	48 89 e1             	mov    %rsp,%rcx
  401e28:	48 8b 15 41 33 20 00 	mov    0x203341(%rip),%rdx        # 605170 <lab>
  401e2f:	48 8b 35 42 33 20 00 	mov    0x203342(%rip),%rsi        # 605178 <course>
  401e36:	48 8b 3d 23 33 20 00 	mov    0x203323(%rip),%rdi        # 605160 <user_id>
  401e3d:	e8 0e 11 00 00       	callq  402f50 <driver_post>
  401e42:	85 c0                	test   %eax,%eax
  401e44:	79 26                	jns    401e6c <notify_server+0x11a>
  401e46:	48 8d 94 24 00 20 00 	lea    0x2000(%rsp),%rdx
  401e4d:	00 
  401e4e:	be 97 35 40 00       	mov    $0x403597,%esi
  401e53:	bf 01 00 00 00       	mov    $0x1,%edi
  401e58:	b8 00 00 00 00       	mov    $0x0,%eax
  401e5d:	e8 be ef ff ff       	callq  400e20 <__printf_chk@plt>
  401e62:	bf 01 00 00 00       	mov    $0x1,%edi
  401e67:	e8 04 f0 ff ff       	callq  400e70 <exit@plt>
  401e6c:	85 db                	test   %ebx,%ebx
  401e6e:	74 19                	je     401e89 <notify_server+0x137>
  401e70:	bf c0 36 40 00       	mov    $0x4036c0,%edi
  401e75:	e8 76 ee ff ff       	callq  400cf0 <puts@plt>
  401e7a:	bf a3 35 40 00       	mov    $0x4035a3,%edi
  401e7f:	e8 6c ee ff ff       	callq  400cf0 <puts@plt>
  401e84:	e9 9b 00 00 00       	jmpq   401f24 <notify_server+0x1d2>
  401e89:	bf ad 35 40 00       	mov    $0x4035ad,%edi
  401e8e:	e8 5d ee ff ff       	callq  400cf0 <puts@plt>
  401e93:	e9 8c 00 00 00       	jmpq   401f24 <notify_server+0x1d2>
  401e98:	85 db                	test   %ebx,%ebx
  401e9a:	74 07                	je     401ea3 <notify_server+0x151>
  401e9c:	ba 71 35 40 00       	mov    $0x403571,%edx
  401ea1:	eb 05                	jmp    401ea8 <notify_server+0x156>
  401ea3:	ba 76 35 40 00       	mov    $0x403576,%edx
  401ea8:	be f8 36 40 00       	mov    $0x4036f8,%esi
  401ead:	bf 01 00 00 00       	mov    $0x1,%edi
  401eb2:	b8 00 00 00 00       	mov    $0x0,%eax
  401eb7:	e8 64 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ebc:	48 8b 15 9d 32 20 00 	mov    0x20329d(%rip),%rdx        # 605160 <user_id>
  401ec3:	be b4 35 40 00       	mov    $0x4035b4,%esi
  401ec8:	bf 01 00 00 00       	mov    $0x1,%edi
  401ecd:	b8 00 00 00 00       	mov    $0x0,%eax
  401ed2:	e8 49 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ed7:	48 8b 15 9a 32 20 00 	mov    0x20329a(%rip),%rdx        # 605178 <course>
  401ede:	be c1 35 40 00       	mov    $0x4035c1,%esi
  401ee3:	bf 01 00 00 00       	mov    $0x1,%edi
  401ee8:	b8 00 00 00 00       	mov    $0x0,%eax
  401eed:	e8 2e ef ff ff       	callq  400e20 <__printf_chk@plt>
  401ef2:	48 8b 15 77 32 20 00 	mov    0x203277(%rip),%rdx        # 605170 <lab>
  401ef9:	be cd 35 40 00       	mov    $0x4035cd,%esi
  401efe:	bf 01 00 00 00       	mov    $0x1,%edi
  401f03:	b8 00 00 00 00       	mov    $0x0,%eax
  401f08:	e8 13 ef ff ff       	callq  400e20 <__printf_chk@plt>
  401f0d:	48 89 e2             	mov    %rsp,%rdx
  401f10:	be d6 35 40 00       	mov    $0x4035d6,%esi
  401f15:	bf 01 00 00 00       	mov    $0x1,%edi
  401f1a:	b8 00 00 00 00       	mov    $0x0,%eax
  401f1f:	e8 fc ee ff ff       	callq  400e20 <__printf_chk@plt>
  401f24:	48 8b 84 24 08 40 00 	mov    0x4008(%rsp),%rax
  401f2b:	00 
  401f2c:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  401f33:	00 00 
  401f35:	74 05                	je     401f3c <notify_server+0x1ea>
  401f37:	e8 d4 ed ff ff       	callq  400d10 <__stack_chk_fail@plt>
  401f3c:	48 81 c4 10 40 00 00 	add    $0x4010,%rsp
  401f43:	5b                   	pop    %rbx
  401f44:	c3                   	retq   

0000000000401f45 <validate>:
  401f45:	53                   	push   %rbx
  401f46:	89 fb                	mov    %edi,%ebx
  401f48:	83 3d d9 35 20 00 00 	cmpl   $0x0,0x2035d9(%rip)        # 605528 <is_checker>
  401f4f:	74 6b                	je     401fbc <validate+0x77>
  401f51:	39 3d c5 35 20 00    	cmp    %edi,0x2035c5(%rip)        # 60551c <vlevel>
  401f57:	74 14                	je     401f6d <validate+0x28>
  401f59:	bf e2 35 40 00       	mov    $0x4035e2,%edi
  401f5e:	e8 8d ed ff ff       	callq  400cf0 <puts@plt>
  401f63:	b8 00 00 00 00       	mov    $0x0,%eax
  401f68:	e8 5e fd ff ff       	callq  401ccb <check_fail>
  401f6d:	8b 15 a5 35 20 00    	mov    0x2035a5(%rip),%edx        # 605518 <check_level>
  401f73:	39 d7                	cmp    %edx,%edi
  401f75:	74 20                	je     401f97 <validate+0x52>
  401f77:	89 f9                	mov    %edi,%ecx
  401f79:	be 20 37 40 00       	mov    $0x403720,%esi
  401f7e:	bf 01 00 00 00       	mov    $0x1,%edi
  401f83:	b8 00 00 00 00       	mov    $0x0,%eax
  401f88:	e8 93 ee ff ff       	callq  400e20 <__printf_chk@plt>
  401f8d:	b8 00 00 00 00       	mov    $0x0,%eax
  401f92:	e8 34 fd ff ff       	callq  401ccb <check_fail>
  401f97:	0f be 15 aa 41 20 00 	movsbl 0x2041aa(%rip),%edx        # 606148 <target_prefix>
  401f9e:	41 b8 40 55 60 00    	mov    $0x605540,%r8d
  401fa4:	89 f9                	mov    %edi,%ecx
  401fa6:	be 00 36 40 00       	mov    $0x403600,%esi
  401fab:	bf 01 00 00 00       	mov    $0x1,%edi
  401fb0:	b8 00 00 00 00       	mov    $0x0,%eax
  401fb5:	e8 66 ee ff ff       	callq  400e20 <__printf_chk@plt>
  401fba:	eb 49                	jmp    402005 <validate+0xc0>
  401fbc:	3b 3d 5a 35 20 00    	cmp    0x20355a(%rip),%edi        # 60551c <vlevel>
  401fc2:	74 18                	je     401fdc <validate+0x97>
  401fc4:	bf e2 35 40 00       	mov    $0x4035e2,%edi
  401fc9:	e8 22 ed ff ff       	callq  400cf0 <puts@plt>
  401fce:	89 de                	mov    %ebx,%esi
  401fd0:	bf 00 00 00 00       	mov    $0x0,%edi
  401fd5:	e8 78 fd ff ff       	callq  401d52 <notify_server>
  401fda:	eb 29                	jmp    402005 <validate+0xc0>
  401fdc:	0f be 0d 65 41 20 00 	movsbl 0x204165(%rip),%ecx        # 606148 <target_prefix>
  401fe3:	89 fa                	mov    %edi,%edx
  401fe5:	be 48 37 40 00       	mov    $0x403748,%esi
  401fea:	bf 01 00 00 00       	mov    $0x1,%edi
  401fef:	b8 00 00 00 00       	mov    $0x0,%eax
  401ff4:	e8 27 ee ff ff       	callq  400e20 <__printf_chk@plt>
  401ff9:	89 de                	mov    %ebx,%esi
  401ffb:	bf 01 00 00 00       	mov    $0x1,%edi
  402000:	e8 4d fd ff ff       	callq  401d52 <notify_server>
  402005:	5b                   	pop    %rbx
  402006:	c3                   	retq   

0000000000402007 <fail>:
  402007:	48 83 ec 08          	sub    $0x8,%rsp
  40200b:	83 3d 16 35 20 00 00 	cmpl   $0x0,0x203516(%rip)        # 605528 <is_checker>
  402012:	74 0a                	je     40201e <fail+0x17>
  402014:	b8 00 00 00 00       	mov    $0x0,%eax
  402019:	e8 ad fc ff ff       	callq  401ccb <check_fail>
  40201e:	89 fe                	mov    %edi,%esi
  402020:	bf 00 00 00 00       	mov    $0x0,%edi
  402025:	e8 28 fd ff ff       	callq  401d52 <notify_server>
  40202a:	48 83 c4 08          	add    $0x8,%rsp
  40202e:	c3                   	retq   

000000000040202f <bushandler>:
  40202f:	48 83 ec 08          	sub    $0x8,%rsp
  402033:	83 3d ee 34 20 00 00 	cmpl   $0x0,0x2034ee(%rip)        # 605528 <is_checker>
  40203a:	74 14                	je     402050 <bushandler+0x21>
  40203c:	bf 15 36 40 00       	mov    $0x403615,%edi
  402041:	e8 aa ec ff ff       	callq  400cf0 <puts@plt>
  402046:	b8 00 00 00 00       	mov    $0x0,%eax
  40204b:	e8 7b fc ff ff       	callq  401ccb <check_fail>
  402050:	bf 80 37 40 00       	mov    $0x403780,%edi
  402055:	e8 96 ec ff ff       	callq  400cf0 <puts@plt>
  40205a:	bf 1f 36 40 00       	mov    $0x40361f,%edi
  40205f:	e8 8c ec ff ff       	callq  400cf0 <puts@plt>
  402064:	be 00 00 00 00       	mov    $0x0,%esi
  402069:	bf 00 00 00 00       	mov    $0x0,%edi
  40206e:	e8 df fc ff ff       	callq  401d52 <notify_server>
  402073:	bf 01 00 00 00       	mov    $0x1,%edi
  402078:	e8 f3 ed ff ff       	callq  400e70 <exit@plt>

000000000040207d <seghandler>:
  40207d:	48 83 ec 08          	sub    $0x8,%rsp
  402081:	83 3d a0 34 20 00 00 	cmpl   $0x0,0x2034a0(%rip)        # 605528 <is_checker>
  402088:	74 14                	je     40209e <seghandler+0x21>
  40208a:	bf 35 36 40 00       	mov    $0x403635,%edi
  40208f:	e8 5c ec ff ff       	callq  400cf0 <puts@plt>
  402094:	b8 00 00 00 00       	mov    $0x0,%eax
  402099:	e8 2d fc ff ff       	callq  401ccb <check_fail>
  40209e:	bf a0 37 40 00       	mov    $0x4037a0,%edi
  4020a3:	e8 48 ec ff ff       	callq  400cf0 <puts@plt>
  4020a8:	bf 1f 36 40 00       	mov    $0x40361f,%edi
  4020ad:	e8 3e ec ff ff       	callq  400cf0 <puts@plt>
  4020b2:	be 00 00 00 00       	mov    $0x0,%esi
  4020b7:	bf 00 00 00 00       	mov    $0x0,%edi
  4020bc:	e8 91 fc ff ff       	callq  401d52 <notify_server>
  4020c1:	bf 01 00 00 00       	mov    $0x1,%edi
  4020c6:	e8 a5 ed ff ff       	callq  400e70 <exit@plt>

00000000004020cb <illegalhandler>:
  4020cb:	48 83 ec 08          	sub    $0x8,%rsp
  4020cf:	83 3d 52 34 20 00 00 	cmpl   $0x0,0x203452(%rip)        # 605528 <is_checker>
  4020d6:	74 14                	je     4020ec <illegalhandler+0x21>
  4020d8:	bf 48 36 40 00       	mov    $0x403648,%edi
  4020dd:	e8 0e ec ff ff       	callq  400cf0 <puts@plt>
  4020e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4020e7:	e8 df fb ff ff       	callq  401ccb <check_fail>
  4020ec:	bf c8 37 40 00       	mov    $0x4037c8,%edi
  4020f1:	e8 fa eb ff ff       	callq  400cf0 <puts@plt>
  4020f6:	bf 1f 36 40 00       	mov    $0x40361f,%edi
  4020fb:	e8 f0 eb ff ff       	callq  400cf0 <puts@plt>
  402100:	be 00 00 00 00       	mov    $0x0,%esi
  402105:	bf 00 00 00 00       	mov    $0x0,%edi
  40210a:	e8 43 fc ff ff       	callq  401d52 <notify_server>
  40210f:	bf 01 00 00 00       	mov    $0x1,%edi
  402114:	e8 57 ed ff ff       	callq  400e70 <exit@plt>

0000000000402119 <sigalrmhandler>:
  402119:	48 83 ec 08          	sub    $0x8,%rsp
  40211d:	83 3d 04 34 20 00 00 	cmpl   $0x0,0x203404(%rip)        # 605528 <is_checker>
  402124:	74 14                	je     40213a <sigalrmhandler+0x21>
  402126:	bf 5c 36 40 00       	mov    $0x40365c,%edi
  40212b:	e8 c0 eb ff ff       	callq  400cf0 <puts@plt>
  402130:	b8 00 00 00 00       	mov    $0x0,%eax
  402135:	e8 91 fb ff ff       	callq  401ccb <check_fail>
  40213a:	ba 05 00 00 00       	mov    $0x5,%edx
  40213f:	be f8 37 40 00       	mov    $0x4037f8,%esi
  402144:	bf 01 00 00 00       	mov    $0x1,%edi
  402149:	b8 00 00 00 00       	mov    $0x0,%eax
  40214e:	e8 cd ec ff ff       	callq  400e20 <__printf_chk@plt>
  402153:	be 00 00 00 00       	mov    $0x0,%esi
  402158:	bf 00 00 00 00       	mov    $0x0,%edi
  40215d:	e8 f0 fb ff ff       	callq  401d52 <notify_server>
  402162:	bf 01 00 00 00       	mov    $0x1,%edi
  402167:	e8 04 ed ff ff       	callq  400e70 <exit@plt>

000000000040216c <launch>:
  40216c:	55                   	push   %rbp
  40216d:	48 89 e5             	mov    %rsp,%rbp
  402170:	48 83 ec 10          	sub    $0x10,%rsp
  402174:	48 89 fa             	mov    %rdi,%rdx
  402177:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40217e:	00 00 
  402180:	48 89 45 f8          	mov    %rax,-0x8(%rbp)
  402184:	31 c0                	xor    %eax,%eax
  402186:	48 8d 47 1e          	lea    0x1e(%rdi),%rax
  40218a:	48 83 e0 f0          	and    $0xfffffffffffffff0,%rax
  40218e:	48 29 c4             	sub    %rax,%rsp
  402191:	48 8d 7c 24 0f       	lea    0xf(%rsp),%rdi
  402196:	48 83 e7 f0          	and    $0xfffffffffffffff0,%rdi
  40219a:	be f4 00 00 00       	mov    $0xf4,%esi
  40219f:	e8 8c eb ff ff       	callq  400d30 <memset@plt>
  4021a4:	48 8b 05 15 33 20 00 	mov    0x203315(%rip),%rax        # 6054c0 <stdin@@GLIBC_2.2.5>
  4021ab:	48 39 05 5e 33 20 00 	cmp    %rax,0x20335e(%rip)        # 605510 <infile>
  4021b2:	75 14                	jne    4021c8 <launch+0x5c>
  4021b4:	be 64 36 40 00       	mov    $0x403664,%esi
  4021b9:	bf 01 00 00 00       	mov    $0x1,%edi
  4021be:	b8 00 00 00 00       	mov    $0x0,%eax
  4021c3:	e8 58 ec ff ff       	callq  400e20 <__printf_chk@plt>
  4021c8:	c7 05 4a 33 20 00 00 	movl   $0x0,0x20334a(%rip)        # 60551c <vlevel>
  4021cf:	00 00 00 
  4021d2:	b8 00 00 00 00       	mov    $0x0,%eax
  4021d7:	e8 37 f9 ff ff       	callq  401b13 <test>
  4021dc:	83 3d 45 33 20 00 00 	cmpl   $0x0,0x203345(%rip)        # 605528 <is_checker>
  4021e3:	74 14                	je     4021f9 <launch+0x8d>
  4021e5:	bf 71 36 40 00       	mov    $0x403671,%edi
  4021ea:	e8 01 eb ff ff       	callq  400cf0 <puts@plt>
  4021ef:	b8 00 00 00 00       	mov    $0x0,%eax
  4021f4:	e8 d2 fa ff ff       	callq  401ccb <check_fail>
  4021f9:	bf 7c 36 40 00       	mov    $0x40367c,%edi
  4021fe:	e8 ed ea ff ff       	callq  400cf0 <puts@plt>
  402203:	48 8b 45 f8          	mov    -0x8(%rbp),%rax
  402207:	64 48 33 04 25 28 00 	xor    %fs:0x28,%rax
  40220e:	00 00 
  402210:	74 05                	je     402217 <launch+0xab>
  402212:	e8 f9 ea ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402217:	c9                   	leaveq 
  402218:	c3                   	retq   

0000000000402219 <stable_launch>:
  402219:	53                   	push   %rbx
  40221a:	48 89 3d e7 32 20 00 	mov    %rdi,0x2032e7(%rip)        # 605508 <global_offset>
  402221:	41 b9 00 00 00 00    	mov    $0x0,%r9d
  402227:	41 b8 00 00 00 00    	mov    $0x0,%r8d
  40222d:	b9 32 01 00 00       	mov    $0x132,%ecx
  402232:	ba 07 00 00 00       	mov    $0x7,%edx
  402237:	be 00 00 10 00       	mov    $0x100000,%esi
  40223c:	bf 00 60 58 55       	mov    $0x55586000,%edi
  402241:	e8 da ea ff ff       	callq  400d20 <mmap@plt>
  402246:	48 89 c3             	mov    %rax,%rbx
  402249:	48 3d 00 60 58 55    	cmp    $0x55586000,%rax
  40224f:	74 37                	je     402288 <stable_launch+0x6f>
  402251:	be 00 00 10 00       	mov    $0x100000,%esi
  402256:	48 89 c7             	mov    %rax,%rdi
  402259:	e8 b2 eb ff ff       	callq  400e10 <munmap@plt>
  40225e:	b9 00 60 58 55       	mov    $0x55586000,%ecx
  402263:	ba 30 38 40 00       	mov    $0x403830,%edx
  402268:	be 01 00 00 00       	mov    $0x1,%esi
  40226d:	48 8b 3d 6c 32 20 00 	mov    0x20326c(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  402274:	b8 00 00 00 00       	mov    $0x0,%eax
  402279:	e8 12 ec ff ff       	callq  400e90 <__fprintf_chk@plt>
  40227e:	bf 01 00 00 00       	mov    $0x1,%edi
  402283:	e8 e8 eb ff ff       	callq  400e70 <exit@plt>
  402288:	48 8d 90 f8 ff 0f 00 	lea    0xffff8(%rax),%rdx
  40228f:	48 89 15 ba 3e 20 00 	mov    %rdx,0x203eba(%rip)        # 606150 <stack_top>
  402296:	48 89 e0             	mov    %rsp,%rax
  402299:	48 89 d4             	mov    %rdx,%rsp
  40229c:	48 89 c2             	mov    %rax,%rdx
  40229f:	48 89 15 5a 32 20 00 	mov    %rdx,0x20325a(%rip)        # 605500 <global_save_stack>
  4022a6:	48 8b 3d 5b 32 20 00 	mov    0x20325b(%rip),%rdi        # 605508 <global_offset>
  4022ad:	e8 ba fe ff ff       	callq  40216c <launch>
  4022b2:	48 8b 05 47 32 20 00 	mov    0x203247(%rip),%rax        # 605500 <global_save_stack>
  4022b9:	48 89 c4             	mov    %rax,%rsp
  4022bc:	be 00 00 10 00       	mov    $0x100000,%esi
  4022c1:	48 89 df             	mov    %rbx,%rdi
  4022c4:	e8 47 eb ff ff       	callq  400e10 <munmap@plt>
  4022c9:	5b                   	pop    %rbx
  4022ca:	c3                   	retq   

00000000004022cb <rio_readinitb>:
  4022cb:	89 37                	mov    %esi,(%rdi)
  4022cd:	c7 47 04 00 00 00 00 	movl   $0x0,0x4(%rdi)
  4022d4:	48 8d 47 10          	lea    0x10(%rdi),%rax
  4022d8:	48 89 47 08          	mov    %rax,0x8(%rdi)
  4022dc:	c3                   	retq   

00000000004022dd <sigalrm_handler>:
  4022dd:	48 83 ec 08          	sub    $0x8,%rsp
  4022e1:	b9 00 00 00 00       	mov    $0x0,%ecx
  4022e6:	ba 70 38 40 00       	mov    $0x403870,%edx
  4022eb:	be 01 00 00 00       	mov    $0x1,%esi
  4022f0:	48 8b 3d e9 31 20 00 	mov    0x2031e9(%rip),%rdi        # 6054e0 <stderr@@GLIBC_2.2.5>
  4022f7:	b8 00 00 00 00       	mov    $0x0,%eax
  4022fc:	e8 8f eb ff ff       	callq  400e90 <__fprintf_chk@plt>
  402301:	bf 01 00 00 00       	mov    $0x1,%edi
  402306:	e8 65 eb ff ff       	callq  400e70 <exit@plt>

000000000040230b <rio_writen>:
  40230b:	41 55                	push   %r13
  40230d:	41 54                	push   %r12
  40230f:	55                   	push   %rbp
  402310:	53                   	push   %rbx
  402311:	48 83 ec 08          	sub    $0x8,%rsp
  402315:	41 89 fc             	mov    %edi,%r12d
  402318:	48 89 f5             	mov    %rsi,%rbp
  40231b:	49 89 d5             	mov    %rdx,%r13
  40231e:	48 89 d3             	mov    %rdx,%rbx
  402321:	eb 28                	jmp    40234b <rio_writen+0x40>
  402323:	48 89 da             	mov    %rbx,%rdx
  402326:	48 89 ee             	mov    %rbp,%rsi
  402329:	44 89 e7             	mov    %r12d,%edi
  40232c:	e8 cf e9 ff ff       	callq  400d00 <write@plt>
  402331:	48 85 c0             	test   %rax,%rax
  402334:	7f 0f                	jg     402345 <rio_writen+0x3a>
  402336:	e8 75 e9 ff ff       	callq  400cb0 <__errno_location@plt>
  40233b:	83 38 04             	cmpl   $0x4,(%rax)
  40233e:	75 15                	jne    402355 <rio_writen+0x4a>
  402340:	b8 00 00 00 00       	mov    $0x0,%eax
  402345:	48 29 c3             	sub    %rax,%rbx
  402348:	48 01 c5             	add    %rax,%rbp
  40234b:	48 85 db             	test   %rbx,%rbx
  40234e:	75 d3                	jne    402323 <rio_writen+0x18>
  402350:	4c 89 e8             	mov    %r13,%rax
  402353:	eb 07                	jmp    40235c <rio_writen+0x51>
  402355:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  40235c:	48 83 c4 08          	add    $0x8,%rsp
  402360:	5b                   	pop    %rbx
  402361:	5d                   	pop    %rbp
  402362:	41 5c                	pop    %r12
  402364:	41 5d                	pop    %r13
  402366:	c3                   	retq   

0000000000402367 <rio_read>:
  402367:	41 55                	push   %r13
  402369:	41 54                	push   %r12
  40236b:	55                   	push   %rbp
  40236c:	53                   	push   %rbx
  40236d:	48 83 ec 08          	sub    $0x8,%rsp
  402371:	48 89 fb             	mov    %rdi,%rbx
  402374:	49 89 f5             	mov    %rsi,%r13
  402377:	49 89 d4             	mov    %rdx,%r12
  40237a:	eb 2e                	jmp    4023aa <rio_read+0x43>
  40237c:	48 8d 6b 10          	lea    0x10(%rbx),%rbp
  402380:	8b 3b                	mov    (%rbx),%edi
  402382:	ba 00 20 00 00       	mov    $0x2000,%edx
  402387:	48 89 ee             	mov    %rbp,%rsi
  40238a:	e8 d1 e9 ff ff       	callq  400d60 <read@plt>
  40238f:	89 43 04             	mov    %eax,0x4(%rbx)
  402392:	85 c0                	test   %eax,%eax
  402394:	79 0c                	jns    4023a2 <rio_read+0x3b>
  402396:	e8 15 e9 ff ff       	callq  400cb0 <__errno_location@plt>
  40239b:	83 38 04             	cmpl   $0x4,(%rax)
  40239e:	74 0a                	je     4023aa <rio_read+0x43>
  4023a0:	eb 37                	jmp    4023d9 <rio_read+0x72>
  4023a2:	85 c0                	test   %eax,%eax
  4023a4:	74 3c                	je     4023e2 <rio_read+0x7b>
  4023a6:	48 89 6b 08          	mov    %rbp,0x8(%rbx)
  4023aa:	8b 6b 04             	mov    0x4(%rbx),%ebp
  4023ad:	85 ed                	test   %ebp,%ebp
  4023af:	7e cb                	jle    40237c <rio_read+0x15>
  4023b1:	89 e8                	mov    %ebp,%eax
  4023b3:	49 39 c4             	cmp    %rax,%r12
  4023b6:	77 03                	ja     4023bb <rio_read+0x54>
  4023b8:	44 89 e5             	mov    %r12d,%ebp
  4023bb:	4c 63 e5             	movslq %ebp,%r12
  4023be:	48 8b 73 08          	mov    0x8(%rbx),%rsi
  4023c2:	4c 89 e2             	mov    %r12,%rdx
  4023c5:	4c 89 ef             	mov    %r13,%rdi
  4023c8:	e8 f3 e9 ff ff       	callq  400dc0 <memcpy@plt>
  4023cd:	4c 01 63 08          	add    %r12,0x8(%rbx)
  4023d1:	29 6b 04             	sub    %ebp,0x4(%rbx)
  4023d4:	4c 89 e0             	mov    %r12,%rax
  4023d7:	eb 0e                	jmp    4023e7 <rio_read+0x80>
  4023d9:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  4023e0:	eb 05                	jmp    4023e7 <rio_read+0x80>
  4023e2:	b8 00 00 00 00       	mov    $0x0,%eax
  4023e7:	48 83 c4 08          	add    $0x8,%rsp
  4023eb:	5b                   	pop    %rbx
  4023ec:	5d                   	pop    %rbp
  4023ed:	41 5c                	pop    %r12
  4023ef:	41 5d                	pop    %r13
  4023f1:	c3                   	retq   

00000000004023f2 <rio_readlineb>:
  4023f2:	41 55                	push   %r13
  4023f4:	41 54                	push   %r12
  4023f6:	55                   	push   %rbp
  4023f7:	53                   	push   %rbx
  4023f8:	48 83 ec 18          	sub    $0x18,%rsp
  4023fc:	49 89 fd             	mov    %rdi,%r13
  4023ff:	48 89 f5             	mov    %rsi,%rbp
  402402:	49 89 d4             	mov    %rdx,%r12
  402405:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  40240c:	00 00 
  40240e:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  402413:	31 c0                	xor    %eax,%eax
  402415:	bb 01 00 00 00       	mov    $0x1,%ebx
  40241a:	eb 3f                	jmp    40245b <rio_readlineb+0x69>
  40241c:	ba 01 00 00 00       	mov    $0x1,%edx
  402421:	48 8d 74 24 07       	lea    0x7(%rsp),%rsi
  402426:	4c 89 ef             	mov    %r13,%rdi
  402429:	e8 39 ff ff ff       	callq  402367 <rio_read>
  40242e:	83 f8 01             	cmp    $0x1,%eax
  402431:	75 15                	jne    402448 <rio_readlineb+0x56>
  402433:	48 8d 45 01          	lea    0x1(%rbp),%rax
  402437:	0f b6 54 24 07       	movzbl 0x7(%rsp),%edx
  40243c:	88 55 00             	mov    %dl,0x0(%rbp)
  40243f:	80 7c 24 07 0a       	cmpb   $0xa,0x7(%rsp)
  402444:	75 0e                	jne    402454 <rio_readlineb+0x62>
  402446:	eb 1a                	jmp    402462 <rio_readlineb+0x70>
  402448:	85 c0                	test   %eax,%eax
  40244a:	75 22                	jne    40246e <rio_readlineb+0x7c>
  40244c:	48 83 fb 01          	cmp    $0x1,%rbx
  402450:	75 13                	jne    402465 <rio_readlineb+0x73>
  402452:	eb 23                	jmp    402477 <rio_readlineb+0x85>
  402454:	48 83 c3 01          	add    $0x1,%rbx
  402458:	48 89 c5             	mov    %rax,%rbp
  40245b:	4c 39 e3             	cmp    %r12,%rbx
  40245e:	72 bc                	jb     40241c <rio_readlineb+0x2a>
  402460:	eb 03                	jmp    402465 <rio_readlineb+0x73>
  402462:	48 89 c5             	mov    %rax,%rbp
  402465:	c6 45 00 00          	movb   $0x0,0x0(%rbp)
  402469:	48 89 d8             	mov    %rbx,%rax
  40246c:	eb 0e                	jmp    40247c <rio_readlineb+0x8a>
  40246e:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
  402475:	eb 05                	jmp    40247c <rio_readlineb+0x8a>
  402477:	b8 00 00 00 00       	mov    $0x0,%eax
  40247c:	48 8b 4c 24 08       	mov    0x8(%rsp),%rcx
  402481:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402488:	00 00 
  40248a:	74 05                	je     402491 <rio_readlineb+0x9f>
  40248c:	e8 7f e8 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402491:	48 83 c4 18          	add    $0x18,%rsp
  402495:	5b                   	pop    %rbx
  402496:	5d                   	pop    %rbp
  402497:	41 5c                	pop    %r12
  402499:	41 5d                	pop    %r13
  40249b:	c3                   	retq   

000000000040249c <urlencode>:
  40249c:	41 54                	push   %r12
  40249e:	55                   	push   %rbp
  40249f:	53                   	push   %rbx
  4024a0:	48 83 ec 10          	sub    $0x10,%rsp
  4024a4:	48 89 fb             	mov    %rdi,%rbx
  4024a7:	48 89 f5             	mov    %rsi,%rbp
  4024aa:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4024b1:	00 00 
  4024b3:	48 89 44 24 08       	mov    %rax,0x8(%rsp)
  4024b8:	31 c0                	xor    %eax,%eax
  4024ba:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  4024c1:	f2 ae                	repnz scas %es:(%rdi),%al
  4024c3:	48 f7 d1             	not    %rcx
  4024c6:	8d 41 ff             	lea    -0x1(%rcx),%eax
  4024c9:	e9 aa 00 00 00       	jmpq   402578 <urlencode+0xdc>
  4024ce:	44 0f b6 03          	movzbl (%rbx),%r8d
  4024d2:	41 80 f8 2a          	cmp    $0x2a,%r8b
  4024d6:	0f 94 c2             	sete   %dl
  4024d9:	41 80 f8 2d          	cmp    $0x2d,%r8b
  4024dd:	0f 94 c0             	sete   %al
  4024e0:	08 c2                	or     %al,%dl
  4024e2:	75 24                	jne    402508 <urlencode+0x6c>
  4024e4:	41 80 f8 2e          	cmp    $0x2e,%r8b
  4024e8:	74 1e                	je     402508 <urlencode+0x6c>
  4024ea:	41 80 f8 5f          	cmp    $0x5f,%r8b
  4024ee:	74 18                	je     402508 <urlencode+0x6c>
  4024f0:	41 8d 40 d0          	lea    -0x30(%r8),%eax
  4024f4:	3c 09                	cmp    $0x9,%al
  4024f6:	76 10                	jbe    402508 <urlencode+0x6c>
  4024f8:	41 8d 40 bf          	lea    -0x41(%r8),%eax
  4024fc:	3c 19                	cmp    $0x19,%al
  4024fe:	76 08                	jbe    402508 <urlencode+0x6c>
  402500:	41 8d 40 9f          	lea    -0x61(%r8),%eax
  402504:	3c 19                	cmp    $0x19,%al
  402506:	77 0a                	ja     402512 <urlencode+0x76>
  402508:	44 88 45 00          	mov    %r8b,0x0(%rbp)
  40250c:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402510:	eb 5f                	jmp    402571 <urlencode+0xd5>
  402512:	41 80 f8 20          	cmp    $0x20,%r8b
  402516:	75 0a                	jne    402522 <urlencode+0x86>
  402518:	c6 45 00 2b          	movb   $0x2b,0x0(%rbp)
  40251c:	48 8d 6d 01          	lea    0x1(%rbp),%rbp
  402520:	eb 4f                	jmp    402571 <urlencode+0xd5>
  402522:	41 8d 40 e0          	lea    -0x20(%r8),%eax
  402526:	3c 5f                	cmp    $0x5f,%al
  402528:	0f 96 c2             	setbe  %dl
  40252b:	41 80 f8 09          	cmp    $0x9,%r8b
  40252f:	0f 94 c0             	sete   %al
  402532:	08 c2                	or     %al,%dl
  402534:	74 50                	je     402586 <urlencode+0xea>
  402536:	45 0f b6 c0          	movzbl %r8b,%r8d
  40253a:	b9 28 39 40 00       	mov    $0x403928,%ecx
  40253f:	ba 08 00 00 00       	mov    $0x8,%edx
  402544:	be 01 00 00 00       	mov    $0x1,%esi
  402549:	48 89 e7             	mov    %rsp,%rdi
  40254c:	b8 00 00 00 00       	mov    $0x0,%eax
  402551:	e8 4a e9 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402556:	0f b6 04 24          	movzbl (%rsp),%eax
  40255a:	88 45 00             	mov    %al,0x0(%rbp)
  40255d:	0f b6 44 24 01       	movzbl 0x1(%rsp),%eax
  402562:	88 45 01             	mov    %al,0x1(%rbp)
  402565:	0f b6 44 24 02       	movzbl 0x2(%rsp),%eax
  40256a:	88 45 02             	mov    %al,0x2(%rbp)
  40256d:	48 8d 6d 03          	lea    0x3(%rbp),%rbp
  402571:	48 83 c3 01          	add    $0x1,%rbx
  402575:	44 89 e0             	mov    %r12d,%eax
  402578:	44 8d 60 ff          	lea    -0x1(%rax),%r12d
  40257c:	85 c0                	test   %eax,%eax
  40257e:	0f 85 4a ff ff ff    	jne    4024ce <urlencode+0x32>
  402584:	eb 05                	jmp    40258b <urlencode+0xef>
  402586:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  40258b:	48 8b 74 24 08       	mov    0x8(%rsp),%rsi
  402590:	64 48 33 34 25 28 00 	xor    %fs:0x28,%rsi
  402597:	00 00 
  402599:	74 05                	je     4025a0 <urlencode+0x104>
  40259b:	e8 70 e7 ff ff       	callq  400d10 <__stack_chk_fail@plt>
  4025a0:	48 83 c4 10          	add    $0x10,%rsp
  4025a4:	5b                   	pop    %rbx
  4025a5:	5d                   	pop    %rbp
  4025a6:	41 5c                	pop    %r12
  4025a8:	c3                   	retq   

00000000004025a9 <submitr>:
  4025a9:	41 57                	push   %r15
  4025ab:	41 56                	push   %r14
  4025ad:	41 55                	push   %r13
  4025af:	41 54                	push   %r12
  4025b1:	55                   	push   %rbp
  4025b2:	53                   	push   %rbx
  4025b3:	48 81 ec 58 a0 00 00 	sub    $0xa058,%rsp
  4025ba:	49 89 fd             	mov    %rdi,%r13
  4025bd:	89 74 24 0c          	mov    %esi,0xc(%rsp)
  4025c1:	48 89 14 24          	mov    %rdx,(%rsp)
  4025c5:	49 89 ce             	mov    %rcx,%r14
  4025c8:	4d 89 c7             	mov    %r8,%r15
  4025cb:	4d 89 cc             	mov    %r9,%r12
  4025ce:	48 8b 9c 24 90 a0 00 	mov    0xa090(%rsp),%rbx
  4025d5:	00 
  4025d6:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  4025dd:	00 00 
  4025df:	48 89 84 24 48 a0 00 	mov    %rax,0xa048(%rsp)
  4025e6:	00 
  4025e7:	31 c0                	xor    %eax,%eax
  4025e9:	c7 44 24 1c 00 00 00 	movl   $0x0,0x1c(%rsp)
  4025f0:	00 
  4025f1:	ba 00 00 00 00       	mov    $0x0,%edx
  4025f6:	be 01 00 00 00       	mov    $0x1,%esi
  4025fb:	bf 02 00 00 00       	mov    $0x2,%edi
  402600:	e8 ab e8 ff ff       	callq  400eb0 <socket@plt>
  402605:	85 c0                	test   %eax,%eax
  402607:	79 4e                	jns    402657 <submitr+0xae>
  402609:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402610:	3a 20 43 
  402613:	48 89 03             	mov    %rax,(%rbx)
  402616:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  40261d:	20 75 6e 
  402620:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402624:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  40262b:	74 6f 20 
  40262e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402632:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402639:	65 20 73 
  40263c:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402640:	c7 43 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbx)
  402647:	66 c7 43 24 74 00    	movw   $0x74,0x24(%rbx)
  40264d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402652:	e9 b3 06 00 00       	jmpq   402d0a <submitr+0x761>
  402657:	89 c5                	mov    %eax,%ebp
  402659:	4c 89 ef             	mov    %r13,%rdi
  40265c:	e8 2f e7 ff ff       	callq  400d90 <gethostbyname@plt>
  402661:	48 85 c0             	test   %rax,%rax
  402664:	75 75                	jne    4026db <submitr+0x132>
  402666:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  40266d:	3a 20 44 
  402670:	48 89 03             	mov    %rax,(%rbx)
  402673:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  40267a:	20 75 6e 
  40267d:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402681:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402688:	74 6f 20 
  40268b:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40268f:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402696:	76 65 20 
  402699:	48 89 43 18          	mov    %rax,0x18(%rbx)
  40269d:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  4026a4:	61 62 20 
  4026a7:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4026ab:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  4026b2:	72 20 61 
  4026b5:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4026b9:	c7 43 30 64 64 72 65 	movl   $0x65726464,0x30(%rbx)
  4026c0:	66 c7 43 34 73 73    	movw   $0x7373,0x34(%rbx)
  4026c6:	c6 43 36 00          	movb   $0x0,0x36(%rbx)
  4026ca:	89 ef                	mov    %ebp,%edi
  4026cc:	e8 7f e6 ff ff       	callq  400d50 <close@plt>
  4026d1:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4026d6:	e9 2f 06 00 00       	jmpq   402d0a <submitr+0x761>
  4026db:	48 c7 44 24 20 00 00 	movq   $0x0,0x20(%rsp)
  4026e2:	00 00 
  4026e4:	48 c7 44 24 28 00 00 	movq   $0x0,0x28(%rsp)
  4026eb:	00 00 
  4026ed:	66 c7 44 24 20 02 00 	movw   $0x2,0x20(%rsp)
  4026f4:	48 63 50 14          	movslq 0x14(%rax),%rdx
  4026f8:	48 8b 40 18          	mov    0x18(%rax),%rax
  4026fc:	48 8b 30             	mov    (%rax),%rsi
  4026ff:	48 8d 7c 24 24       	lea    0x24(%rsp),%rdi
  402704:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402709:	e8 92 e6 ff ff       	callq  400da0 <__memmove_chk@plt>
  40270e:	0f b7 44 24 0c       	movzwl 0xc(%rsp),%eax
  402713:	66 c1 c8 08          	ror    $0x8,%ax
  402717:	66 89 44 24 22       	mov    %ax,0x22(%rsp)
  40271c:	ba 10 00 00 00       	mov    $0x10,%edx
  402721:	48 8d 74 24 20       	lea    0x20(%rsp),%rsi
  402726:	89 ef                	mov    %ebp,%edi
  402728:	e8 53 e7 ff ff       	callq  400e80 <connect@plt>
  40272d:	85 c0                	test   %eax,%eax
  40272f:	79 67                	jns    402798 <submitr+0x1ef>
  402731:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402738:	3a 20 55 
  40273b:	48 89 03             	mov    %rax,(%rbx)
  40273e:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402745:	20 74 6f 
  402748:	48 89 43 08          	mov    %rax,0x8(%rbx)
  40274c:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402753:	65 63 74 
  402756:	48 89 43 10          	mov    %rax,0x10(%rbx)
  40275a:	48 b8 20 74 6f 20 74 	movabs $0x20656874206f7420,%rax
  402761:	68 65 20 
  402764:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402768:	48 b8 41 75 74 6f 6c 	movabs $0x2062616c6f747541,%rax
  40276f:	61 62 20 
  402772:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402776:	c7 43 28 73 65 72 76 	movl   $0x76726573,0x28(%rbx)
  40277d:	66 c7 43 2c 65 72    	movw   $0x7265,0x2c(%rbx)
  402783:	c6 43 2e 00          	movb   $0x0,0x2e(%rbx)
  402787:	89 ef                	mov    %ebp,%edi
  402789:	e8 c2 e5 ff ff       	callq  400d50 <close@plt>
  40278e:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402793:	e9 72 05 00 00       	jmpq   402d0a <submitr+0x761>
  402798:	48 c7 c6 ff ff ff ff 	mov    $0xffffffffffffffff,%rsi
  40279f:	b8 00 00 00 00       	mov    $0x0,%eax
  4027a4:	48 89 f1             	mov    %rsi,%rcx
  4027a7:	4c 89 e7             	mov    %r12,%rdi
  4027aa:	f2 ae                	repnz scas %es:(%rdi),%al
  4027ac:	48 f7 d1             	not    %rcx
  4027af:	48 89 ca             	mov    %rcx,%rdx
  4027b2:	48 89 f1             	mov    %rsi,%rcx
  4027b5:	48 8b 3c 24          	mov    (%rsp),%rdi
  4027b9:	f2 ae                	repnz scas %es:(%rdi),%al
  4027bb:	48 f7 d1             	not    %rcx
  4027be:	49 89 c8             	mov    %rcx,%r8
  4027c1:	48 89 f1             	mov    %rsi,%rcx
  4027c4:	4c 89 f7             	mov    %r14,%rdi
  4027c7:	f2 ae                	repnz scas %es:(%rdi),%al
  4027c9:	48 f7 d1             	not    %rcx
  4027cc:	4d 8d 44 08 fe       	lea    -0x2(%r8,%rcx,1),%r8
  4027d1:	48 89 f1             	mov    %rsi,%rcx
  4027d4:	4c 89 ff             	mov    %r15,%rdi
  4027d7:	f2 ae                	repnz scas %es:(%rdi),%al
  4027d9:	48 89 c8             	mov    %rcx,%rax
  4027dc:	48 f7 d0             	not    %rax
  4027df:	49 8d 4c 00 ff       	lea    -0x1(%r8,%rax,1),%rcx
  4027e4:	48 8d 44 52 fd       	lea    -0x3(%rdx,%rdx,2),%rax
  4027e9:	48 8d 84 01 80 00 00 	lea    0x80(%rcx,%rax,1),%rax
  4027f0:	00 
  4027f1:	48 3d 00 20 00 00    	cmp    $0x2000,%rax
  4027f7:	76 72                	jbe    40286b <submitr+0x2c2>
  4027f9:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  402800:	3a 20 52 
  402803:	48 89 03             	mov    %rax,(%rbx)
  402806:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  40280d:	20 73 74 
  402810:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402814:	48 b8 72 69 6e 67 20 	movabs $0x6f6f7420676e6972,%rax
  40281b:	74 6f 6f 
  40281e:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402822:	48 b8 20 6c 61 72 67 	movabs $0x202e656772616c20,%rax
  402829:	65 2e 20 
  40282c:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402830:	48 b8 49 6e 63 72 65 	movabs $0x6573616572636e49,%rax
  402837:	61 73 65 
  40283a:	48 89 43 20          	mov    %rax,0x20(%rbx)
  40283e:	48 b8 20 53 55 42 4d 	movabs $0x5254494d42555320,%rax
  402845:	49 54 52 
  402848:	48 89 43 28          	mov    %rax,0x28(%rbx)
  40284c:	48 b8 5f 4d 41 58 42 	movabs $0x46554258414d5f,%rax
  402853:	55 46 00 
  402856:	48 89 43 30          	mov    %rax,0x30(%rbx)
  40285a:	89 ef                	mov    %ebp,%edi
  40285c:	e8 ef e4 ff ff       	callq  400d50 <close@plt>
  402861:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402866:	e9 9f 04 00 00       	jmpq   402d0a <submitr+0x761>
  40286b:	48 8d b4 24 40 40 00 	lea    0x4040(%rsp),%rsi
  402872:	00 
  402873:	b9 00 04 00 00       	mov    $0x400,%ecx
  402878:	b8 00 00 00 00       	mov    $0x0,%eax
  40287d:	48 89 f7             	mov    %rsi,%rdi
  402880:	f3 48 ab             	rep stos %rax,%es:(%rdi)
  402883:	4c 89 e7             	mov    %r12,%rdi
  402886:	e8 11 fc ff ff       	callq  40249c <urlencode>
  40288b:	85 c0                	test   %eax,%eax
  40288d:	0f 89 8a 00 00 00    	jns    40291d <submitr+0x374>
  402893:	48 b8 45 72 72 6f 72 	movabs $0x52203a726f727245,%rax
  40289a:	3a 20 52 
  40289d:	48 89 03             	mov    %rax,(%rbx)
  4028a0:	48 b8 65 73 75 6c 74 	movabs $0x747320746c757365,%rax
  4028a7:	20 73 74 
  4028aa:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4028ae:	48 b8 72 69 6e 67 20 	movabs $0x6e6f6320676e6972,%rax
  4028b5:	63 6f 6e 
  4028b8:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4028bc:	48 b8 74 61 69 6e 73 	movabs $0x6e6120736e696174,%rax
  4028c3:	20 61 6e 
  4028c6:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4028ca:	48 b8 20 69 6c 6c 65 	movabs $0x6c6167656c6c6920,%rax
  4028d1:	67 61 6c 
  4028d4:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4028d8:	48 b8 20 6f 72 20 75 	movabs $0x72706e7520726f20,%rax
  4028df:	6e 70 72 
  4028e2:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4028e6:	48 b8 69 6e 74 61 62 	movabs $0x20656c6261746e69,%rax
  4028ed:	6c 65 20 
  4028f0:	48 89 43 30          	mov    %rax,0x30(%rbx)
  4028f4:	48 b8 63 68 61 72 61 	movabs $0x6574636172616863,%rax
  4028fb:	63 74 65 
  4028fe:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402902:	66 c7 43 40 72 2e    	movw   $0x2e72,0x40(%rbx)
  402908:	c6 43 42 00          	movb   $0x0,0x42(%rbx)
  40290c:	89 ef                	mov    %ebp,%edi
  40290e:	e8 3d e4 ff ff       	callq  400d50 <close@plt>
  402913:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402918:	e9 ed 03 00 00       	jmpq   402d0a <submitr+0x761>
  40291d:	4c 8d a4 24 40 20 00 	lea    0x2040(%rsp),%r12
  402924:	00 
  402925:	48 83 ec 08          	sub    $0x8,%rsp
  402929:	41 55                	push   %r13
  40292b:	48 8d 84 24 50 40 00 	lea    0x4050(%rsp),%rax
  402932:	00 
  402933:	50                   	push   %rax
  402934:	41 56                	push   %r14
  402936:	4d 89 f9             	mov    %r15,%r9
  402939:	4c 8b 44 24 20       	mov    0x20(%rsp),%r8
  40293e:	b9 98 38 40 00       	mov    $0x403898,%ecx
  402943:	ba 00 20 00 00       	mov    $0x2000,%edx
  402948:	be 01 00 00 00       	mov    $0x1,%esi
  40294d:	4c 89 e7             	mov    %r12,%rdi
  402950:	b8 00 00 00 00       	mov    $0x0,%eax
  402955:	e8 46 e5 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  40295a:	b8 00 00 00 00       	mov    $0x0,%eax
  40295f:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
  402966:	4c 89 e7             	mov    %r12,%rdi
  402969:	f2 ae                	repnz scas %es:(%rdi),%al
  40296b:	48 f7 d1             	not    %rcx
  40296e:	48 8d 51 ff          	lea    -0x1(%rcx),%rdx
  402972:	48 83 c4 20          	add    $0x20,%rsp
  402976:	4c 89 e6             	mov    %r12,%rsi
  402979:	89 ef                	mov    %ebp,%edi
  40297b:	e8 8b f9 ff ff       	callq  40230b <rio_writen>
  402980:	48 85 c0             	test   %rax,%rax
  402983:	79 6b                	jns    4029f0 <submitr+0x447>
  402985:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  40298c:	3a 20 43 
  40298f:	48 89 03             	mov    %rax,(%rbx)
  402992:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402999:	20 75 6e 
  40299c:	48 89 43 08          	mov    %rax,0x8(%rbx)
  4029a0:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  4029a7:	74 6f 20 
  4029aa:	48 89 43 10          	mov    %rax,0x10(%rbx)
  4029ae:	48 b8 77 72 69 74 65 	movabs $0x6f74206574697277,%rax
  4029b5:	20 74 6f 
  4029b8:	48 89 43 18          	mov    %rax,0x18(%rbx)
  4029bc:	48 b8 20 74 68 65 20 	movabs $0x7475412065687420,%rax
  4029c3:	41 75 74 
  4029c6:	48 89 43 20          	mov    %rax,0x20(%rbx)
  4029ca:	48 b8 6f 6c 61 62 20 	movabs $0x7265732062616c6f,%rax
  4029d1:	73 65 72 
  4029d4:	48 89 43 28          	mov    %rax,0x28(%rbx)
  4029d8:	c7 43 30 76 65 72 00 	movl   $0x726576,0x30(%rbx)
  4029df:	89 ef                	mov    %ebp,%edi
  4029e1:	e8 6a e3 ff ff       	callq  400d50 <close@plt>
  4029e6:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  4029eb:	e9 1a 03 00 00       	jmpq   402d0a <submitr+0x761>
  4029f0:	89 ee                	mov    %ebp,%esi
  4029f2:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  4029f7:	e8 cf f8 ff ff       	callq  4022cb <rio_readinitb>
  4029fc:	ba 00 20 00 00       	mov    $0x2000,%edx
  402a01:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402a08:	00 
  402a09:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402a0e:	e8 df f9 ff ff       	callq  4023f2 <rio_readlineb>
  402a13:	48 85 c0             	test   %rax,%rax
  402a16:	7f 7f                	jg     402a97 <submitr+0x4ee>
  402a18:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402a1f:	3a 20 43 
  402a22:	48 89 03             	mov    %rax,(%rbx)
  402a25:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402a2c:	20 75 6e 
  402a2f:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402a33:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402a3a:	74 6f 20 
  402a3d:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402a41:	48 b8 72 65 61 64 20 	movabs $0x7269662064616572,%rax
  402a48:	66 69 72 
  402a4b:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402a4f:	48 b8 73 74 20 68 65 	movabs $0x6564616568207473,%rax
  402a56:	61 64 65 
  402a59:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402a5d:	48 b8 72 20 66 72 6f 	movabs $0x41206d6f72662072,%rax
  402a64:	6d 20 41 
  402a67:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402a6b:	48 b8 75 74 6f 6c 61 	movabs $0x732062616c6f7475,%rax
  402a72:	62 20 73 
  402a75:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402a79:	c7 43 38 65 72 76 65 	movl   $0x65767265,0x38(%rbx)
  402a80:	66 c7 43 3c 72 00    	movw   $0x72,0x3c(%rbx)
  402a86:	89 ef                	mov    %ebp,%edi
  402a88:	e8 c3 e2 ff ff       	callq  400d50 <close@plt>
  402a8d:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402a92:	e9 73 02 00 00       	jmpq   402d0a <submitr+0x761>
  402a97:	4c 8d 84 24 40 80 00 	lea    0x8040(%rsp),%r8
  402a9e:	00 
  402a9f:	48 8d 4c 24 1c       	lea    0x1c(%rsp),%rcx
  402aa4:	48 8d 94 24 40 60 00 	lea    0x6040(%rsp),%rdx
  402aab:	00 
  402aac:	be 2f 39 40 00       	mov    $0x40392f,%esi
  402ab1:	48 8d bc 24 40 20 00 	lea    0x2040(%rsp),%rdi
  402ab8:	00 
  402ab9:	b8 00 00 00 00       	mov    $0x0,%eax
  402abe:	e8 3d e3 ff ff       	callq  400e00 <__isoc99_sscanf@plt>
  402ac3:	e9 92 00 00 00       	jmpq   402b5a <submitr+0x5b1>
  402ac8:	ba 00 20 00 00       	mov    $0x2000,%edx
  402acd:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402ad4:	00 
  402ad5:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402ada:	e8 13 f9 ff ff       	callq  4023f2 <rio_readlineb>
  402adf:	48 85 c0             	test   %rax,%rax
  402ae2:	7f 76                	jg     402b5a <submitr+0x5b1>
  402ae4:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402aeb:	3a 20 43 
  402aee:	48 89 03             	mov    %rax,(%rbx)
  402af1:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402af8:	20 75 6e 
  402afb:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402aff:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402b06:	74 6f 20 
  402b09:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402b0d:	48 b8 72 65 61 64 20 	movabs $0x6165682064616572,%rax
  402b14:	68 65 61 
  402b17:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402b1b:	48 b8 64 65 72 73 20 	movabs $0x6f72662073726564,%rax
  402b22:	66 72 6f 
  402b25:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402b29:	48 b8 6d 20 41 75 74 	movabs $0x616c6f747541206d,%rax
  402b30:	6f 6c 61 
  402b33:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402b37:	48 b8 62 20 73 65 72 	movabs $0x7265767265732062,%rax
  402b3e:	76 65 72 
  402b41:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402b45:	c6 43 38 00          	movb   $0x0,0x38(%rbx)
  402b49:	89 ef                	mov    %ebp,%edi
  402b4b:	e8 00 e2 ff ff       	callq  400d50 <close@plt>
  402b50:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402b55:	e9 b0 01 00 00       	jmpq   402d0a <submitr+0x761>
  402b5a:	0f b6 94 24 40 20 00 	movzbl 0x2040(%rsp),%edx
  402b61:	00 
  402b62:	b8 0d 00 00 00       	mov    $0xd,%eax
  402b67:	29 d0                	sub    %edx,%eax
  402b69:	75 1b                	jne    402b86 <submitr+0x5dd>
  402b6b:	0f b6 94 24 41 20 00 	movzbl 0x2041(%rsp),%edx
  402b72:	00 
  402b73:	b8 0a 00 00 00       	mov    $0xa,%eax
  402b78:	29 d0                	sub    %edx,%eax
  402b7a:	75 0a                	jne    402b86 <submitr+0x5dd>
  402b7c:	0f b6 84 24 42 20 00 	movzbl 0x2042(%rsp),%eax
  402b83:	00 
  402b84:	f7 d8                	neg    %eax
  402b86:	85 c0                	test   %eax,%eax
  402b88:	0f 85 3a ff ff ff    	jne    402ac8 <submitr+0x51f>
  402b8e:	ba 00 20 00 00       	mov    $0x2000,%edx
  402b93:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402b9a:	00 
  402b9b:	48 8d 7c 24 30       	lea    0x30(%rsp),%rdi
  402ba0:	e8 4d f8 ff ff       	callq  4023f2 <rio_readlineb>
  402ba5:	48 85 c0             	test   %rax,%rax
  402ba8:	0f 8f 80 00 00 00    	jg     402c2e <submitr+0x685>
  402bae:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402bb5:	3a 20 43 
  402bb8:	48 89 03             	mov    %rax,(%rbx)
  402bbb:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402bc2:	20 75 6e 
  402bc5:	48 89 43 08          	mov    %rax,0x8(%rbx)
  402bc9:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402bd0:	74 6f 20 
  402bd3:	48 89 43 10          	mov    %rax,0x10(%rbx)
  402bd7:	48 b8 72 65 61 64 20 	movabs $0x6174732064616572,%rax
  402bde:	73 74 61 
  402be1:	48 89 43 18          	mov    %rax,0x18(%rbx)
  402be5:	48 b8 74 75 73 20 6d 	movabs $0x7373656d20737574,%rax
  402bec:	65 73 73 
  402bef:	48 89 43 20          	mov    %rax,0x20(%rbx)
  402bf3:	48 b8 61 67 65 20 66 	movabs $0x6d6f726620656761,%rax
  402bfa:	72 6f 6d 
  402bfd:	48 89 43 28          	mov    %rax,0x28(%rbx)
  402c01:	48 b8 20 41 75 74 6f 	movabs $0x62616c6f74754120,%rax
  402c08:	6c 61 62 
  402c0b:	48 89 43 30          	mov    %rax,0x30(%rbx)
  402c0f:	48 b8 20 73 65 72 76 	movabs $0x72657672657320,%rax
  402c16:	65 72 00 
  402c19:	48 89 43 38          	mov    %rax,0x38(%rbx)
  402c1d:	89 ef                	mov    %ebp,%edi
  402c1f:	e8 2c e1 ff ff       	callq  400d50 <close@plt>
  402c24:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c29:	e9 dc 00 00 00       	jmpq   402d0a <submitr+0x761>
  402c2e:	44 8b 44 24 1c       	mov    0x1c(%rsp),%r8d
  402c33:	41 81 f8 c8 00 00 00 	cmp    $0xc8,%r8d
  402c3a:	74 37                	je     402c73 <submitr+0x6ca>
  402c3c:	4c 8d 8c 24 40 80 00 	lea    0x8040(%rsp),%r9
  402c43:	00 
  402c44:	b9 f8 38 40 00       	mov    $0x4038f8,%ecx
  402c49:	48 c7 c2 ff ff ff ff 	mov    $0xffffffffffffffff,%rdx
  402c50:	be 01 00 00 00       	mov    $0x1,%esi
  402c55:	48 89 df             	mov    %rbx,%rdi
  402c58:	b8 00 00 00 00       	mov    $0x0,%eax
  402c5d:	e8 3e e2 ff ff       	callq  400ea0 <__sprintf_chk@plt>
  402c62:	89 ef                	mov    %ebp,%edi
  402c64:	e8 e7 e0 ff ff       	callq  400d50 <close@plt>
  402c69:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402c6e:	e9 97 00 00 00       	jmpq   402d0a <submitr+0x761>
  402c73:	48 8d b4 24 40 20 00 	lea    0x2040(%rsp),%rsi
  402c7a:	00 
  402c7b:	48 89 df             	mov    %rbx,%rdi
  402c7e:	e8 5d e0 ff ff       	callq  400ce0 <strcpy@plt>
  402c83:	89 ef                	mov    %ebp,%edi
  402c85:	e8 c6 e0 ff ff       	callq  400d50 <close@plt>
  402c8a:	0f b6 03             	movzbl (%rbx),%eax
  402c8d:	ba 4f 00 00 00       	mov    $0x4f,%edx
  402c92:	29 c2                	sub    %eax,%edx
  402c94:	75 22                	jne    402cb8 <submitr+0x70f>
  402c96:	0f b6 4b 01          	movzbl 0x1(%rbx),%ecx
  402c9a:	b8 4b 00 00 00       	mov    $0x4b,%eax
  402c9f:	29 c8                	sub    %ecx,%eax
  402ca1:	75 17                	jne    402cba <submitr+0x711>
  402ca3:	0f b6 4b 02          	movzbl 0x2(%rbx),%ecx
  402ca7:	b8 0a 00 00 00       	mov    $0xa,%eax
  402cac:	29 c8                	sub    %ecx,%eax
  402cae:	75 0a                	jne    402cba <submitr+0x711>
  402cb0:	0f b6 43 03          	movzbl 0x3(%rbx),%eax
  402cb4:	f7 d8                	neg    %eax
  402cb6:	eb 02                	jmp    402cba <submitr+0x711>
  402cb8:	89 d0                	mov    %edx,%eax
  402cba:	85 c0                	test   %eax,%eax
  402cbc:	74 40                	je     402cfe <submitr+0x755>
  402cbe:	bf 40 39 40 00       	mov    $0x403940,%edi
  402cc3:	b9 05 00 00 00       	mov    $0x5,%ecx
  402cc8:	48 89 de             	mov    %rbx,%rsi
  402ccb:	f3 a6                	repz cmpsb %es:(%rdi),%ds:(%rsi)
  402ccd:	0f 97 c0             	seta   %al
  402cd0:	0f 92 c1             	setb   %cl
  402cd3:	29 c8                	sub    %ecx,%eax
  402cd5:	0f be c0             	movsbl %al,%eax
  402cd8:	85 c0                	test   %eax,%eax
  402cda:	74 2e                	je     402d0a <submitr+0x761>
  402cdc:	85 d2                	test   %edx,%edx
  402cde:	75 13                	jne    402cf3 <submitr+0x74a>
  402ce0:	0f b6 43 01          	movzbl 0x1(%rbx),%eax
  402ce4:	ba 4b 00 00 00       	mov    $0x4b,%edx
  402ce9:	29 c2                	sub    %eax,%edx
  402ceb:	75 06                	jne    402cf3 <submitr+0x74a>
  402ced:	0f b6 53 02          	movzbl 0x2(%rbx),%edx
  402cf1:	f7 da                	neg    %edx
  402cf3:	85 d2                	test   %edx,%edx
  402cf5:	75 0e                	jne    402d05 <submitr+0x75c>
  402cf7:	b8 00 00 00 00       	mov    $0x0,%eax
  402cfc:	eb 0c                	jmp    402d0a <submitr+0x761>
  402cfe:	b8 00 00 00 00       	mov    $0x0,%eax
  402d03:	eb 05                	jmp    402d0a <submitr+0x761>
  402d05:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402d0a:	48 8b 9c 24 48 a0 00 	mov    0xa048(%rsp),%rbx
  402d11:	00 
  402d12:	64 48 33 1c 25 28 00 	xor    %fs:0x28,%rbx
  402d19:	00 00 
  402d1b:	74 05                	je     402d22 <submitr+0x779>
  402d1d:	e8 ee df ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402d22:	48 81 c4 58 a0 00 00 	add    $0xa058,%rsp
  402d29:	5b                   	pop    %rbx
  402d2a:	5d                   	pop    %rbp
  402d2b:	41 5c                	pop    %r12
  402d2d:	41 5d                	pop    %r13
  402d2f:	41 5e                	pop    %r14
  402d31:	41 5f                	pop    %r15
  402d33:	c3                   	retq   

0000000000402d34 <init_timeout>:
  402d34:	85 ff                	test   %edi,%edi
  402d36:	74 23                	je     402d5b <init_timeout+0x27>
  402d38:	53                   	push   %rbx
  402d39:	89 fb                	mov    %edi,%ebx
  402d3b:	85 ff                	test   %edi,%edi
  402d3d:	79 05                	jns    402d44 <init_timeout+0x10>
  402d3f:	bb 00 00 00 00       	mov    $0x0,%ebx
  402d44:	be dd 22 40 00       	mov    $0x4022dd,%esi
  402d49:	bf 0e 00 00 00       	mov    $0xe,%edi
  402d4e:	e8 2d e0 ff ff       	callq  400d80 <signal@plt>
  402d53:	89 df                	mov    %ebx,%edi
  402d55:	e8 e6 df ff ff       	callq  400d40 <alarm@plt>
  402d5a:	5b                   	pop    %rbx
  402d5b:	f3 c3                	repz retq 

0000000000402d5d <init_driver>:
  402d5d:	55                   	push   %rbp
  402d5e:	53                   	push   %rbx
  402d5f:	48 83 ec 28          	sub    $0x28,%rsp
  402d63:	48 89 fd             	mov    %rdi,%rbp
  402d66:	64 48 8b 04 25 28 00 	mov    %fs:0x28,%rax
  402d6d:	00 00 
  402d6f:	48 89 44 24 18       	mov    %rax,0x18(%rsp)
  402d74:	31 c0                	xor    %eax,%eax
  402d76:	be 01 00 00 00       	mov    $0x1,%esi
  402d7b:	bf 0d 00 00 00       	mov    $0xd,%edi
  402d80:	e8 fb df ff ff       	callq  400d80 <signal@plt>
  402d85:	be 01 00 00 00       	mov    $0x1,%esi
  402d8a:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d8f:	e8 ec df ff ff       	callq  400d80 <signal@plt>
  402d94:	be 01 00 00 00       	mov    $0x1,%esi
  402d99:	bf 1d 00 00 00       	mov    $0x1d,%edi
  402d9e:	e8 dd df ff ff       	callq  400d80 <signal@plt>
  402da3:	ba 00 00 00 00       	mov    $0x0,%edx
  402da8:	be 01 00 00 00       	mov    $0x1,%esi
  402dad:	bf 02 00 00 00       	mov    $0x2,%edi
  402db2:	e8 f9 e0 ff ff       	callq  400eb0 <socket@plt>
  402db7:	85 c0                	test   %eax,%eax
  402db9:	79 4f                	jns    402e0a <init_driver+0xad>
  402dbb:	48 b8 45 72 72 6f 72 	movabs $0x43203a726f727245,%rax
  402dc2:	3a 20 43 
  402dc5:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402dc9:	48 b8 6c 69 65 6e 74 	movabs $0x6e7520746e65696c,%rax
  402dd0:	20 75 6e 
  402dd3:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402dd7:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402dde:	74 6f 20 
  402de1:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402de5:	48 b8 63 72 65 61 74 	movabs $0x7320657461657263,%rax
  402dec:	65 20 73 
  402def:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402df3:	c7 45 20 6f 63 6b 65 	movl   $0x656b636f,0x20(%rbp)
  402dfa:	66 c7 45 24 74 00    	movw   $0x74,0x24(%rbp)
  402e00:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e05:	e9 2a 01 00 00       	jmpq   402f34 <init_driver+0x1d7>
  402e0a:	89 c3                	mov    %eax,%ebx
  402e0c:	bf 65 34 40 00       	mov    $0x403465,%edi
  402e11:	e8 7a df ff ff       	callq  400d90 <gethostbyname@plt>
  402e16:	48 85 c0             	test   %rax,%rax
  402e19:	75 68                	jne    402e83 <init_driver+0x126>
  402e1b:	48 b8 45 72 72 6f 72 	movabs $0x44203a726f727245,%rax
  402e22:	3a 20 44 
  402e25:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402e29:	48 b8 4e 53 20 69 73 	movabs $0x6e7520736920534e,%rax
  402e30:	20 75 6e 
  402e33:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402e37:	48 b8 61 62 6c 65 20 	movabs $0x206f7420656c6261,%rax
  402e3e:	74 6f 20 
  402e41:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402e45:	48 b8 72 65 73 6f 6c 	movabs $0x2065766c6f736572,%rax
  402e4c:	76 65 20 
  402e4f:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402e53:	48 b8 73 65 72 76 65 	movabs $0x6120726576726573,%rax
  402e5a:	72 20 61 
  402e5d:	48 89 45 20          	mov    %rax,0x20(%rbp)
  402e61:	c7 45 28 64 64 72 65 	movl   $0x65726464,0x28(%rbp)
  402e68:	66 c7 45 2c 73 73    	movw   $0x7373,0x2c(%rbp)
  402e6e:	c6 45 2e 00          	movb   $0x0,0x2e(%rbp)
  402e72:	89 df                	mov    %ebx,%edi
  402e74:	e8 d7 de ff ff       	callq  400d50 <close@plt>
  402e79:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402e7e:	e9 b1 00 00 00       	jmpq   402f34 <init_driver+0x1d7>
  402e83:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
  402e8a:	00 
  402e8b:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
  402e92:	00 00 
  402e94:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
  402e9a:	48 63 50 14          	movslq 0x14(%rax),%rdx
  402e9e:	48 8b 40 18          	mov    0x18(%rax),%rax
  402ea2:	48 8b 30             	mov    (%rax),%rsi
  402ea5:	48 8d 7c 24 04       	lea    0x4(%rsp),%rdi
  402eaa:	b9 0c 00 00 00       	mov    $0xc,%ecx
  402eaf:	e8 ec de ff ff       	callq  400da0 <__memmove_chk@plt>
  402eb4:	66 c7 44 24 02 00 50 	movw   $0x5000,0x2(%rsp)
  402ebb:	ba 10 00 00 00       	mov    $0x10,%edx
  402ec0:	48 89 e6             	mov    %rsp,%rsi
  402ec3:	89 df                	mov    %ebx,%edi
  402ec5:	e8 b6 df ff ff       	callq  400e80 <connect@plt>
  402eca:	85 c0                	test   %eax,%eax
  402ecc:	79 50                	jns    402f1e <init_driver+0x1c1>
  402ece:	48 b8 45 72 72 6f 72 	movabs $0x55203a726f727245,%rax
  402ed5:	3a 20 55 
  402ed8:	48 89 45 00          	mov    %rax,0x0(%rbp)
  402edc:	48 b8 6e 61 62 6c 65 	movabs $0x6f7420656c62616e,%rax
  402ee3:	20 74 6f 
  402ee6:	48 89 45 08          	mov    %rax,0x8(%rbp)
  402eea:	48 b8 20 63 6f 6e 6e 	movabs $0x7463656e6e6f6320,%rax
  402ef1:	65 63 74 
  402ef4:	48 89 45 10          	mov    %rax,0x10(%rbp)
  402ef8:	48 b8 20 74 6f 20 73 	movabs $0x76726573206f7420,%rax
  402eff:	65 72 76 
  402f02:	48 89 45 18          	mov    %rax,0x18(%rbp)
  402f06:	66 c7 45 20 65 72    	movw   $0x7265,0x20(%rbp)
  402f0c:	c6 45 22 00          	movb   $0x0,0x22(%rbp)
  402f10:	89 df                	mov    %ebx,%edi
  402f12:	e8 39 de ff ff       	callq  400d50 <close@plt>
  402f17:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
  402f1c:	eb 16                	jmp    402f34 <init_driver+0x1d7>
  402f1e:	89 df                	mov    %ebx,%edi
  402f20:	e8 2b de ff ff       	callq  400d50 <close@plt>
  402f25:	66 c7 45 00 4f 4b    	movw   $0x4b4f,0x0(%rbp)
  402f2b:	c6 45 02 00          	movb   $0x0,0x2(%rbp)
  402f2f:	b8 00 00 00 00       	mov    $0x0,%eax
  402f34:	48 8b 4c 24 18       	mov    0x18(%rsp),%rcx
  402f39:	64 48 33 0c 25 28 00 	xor    %fs:0x28,%rcx
  402f40:	00 00 
  402f42:	74 05                	je     402f49 <init_driver+0x1ec>
  402f44:	e8 c7 dd ff ff       	callq  400d10 <__stack_chk_fail@plt>
  402f49:	48 83 c4 28          	add    $0x28,%rsp
  402f4d:	5b                   	pop    %rbx
  402f4e:	5d                   	pop    %rbp
  402f4f:	c3                   	retq   

0000000000402f50 <driver_post>:
  402f50:	53                   	push   %rbx
  402f51:	4c 89 cb             	mov    %r9,%rbx
  402f54:	45 85 c0             	test   %r8d,%r8d
  402f57:	74 27                	je     402f80 <driver_post+0x30>
  402f59:	48 89 ca             	mov    %rcx,%rdx
  402f5c:	be 45 39 40 00       	mov    $0x403945,%esi
  402f61:	bf 01 00 00 00       	mov    $0x1,%edi
  402f66:	b8 00 00 00 00       	mov    $0x0,%eax
  402f6b:	e8 b0 de ff ff       	callq  400e20 <__printf_chk@plt>
  402f70:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402f75:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402f79:	b8 00 00 00 00       	mov    $0x0,%eax
  402f7e:	eb 3f                	jmp    402fbf <driver_post+0x6f>
  402f80:	48 85 ff             	test   %rdi,%rdi
  402f83:	74 2c                	je     402fb1 <driver_post+0x61>
  402f85:	80 3f 00             	cmpb   $0x0,(%rdi)
  402f88:	74 27                	je     402fb1 <driver_post+0x61>
  402f8a:	48 83 ec 08          	sub    $0x8,%rsp
  402f8e:	41 51                	push   %r9
  402f90:	49 89 c9             	mov    %rcx,%r9
  402f93:	49 89 d0             	mov    %rdx,%r8
  402f96:	48 89 f9             	mov    %rdi,%rcx
  402f99:	48 89 f2             	mov    %rsi,%rdx
  402f9c:	be 50 00 00 00       	mov    $0x50,%esi
  402fa1:	bf 65 34 40 00       	mov    $0x403465,%edi
  402fa6:	e8 fe f5 ff ff       	callq  4025a9 <submitr>
  402fab:	48 83 c4 10          	add    $0x10,%rsp
  402faf:	eb 0e                	jmp    402fbf <driver_post+0x6f>
  402fb1:	66 c7 03 4f 4b       	movw   $0x4b4f,(%rbx)
  402fb6:	c6 43 02 00          	movb   $0x0,0x2(%rbx)
  402fba:	b8 00 00 00 00       	mov    $0x0,%eax
  402fbf:	5b                   	pop    %rbx
  402fc0:	c3                   	retq   

0000000000402fc1 <check>:
  402fc1:	89 f8                	mov    %edi,%eax
  402fc3:	c1 e8 1c             	shr    $0x1c,%eax
  402fc6:	85 c0                	test   %eax,%eax
  402fc8:	74 1d                	je     402fe7 <check+0x26>
  402fca:	b9 00 00 00 00       	mov    $0x0,%ecx
  402fcf:	eb 0b                	jmp    402fdc <check+0x1b>
  402fd1:	89 f8                	mov    %edi,%eax
  402fd3:	d3 e8                	shr    %cl,%eax
  402fd5:	3c 0a                	cmp    $0xa,%al
  402fd7:	74 14                	je     402fed <check+0x2c>
  402fd9:	83 c1 08             	add    $0x8,%ecx
  402fdc:	83 f9 1f             	cmp    $0x1f,%ecx
  402fdf:	7e f0                	jle    402fd1 <check+0x10>
  402fe1:	b8 01 00 00 00       	mov    $0x1,%eax
  402fe6:	c3                   	retq   
  402fe7:	b8 00 00 00 00       	mov    $0x0,%eax
  402fec:	c3                   	retq   
  402fed:	b8 00 00 00 00       	mov    $0x0,%eax
  402ff2:	c3                   	retq   

0000000000402ff3 <gencookie>:
  402ff3:	53                   	push   %rbx
  402ff4:	83 c7 01             	add    $0x1,%edi
  402ff7:	e8 c4 dc ff ff       	callq  400cc0 <srandom@plt>
  402ffc:	e8 df dd ff ff       	callq  400de0 <random@plt>
  403001:	89 c3                	mov    %eax,%ebx
  403003:	89 c7                	mov    %eax,%edi
  403005:	e8 b7 ff ff ff       	callq  402fc1 <check>
  40300a:	85 c0                	test   %eax,%eax
  40300c:	74 ee                	je     402ffc <gencookie+0x9>
  40300e:	89 d8                	mov    %ebx,%eax
  403010:	5b                   	pop    %rbx
  403011:	c3                   	retq   
  403012:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  403019:	00 00 00 
  40301c:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000403020 <__libc_csu_init>:
  403020:	41 57                	push   %r15
  403022:	41 56                	push   %r14
  403024:	41 89 ff             	mov    %edi,%r15d
  403027:	41 55                	push   %r13
  403029:	41 54                	push   %r12
  40302b:	4c 8d 25 ce 1d 20 00 	lea    0x201dce(%rip),%r12        # 604e00 <__frame_dummy_init_array_entry>
  403032:	55                   	push   %rbp
  403033:	48 8d 2d ce 1d 20 00 	lea    0x201dce(%rip),%rbp        # 604e08 <__init_array_end>
  40303a:	53                   	push   %rbx
  40303b:	49 89 f6             	mov    %rsi,%r14
  40303e:	49 89 d5             	mov    %rdx,%r13
  403041:	4c 29 e5             	sub    %r12,%rbp
  403044:	48 83 ec 08          	sub    $0x8,%rsp
  403048:	48 c1 fd 03          	sar    $0x3,%rbp
  40304c:	e8 17 dc ff ff       	callq  400c68 <_init>
  403051:	48 85 ed             	test   %rbp,%rbp
  403054:	74 20                	je     403076 <__libc_csu_init+0x56>
  403056:	31 db                	xor    %ebx,%ebx
  403058:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
  40305f:	00 
  403060:	4c 89 ea             	mov    %r13,%rdx
  403063:	4c 89 f6             	mov    %r14,%rsi
  403066:	44 89 ff             	mov    %r15d,%edi
  403069:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
  40306d:	48 83 c3 01          	add    $0x1,%rbx
  403071:	48 39 eb             	cmp    %rbp,%rbx
  403074:	75 ea                	jne    403060 <__libc_csu_init+0x40>
  403076:	48 83 c4 08          	add    $0x8,%rsp
  40307a:	5b                   	pop    %rbx
  40307b:	5d                   	pop    %rbp
  40307c:	41 5c                	pop    %r12
  40307e:	41 5d                	pop    %r13
  403080:	41 5e                	pop    %r14
  403082:	41 5f                	pop    %r15
  403084:	c3                   	retq   
  403085:	90                   	nop
  403086:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
  40308d:	00 00 00 

0000000000403090 <__libc_csu_fini>:
  403090:	f3 c3                	repz retq 

Disassembly of section .fini:

0000000000403094 <_fini>:
  403094:	48 83 ec 08          	sub    $0x8,%rsp
  403098:	48 83 c4 08          	add    $0x8,%rsp
  40309c:	c3                   	retq   
