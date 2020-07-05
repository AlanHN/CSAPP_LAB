
bomb：     文件格式 elf64-x86-64


Disassembly of section .interp:

0000000000000238 <.interp>:
 238:	2f                   	(bad)  
 239:	6c                   	insb   (%dx),%es:(%rdi)
 23a:	69 62 36 34 2f 6c 64 	imul   $0x646c2f34,0x36(%rdx),%esp
 241:	2d 6c 69 6e 75       	sub    $0x756e696c,%eax
 246:	78 2d                	js     275 <_init-0xc23>
 248:	78 38                	js     282 <_init-0xc16>
 24a:	36 2d 36 34 2e 73    	ss sub $0x732e3436,%eax
 250:	6f                   	outsl  %ds:(%rsi),(%dx)
 251:	2e 32 00             	xor    %cs:(%rax),%al

Disassembly of section .note.ABI-tag:

0000000000000254 <.note.ABI-tag>:
 254:	04 00                	add    $0x0,%al
 256:	00 00                	add    %al,(%rax)
 258:	10 00                	adc    %al,(%rax)
 25a:	00 00                	add    %al,(%rax)
 25c:	01 00                	add    %eax,(%rax)
 25e:	00 00                	add    %al,(%rax)
 260:	47                   	rex.RXB
 261:	4e 55                	rex.WRX push %rbp
 263:	00 00                	add    %al,(%rax)
 265:	00 00                	add    %al,(%rax)
 267:	00 02                	add    %al,(%rdx)
 269:	00 00                	add    %al,(%rax)
 26b:	00 06                	add    %al,(%rsi)
 26d:	00 00                	add    %al,(%rax)
 26f:	00 20                	add    %ah,(%rax)
 271:	00 00                	add    %al,(%rax)
	...

Disassembly of section .note.gnu.build-id:

0000000000000274 <.note.gnu.build-id>:
 274:	04 00                	add    $0x0,%al
 276:	00 00                	add    %al,(%rax)
 278:	14 00                	adc    $0x0,%al
 27a:	00 00                	add    %al,(%rax)
 27c:	03 00                	add    (%rax),%eax
 27e:	00 00                	add    %al,(%rax)
 280:	47                   	rex.RXB
 281:	4e 55                	rex.WRX push %rbp
 283:	00 67 7d             	add    %ah,0x7d(%rdi)
 286:	fa                   	cli    
 287:	e3 98                	jrcxz  221 <_init-0xc77>
 289:	9e                   	sahf   
 28a:	3c 44                	cmp    $0x44,%al
 28c:	3a ab 96 07 33 36    	cmp    0x36330796(%rbx),%ch
 292:	04 5b                	add    $0x5b,%al
 294:	56                   	push   %rsi
 295:	08 4f 6b             	or     %cl,0x6b(%rdi)

Disassembly of section .gnu.hash:

0000000000000298 <.gnu.hash>:
 298:	02 00                	add    (%rax),%al
 29a:	00 00                	add    %al,(%rax)
 29c:	27                   	(bad)  
 29d:	00 00                	add    %al,(%rax)
 29f:	00 01                	add    %al,(%rcx)
 2a1:	00 00                	add    %al,(%rax)
 2a3:	00 06                	add    %al,(%rsi)
 2a5:	00 00                	add    %al,(%rax)
 2a7:	00 00                	add    %al,(%rax)
 2a9:	00 20                	add    %ah,(%rax)
 2ab:	00 80 01 10 00 27    	add    %al,0x27001001(%rax)
 2b1:	00 00                	add    %al,(%rax)
 2b3:	00 28                	add    %ch,(%rax)
 2b5:	00 00                	add    %al,(%rax)
 2b7:	00 29                	add    %ch,(%rcx)
 2b9:	1d 8c 1c 67 55       	sbb    $0x55671c8c,%eax
 2be:	61                   	(bad)  
 2bf:	10                   	.byte 0x10

Disassembly of section .dynsym:

00000000000002c0 <.dynsym>:
	...
 2d8:	c5 00 00             	(bad)  
 2db:	00 12                	add    %dl,(%rdx)
	...
 2ed:	00 00                	add    %al,(%rax)
 2ef:	00 8b 00 00 00 12    	add    %cl,0x12000000(%rbx)
	...
 305:	00 00                	add    %al,(%rax)
 307:	00 21                	add    %ah,(%rcx)
 309:	01 00                	add    %eax,(%rax)
 30b:	00 20                	add    %ah,(%rax)
	...
 31d:	00 00                	add    %al,(%rax)
 31f:	00 21                	add    %ah,(%rcx)
 321:	00 00                	add    %al,(%rax)
 323:	00 12                	add    %dl,(%rdx)
	...
 335:	00 00                	add    %al,(%rax)
 337:	00 5a 00             	add    %bl,0x0(%rdx)
 33a:	00 00                	add    %al,(%rax)
 33c:	12 00                	adc    (%rax),%al
	...
 34e:	00 00                	add    %al,(%rax)
 350:	e6 00                	out    %al,$0x0
 352:	00 00                	add    %al,(%rax)
 354:	12 00                	adc    (%rax),%al
	...
 366:	00 00                	add    %al,(%rax)
 368:	a9 00 00 00 12       	test   $0x12000000,%eax
	...
 37d:	00 00                	add    %al,(%rax)
 37f:	00 cc                	add    %cl,%ah
 381:	00 00                	add    %al,(%rax)
 383:	00 12                	add    %dl,(%rdx)
	...
 395:	00 00                	add    %al,(%rax)
 397:	00 f3                	add    %dh,%bl
 399:	00 00                	add    %al,(%rax)
 39b:	00 12                	add    %dl,(%rdx)
	...
 3ad:	00 00                	add    %al,(%rax)
 3af:	00 6f 00             	add    %ch,0x0(%rdi)
 3b2:	00 00                	add    %al,(%rax)
 3b4:	12 00                	adc    (%rax),%al
	...
 3c6:	00 00                	add    %al,(%rax)
 3c8:	e1 00                	loope  3ca <_init-0xace>
 3ca:	00 00                	add    %al,(%rax)
 3cc:	12 00                	adc    (%rax),%al
	...
 3de:	00 00                	add    %al,(%rax)
 3e0:	aa                   	stos   %al,%es:(%rdi)
 3e1:	00 00                	add    %al,(%rax)
 3e3:	00 12                	add    %dl,(%rdx)
	...
 3f5:	00 00                	add    %al,(%rax)
 3f7:	00 a3 00 00 00 12    	add    %ah,0x12000000(%rbx)
	...
 40d:	00 00                	add    %al,(%rax)
 40f:	00 0f                	add    %cl,(%rdi)
 411:	01 00                	add    %eax,(%rax)
 413:	00 12                	add    %dl,(%rdx)
	...
 425:	00 00                	add    %al,(%rax)
 427:	00 7d 00             	add    %bh,0x0(%rbp)
 42a:	00 00                	add    %al,(%rax)
 42c:	12 00                	adc    (%rax),%al
	...
 43e:	00 00                	add    %al,(%rax)
 440:	83 00 00             	addl   $0x0,(%rax)
 443:	00 12                	add    %dl,(%rdx)
	...
 455:	00 00                	add    %al,(%rax)
 457:	00 53 00             	add    %dl,0x0(%rbx)
 45a:	00 00                	add    %al,(%rax)
 45c:	12 00                	adc    (%rax),%al
	...
 46e:	00 00                	add    %al,(%rax)
 470:	d3 00                	roll   %cl,(%rax)
 472:	00 00                	add    %al,(%rax)
 474:	12 00                	adc    (%rax),%al
	...
 486:	00 00                	add    %al,(%rax)
 488:	f2 00 00             	repnz add %al,(%rax)
 48b:	00 12                	add    %dl,(%rdx)
	...
 49d:	00 00                	add    %al,(%rax)
 49f:	00 3d 01 00 00 20    	add    %bh,0x20000001(%rip)        # 200004a6 <_end+0x1fdfc636>
	...
 4b5:	00 00                	add    %al,(%rax)
 4b7:	00 76 00             	add    %dh,0x0(%rsi)
 4ba:	00 00                	add    %al,(%rax)
 4bc:	12 00                	adc    (%rax),%al
	...
 4ce:	00 00                	add    %al,(%rax)
 4d0:	65 00 00             	add    %al,%gs:(%rax)
 4d3:	00 12                	add    %dl,(%rdx)
	...
 4e5:	00 00                	add    %al,(%rax)
 4e7:	00 1a                	add    %bl,(%rdx)
 4e9:	00 00                	add    %al,(%rax)
 4eb:	00 12                	add    %dl,(%rdx)
	...
 4fd:	00 00                	add    %al,(%rax)
 4ff:	00 3b                	add    %bh,(%rbx)
 501:	00 00                	add    %al,(%rax)
 503:	00 12                	add    %dl,(%rdx)
	...
 515:	00 00                	add    %al,(%rax)
 517:	00 ec                	add    %ch,%ah
 519:	00 00                	add    %al,(%rax)
 51b:	00 12                	add    %dl,(%rdx)
	...
 52d:	00 00                	add    %al,(%rax)
 52f:	00 12                	add    %dl,(%rdx)
 531:	00 00                	add    %al,(%rax)
 533:	00 12                	add    %dl,(%rdx)
	...
 545:	00 00                	add    %al,(%rax)
 547:	00 35 00 00 00 12    	add    %dh,0x12000000(%rip)        # 1200054d <_end+0x11dfc6dd>
	...
 55d:	00 00                	add    %al,(%rax)
 55f:	00 4c 01 00          	add    %cl,0x0(%rcx,%rax,1)
 563:	00 20                	add    %ah,(%rax)
	...
 575:	00 00                	add    %al,(%rax)
 577:	00 b0 00 00 00 12    	add    %dh,0x12000000(%rax)
	...
 58d:	00 00                	add    %al,(%rax)
 58f:	00 2d 00 00 00 12    	add    %ch,0x12000000(%rip)        # 12000595 <_end+0x11dfc725>
	...
 5a5:	00 00                	add    %al,(%rax)
 5a7:	00 28                	add    %ch,(%rax)
 5a9:	00 00                	add    %al,(%rax)
 5ab:	00 12                	add    %dl,(%rdx)
	...
 5bd:	00 00                	add    %al,(%rax)
 5bf:	00 4b 00             	add    %cl,0x0(%rbx)
 5c2:	00 00                	add    %al,(%rax)
 5c4:	12 00                	adc    (%rax),%al
	...
 5d6:	00 00                	add    %al,(%rax)
 5d8:	e5 00                	in     $0x0,%eax
 5da:	00 00                	add    %al,(%rax)
 5dc:	12 00                	adc    (%rax),%al
	...
 5ee:	00 00                	add    %al,(%rax)
 5f0:	60                   	(bad)  
 5f1:	01 00                	add    %eax,(%rax)
 5f3:	00 20                	add    %ah,(%rax)
	...
 605:	00 00                	add    %al,(%rax)
 607:	00 fa                	add    %bh,%dl
 609:	00 00                	add    %al,(%rax)
 60b:	00 12                	add    %dl,(%rdx)
	...
 621:	01 00                	add    %eax,(%rax)
 623:	00 22                	add    %ah,(%rdx)
	...
 635:	00 00                	add    %al,(%rax)
 637:	00 b7 00 00 00 12    	add    %dh,0x12000000(%rdi)
	...
 64d:	00 00                	add    %al,(%rax)
 64f:	00 0b                	add    %cl,(%rbx)
 651:	00 00                	add    %al,(%rax)
 653:	00 12                	add    %dl,(%rdx)
	...
 665:	00 00                	add    %al,(%rax)
 667:	00 9c 00 00 00 11 00 	add    %bl,0x110000(%rax,%rax,1)
 66e:	1a 00                	sbb    (%rax),%al
 670:	a0 37 20 00 00 00 00 	movabs 0x800000000002037,%al
 677:	00 08 
 679:	00 00                	add    %al,(%rax)
 67b:	00 00                	add    %al,(%rax)
 67d:	00 00                	add    %al,(%rax)
 67f:	00 5f 00             	add    %bl,0x0(%rdi)
 682:	00 00                	add    %al,(%rax)
 684:	11 00                	adc    %eax,(%rax)
 686:	1a 00                	sbb    (%rax),%al
 688:	b0 37                	mov    $0x37,%al
 68a:	20 00                	and    %al,(%rax)
 68c:	00 00                	add    %al,(%rax)
 68e:	00 00                	add    %al,(%rax)
 690:	08 00                	or     %al,(%rax)
 692:	00 00                	add    %al,(%rax)
 694:	00 00                	add    %al,(%rax)
	...

Disassembly of section .dynstr:

0000000000000698 <.dynstr>:
 698:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
 69c:	63 2e                	movslq (%rsi),%ebp
 69e:	73 6f                	jae    70f <_init-0x789>
 6a0:	2e 36 00 73 6f       	cs add %dh,%ss:0x6f(%rbx)
 6a5:	63 6b 65             	movslq 0x65(%rbx),%ebp
 6a8:	74 00                	je     6aa <_init-0x7ee>
 6aa:	63 75 73             	movslq 0x73(%rbp),%esi
 6ad:	65 72 69             	gs jb  719 <_init-0x77f>
 6b0:	64 00 66 66          	add    %ah,%fs:0x66(%rsi)
 6b4:	6c                   	insb   (%dx),%es:(%rdi)
 6b5:	75 73                	jne    72a <_init-0x76e>
 6b7:	68 00 73 74 72       	pushq  $0x72747300
 6bc:	63 70 79             	movslq 0x79(%rax),%esi
 6bf:	00 65 78             	add    %ah,0x78(%rbp)
 6c2:	69 74 00 73 70 72 69 	imul   $0x6e697270,0x73(%rax,%rax,1),%esi
 6c9:	6e 
 6ca:	74 66                	je     732 <_init-0x766>
 6cc:	00 66 6f             	add    %ah,0x6f(%rsi)
 6cf:	70 65                	jo     736 <_init-0x762>
 6d1:	6e                   	outsb  %ds:(%rsi),(%dx)
 6d2:	00 5f 5f             	add    %bl,0x5f(%rdi)
 6d5:	69 73 6f 63 39 39 5f 	imul   $0x5f393963,0x6f(%rbx),%esi
 6dc:	73 73                	jae    751 <_init-0x747>
 6de:	63 61 6e             	movslq 0x6e(%rcx),%esp
 6e1:	66 00 63 6f          	data16 add %ah,0x6f(%rbx)
 6e5:	6e                   	outsb  %ds:(%rsi),(%dx)
 6e6:	6e                   	outsb  %ds:(%rsi),(%dx)
 6e7:	65 63 74 00 73       	movslq %gs:0x73(%rax,%rax,1),%esi
 6ec:	69 67 6e 61 6c 00 70 	imul   $0x70006c61,0x6e(%rdi),%esp
 6f3:	75 74                	jne    769 <_init-0x72f>
 6f5:	73 00                	jae    6f7 <_init-0x7a1>
 6f7:	73 74                	jae    76d <_init-0x72b>
 6f9:	64 69 6e 00 69 6e 65 	imul   $0x74656e69,%fs:0x0(%rsi),%ebp
 700:	74 
 701:	5f                   	pop    %rdi
 702:	70 74                	jo     778 <_init-0x720>
 704:	6f                   	outsl  %ds:(%rsi),(%dx)
 705:	6e                   	outsb  %ds:(%rsi),(%dx)
 706:	00 72 65             	add    %dh,0x65(%rdx)
 709:	77 69                	ja     774 <_init-0x724>
 70b:	6e                   	outsb  %ds:(%rsi),(%dx)
 70c:	64 00 73 74          	add    %dh,%fs:0x74(%rbx)
 710:	72 74                	jb     786 <_init-0x712>
 712:	6f                   	outsl  %ds:(%rsi),(%dx)
 713:	6c                   	insb   (%dx),%es:(%rdi)
 714:	00 66 67             	add    %ah,0x67(%rsi)
 717:	65 74 73             	gs je  78d <_init-0x70b>
 71a:	00 74 6d 70          	add    %dh,0x70(%rbp,%rbp,2)
 71e:	66 69 6c 65 00 5f 5f 	imul   $0x5f5f,0x0(%rbp,%riz,2),%bp
 725:	65 72 72             	gs jb  79a <_init-0x6fe>
 728:	6e                   	outsb  %ds:(%rsi),(%dx)
 729:	6f                   	outsl  %ds:(%rsi),(%dx)
 72a:	5f                   	pop    %rdi
 72b:	6c                   	insb   (%dx),%es:(%rdi)
 72c:	6f                   	outsl  %ds:(%rsi),(%dx)
 72d:	63 61 74             	movslq 0x74(%rcx),%esp
 730:	69 6f 6e 00 73 74 64 	imul   $0x64747300,0x6e(%rdi),%ebp
 737:	6f                   	outsl  %ds:(%rsi),(%dx)
 738:	75 74                	jne    7ae <_init-0x6ea>
 73a:	00 66 70             	add    %ah,0x70(%rsi)
 73d:	75 74                	jne    7b3 <_init-0x6e5>
 73f:	63 00                	movslq (%rax),%eax
 741:	66 63 6c 6f 73       	movslq 0x73(%rdi,%rbp,2),%bp
 746:	65 00 73 74          	add    %dh,%gs:0x74(%rbx)
 74a:	72 63                	jb     7af <_init-0x6e9>
 74c:	61                   	(bad)  
 74d:	74 00                	je     74f <_init-0x749>
 74f:	5f                   	pop    %rdi
 750:	5f                   	pop    %rdi
 751:	63 74 79 70          	movslq 0x70(%rcx,%rdi,2),%esi
 755:	65 5f                	gs pop %rdi
 757:	62                   	(bad)  
 758:	5f                   	pop    %rdi
 759:	6c                   	insb   (%dx),%es:(%rdi)
 75a:	6f                   	outsl  %ds:(%rsi),(%dx)
 75b:	63 00                	movslq (%rax),%eax
 75d:	67 65 74 65          	addr32 gs je 7c6 <_init-0x6d2>
 761:	6e                   	outsb  %ds:(%rsi),(%dx)
 762:	76 00                	jbe    764 <_init-0x734>
 764:	73 79                	jae    7df <_init-0x6b9>
 766:	73 74                	jae    7dc <_init-0x6bc>
 768:	65 6d                	gs insl (%dx),%es:(%rdi)
 76a:	00 67 65             	add    %ah,0x65(%rdi)
 76d:	74 68                	je     7d7 <_init-0x6c1>
 76f:	6f                   	outsl  %ds:(%rsi),(%dx)
 770:	73 74                	jae    7e6 <_init-0x6b2>
 772:	62                   	(bad)  
 773:	79 6e                	jns    7e3 <_init-0x6b5>
 775:	61                   	(bad)  
 776:	6d                   	insl   (%dx),%es:(%rdi)
 777:	65 00 64 75 70       	add    %ah,%gs:0x70(%rbp,%rsi,2)
 77c:	00 66 77             	add    %ah,0x77(%rsi)
 77f:	72 69                	jb     7ea <_init-0x6ae>
 781:	74 65                	je     7e8 <_init-0x6b0>
 783:	00 62 63             	add    %ah,0x63(%rdx)
 786:	6f                   	outsl  %ds:(%rsi),(%dx)
 787:	70 79                	jo     802 <_init-0x696>
 789:	00 66 70             	add    %ah,0x70(%rsi)
 78c:	72 69                	jb     7f7 <_init-0x6a1>
 78e:	6e                   	outsb  %ds:(%rsi),(%dx)
 78f:	74 66                	je     7f7 <_init-0x6a1>
 791:	00 73 6c             	add    %dh,0x6c(%rbx)
 794:	65 65 70 00          	gs gs jo 798 <_init-0x700>
 798:	5f                   	pop    %rdi
 799:	5f                   	pop    %rdi
 79a:	63 78 61             	movslq 0x61(%rax),%edi
 79d:	5f                   	pop    %rdi
 79e:	66 69 6e 61 6c 69    	imul   $0x696c,0x61(%rsi),%bp
 7a4:	7a 65                	jp     80b <_init-0x68d>
 7a6:	00 5f 5f             	add    %bl,0x5f(%rdi)
 7a9:	6c                   	insb   (%dx),%es:(%rdi)
 7aa:	69 62 63 5f 73 74 61 	imul   $0x6174735f,0x63(%rdx),%esp
 7b1:	72 74                	jb     827 <_init-0x671>
 7b3:	5f                   	pop    %rdi
 7b4:	6d                   	insl   (%dx),%es:(%rdi)
 7b5:	61                   	(bad)  
 7b6:	69 6e 00 5f 49 54 4d 	imul   $0x4d54495f,0x0(%rsi),%ebp
 7bd:	5f                   	pop    %rdi
 7be:	64 65 72 65          	fs gs jb 827 <_init-0x671>
 7c2:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 7c9:	4d 
 7ca:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 7cc:	6f                   	outsl  %ds:(%rsi),(%dx)
 7cd:	6e                   	outsb  %ds:(%rsi),(%dx)
 7ce:	65 54                	gs push %rsp
 7d0:	61                   	(bad)  
 7d1:	62                   	(bad)  
 7d2:	6c                   	insb   (%dx),%es:(%rdi)
 7d3:	65 00 5f 5f          	add    %bl,%gs:0x5f(%rdi)
 7d7:	67 6d                	insl   (%dx),%es:(%edi)
 7d9:	6f                   	outsl  %ds:(%rsi),(%dx)
 7da:	6e                   	outsb  %ds:(%rsi),(%dx)
 7db:	5f                   	pop    %rdi
 7dc:	73 74                	jae    852 <_init-0x646>
 7de:	61                   	(bad)  
 7df:	72 74                	jb     855 <_init-0x643>
 7e1:	5f                   	pop    %rdi
 7e2:	5f                   	pop    %rdi
 7e3:	00 5f 4a             	add    %bl,0x4a(%rdi)
 7e6:	76 5f                	jbe    847 <_init-0x651>
 7e8:	52                   	push   %rdx
 7e9:	65 67 69 73 74 65 72 	imul   $0x6c437265,%gs:0x74(%ebx),%esi
 7f0:	43 6c 
 7f2:	61                   	(bad)  
 7f3:	73 73                	jae    868 <_init-0x630>
 7f5:	65 73 00             	gs jae 7f8 <_init-0x6a0>
 7f8:	5f                   	pop    %rdi
 7f9:	49 54                	rex.WB push %r12
 7fb:	4d 5f                	rex.WRB pop %r15
 7fd:	72 65                	jb     864 <_init-0x634>
 7ff:	67 69 73 74 65 72 54 	imul   $0x4d547265,0x74(%ebx),%esi
 806:	4d 
 807:	43 6c                	rex.XB insb (%dx),%es:(%rdi)
 809:	6f                   	outsl  %ds:(%rsi),(%dx)
 80a:	6e                   	outsb  %ds:(%rsi),(%dx)
 80b:	65 54                	gs push %rsp
 80d:	61                   	(bad)  
 80e:	62                   	(bad)  
 80f:	6c                   	insb   (%dx),%es:(%rdi)
 810:	65 00 47 4c          	add    %al,%gs:0x4c(%rdi)
 814:	49                   	rex.WB
 815:	42                   	rex.X
 816:	43 5f                	rex.XB pop %r15
 818:	32 2e                	xor    (%rsi),%ch
 81a:	33 00                	xor    (%rax),%eax
 81c:	47                   	rex.RXB
 81d:	4c                   	rex.WR
 81e:	49                   	rex.WB
 81f:	42                   	rex.X
 820:	43 5f                	rex.XB pop %r15
 822:	32 2e                	xor    (%rsi),%ch
 824:	37                   	(bad)  
 825:	00 47 4c             	add    %al,0x4c(%rdi)
 828:	49                   	rex.WB
 829:	42                   	rex.X
 82a:	43 5f                	rex.XB pop %r15
 82c:	32 2e                	xor    (%rsi),%ch
 82e:	32 2e                	xor    (%rsi),%ch
 830:	35                   	.byte 0x35
	...

Disassembly of section .gnu.version:

0000000000000832 <.gnu.version>:
 832:	00 00                	add    %al,(%rax)
 834:	02 00                	add    (%rax),%al
 836:	02 00                	add    (%rax),%al
 838:	00 00                	add    %al,(%rax)
 83a:	02 00                	add    (%rax),%al
 83c:	02 00                	add    (%rax),%al
 83e:	02 00                	add    (%rax),%al
 840:	02 00                	add    (%rax),%al
 842:	02 00                	add    (%rax),%al
 844:	02 00                	add    (%rax),%al
 846:	02 00                	add    (%rax),%al
 848:	02 00                	add    (%rax),%al
 84a:	02 00                	add    (%rax),%al
 84c:	02 00                	add    (%rax),%al
 84e:	02 00                	add    (%rax),%al
 850:	02 00                	add    (%rax),%al
 852:	02 00                	add    (%rax),%al
 854:	02 00                	add    (%rax),%al
 856:	02 00                	add    (%rax),%al
 858:	02 00                	add    (%rax),%al
 85a:	00 00                	add    %al,(%rax)
 85c:	02 00                	add    (%rax),%al
 85e:	02 00                	add    (%rax),%al
 860:	02 00                	add    (%rax),%al
 862:	03 00                	add    (%rax),%eax
 864:	02 00                	add    (%rax),%al
 866:	02 00                	add    (%rax),%al
 868:	02 00                	add    (%rax),%al
 86a:	00 00                	add    %al,(%rax)
 86c:	02 00                	add    (%rax),%al
 86e:	02 00                	add    (%rax),%al
 870:	02 00                	add    (%rax),%al
 872:	02 00                	add    (%rax),%al
 874:	02 00                	add    (%rax),%al
 876:	00 00                	add    %al,(%rax)
 878:	02 00                	add    (%rax),%al
 87a:	02 00                	add    (%rax),%al
 87c:	04 00                	add    $0x0,%al
 87e:	02 00                	add    (%rax),%al
 880:	02 00                	add    (%rax),%al
 882:	02 00                	add    (%rax),%al

Disassembly of section .gnu.version_r:

0000000000000888 <.gnu.version_r>:
 888:	01 00                	add    %eax,(%rax)
 88a:	03 00                	add    (%rax),%eax
 88c:	01 00                	add    %eax,(%rax)
 88e:	00 00                	add    %al,(%rax)
 890:	10 00                	adc    %al,(%rax)
 892:	00 00                	add    %al,(%rax)
 894:	00 00                	add    %al,(%rax)
 896:	00 00                	add    %al,(%rax)
 898:	13 69 69             	adc    0x69(%rcx),%ebp
 89b:	0d 00 00 04 00       	or     $0x40000,%eax
 8a0:	7a 01                	jp     8a3 <_init-0x5f5>
 8a2:	00 00                	add    %al,(%rax)
 8a4:	10 00                	adc    %al,(%rax)
 8a6:	00 00                	add    %al,(%rax)
 8a8:	17                   	(bad)  
 8a9:	69 69 0d 00 00 03 00 	imul   $0x30000,0xd(%rcx),%ebp
 8b0:	84 01                	test   %al,(%rcx)
 8b2:	00 00                	add    %al,(%rax)
 8b4:	10 00                	adc    %al,(%rax)
 8b6:	00 00                	add    %al,(%rax)
 8b8:	75 1a                	jne    8d4 <_init-0x5c4>
 8ba:	69 09 00 00 02 00    	imul   $0x20000,(%rcx),%ecx
 8c0:	8e 01                	mov    (%rcx),%es
 8c2:	00 00                	add    %al,(%rax)
 8c4:	00 00                	add    %al,(%rax)
	...

Disassembly of section .rela.dyn:

00000000000008c8 <.rela.dyn>:
 8c8:	d8 2d 20 00 00 00    	fsubrs 0x20(%rip)        # 8ee <_init-0x5aa>
 8ce:	00 00                	add    %al,(%rax)
 8d0:	08 00                	or     %al,(%rax)
 8d2:	00 00                	add    %al,(%rax)
 8d4:	00 00                	add    %al,(%rax)
 8d6:	00 00                	add    %al,(%rax)
 8d8:	d0 11                	rclb   (%rcx)
 8da:	00 00                	add    %al,(%rax)
 8dc:	00 00                	add    %al,(%rax)
 8de:	00 00                	add    %al,(%rax)
 8e0:	e0 2d                	loopne 90f <_init-0x589>
 8e2:	20 00                	and    %al,(%rax)
 8e4:	00 00                	add    %al,(%rax)
 8e6:	00 00                	add    %al,(%rax)
 8e8:	08 00                	or     %al,(%rax)
 8ea:	00 00                	add    %al,(%rax)
 8ec:	00 00                	add    %al,(%rax)
 8ee:	00 00                	add    %al,(%rax)
 8f0:	90                   	nop
 8f1:	11 00                	adc    %eax,(%rax)
 8f3:	00 00                	add    %al,(%rax)
 8f5:	00 00                	add    %al,(%rax)
 8f7:	00 28                	add    %ch,(%rax)
 8f9:	31 20                	xor    %esp,(%rax)
 8fb:	00 00                	add    %al,(%rax)
 8fd:	00 00                	add    %al,(%rax)
 8ff:	00 08                	add    %cl,(%rax)
 901:	00 00                	add    %al,(%rax)
 903:	00 00                	add    %al,(%rax)
 905:	00 00                	add    %al,(%rax)
 907:	00 28                	add    %ch,(%rax)
 909:	31 20                	xor    %esp,(%rax)
 90b:	00 00                	add    %al,(%rax)
 90d:	00 00                	add    %al,(%rax)
 90f:	00 78 36             	add    %bh,0x36(%rax)
 912:	20 00                	and    %al,(%rax)
 914:	00 00                	add    %al,(%rax)
 916:	00 00                	add    %al,(%rax)
 918:	08 00                	or     %al,(%rax)
 91a:	00 00                	add    %al,(%rax)
 91c:	00 00                	add    %al,(%rax)
 91e:	00 00                	add    %al,(%rax)
 920:	90                   	nop
 921:	36 20 00             	and    %al,%ss:(%rax)
 924:	00 00                	add    %al,(%rax)
 926:	00 00                	add    %al,(%rax)
 928:	80 36 20             	xorb   $0x20,(%rsi)
 92b:	00 00                	add    %al,(%rax)
 92d:	00 00                	add    %al,(%rax)
 92f:	00 08                	add    %cl,(%rax)
 931:	00 00                	add    %al,(%rax)
 933:	00 00                	add    %al,(%rax)
 935:	00 00                	add    %al,(%rax)
 937:	00 b0 36 20 00 00    	add    %dh,0x2036(%rax)
 93d:	00 00                	add    %al,(%rax)
 93f:	00 98 36 20 00 00    	add    %bl,0x2036(%rax)
 945:	00 00                	add    %al,(%rax)
 947:	00 08                	add    %cl,(%rax)
 949:	00 00                	add    %al,(%rax)
 94b:	00 00                	add    %al,(%rax)
 94d:	00 00                	add    %al,(%rax)
 94f:	00 10                	add    %dl,(%rax)
 951:	37                   	(bad)  
 952:	20 00                	and    %al,(%rax)
 954:	00 00                	add    %al,(%rax)
 956:	00 00                	add    %al,(%rax)
 958:	a0 36 20 00 00 00 00 	movabs 0x800000000002036,%al
 95f:	00 08 
 961:	00 00                	add    %al,(%rax)
 963:	00 00                	add    %al,(%rax)
 965:	00 00                	add    %al,(%rax)
 967:	00 d0                	add    %dl,%al
 969:	36 20 00             	and    %al,%ss:(%rax)
 96c:	00 00                	add    %al,(%rax)
 96e:	00 00                	add    %al,(%rax)
 970:	b8 36 20 00 00       	mov    $0x2036,%eax
 975:	00 00                	add    %al,(%rax)
 977:	00 08                	add    %cl,(%rax)
 979:	00 00                	add    %al,(%rax)
 97b:	00 00                	add    %al,(%rax)
 97d:	00 00                	add    %al,(%rax)
 97f:	00 f0                	add    %dh,%al
 981:	36 20 00             	and    %al,%ss:(%rax)
 984:	00 00                	add    %al,(%rax)
 986:	00 00                	add    %al,(%rax)
 988:	c0 36 20             	shlb   $0x20,(%rsi)
 98b:	00 00                	add    %al,(%rax)
 98d:	00 00                	add    %al,(%rax)
 98f:	00 08                	add    %cl,(%rax)
 991:	00 00                	add    %al,(%rax)
 993:	00 00                	add    %al,(%rax)
 995:	00 00                	add    %al,(%rax)
 997:	00 30                	add    %dh,(%rax)
 999:	37                   	(bad)  
 99a:	20 00                	and    %al,(%rax)
 99c:	00 00                	add    %al,(%rax)
 99e:	00 00                	add    %al,(%rax)
 9a0:	d8 36                	fdivs  (%rsi)
 9a2:	20 00                	and    %al,(%rax)
 9a4:	00 00                	add    %al,(%rax)
 9a6:	00 00                	add    %al,(%rax)
 9a8:	08 00                	or     %al,(%rax)
 9aa:	00 00                	add    %al,(%rax)
 9ac:	00 00                	add    %al,(%rax)
 9ae:	00 00                	add    %al,(%rax)
 9b0:	e0 31                	loopne 9e3 <_init-0x4b5>
 9b2:	20 00                	and    %al,(%rax)
 9b4:	00 00                	add    %al,(%rax)
 9b6:	00 00                	add    %al,(%rax)
 9b8:	e0 36                	loopne 9f0 <_init-0x4a8>
 9ba:	20 00                	and    %al,(%rax)
 9bc:	00 00                	add    %al,(%rax)
 9be:	00 00                	add    %al,(%rax)
 9c0:	08 00                	or     %al,(%rax)
 9c2:	00 00                	add    %al,(%rax)
 9c4:	00 00                	add    %al,(%rax)
 9c6:	00 00                	add    %al,(%rax)
 9c8:	a0 31 20 00 00 00 00 	movabs 0xf800000000002031,%al
 9cf:	00 f8 
 9d1:	36 20 00             	and    %al,%ss:(%rax)
 9d4:	00 00                	add    %al,(%rax)
 9d6:	00 00                	add    %al,(%rax)
 9d8:	08 00                	or     %al,(%rax)
 9da:	00 00                	add    %al,(%rax)
 9dc:	00 00                	add    %al,(%rax)
 9de:	00 00                	add    %al,(%rax)
 9e0:	40 31 20             	rex xor %esp,(%rax)
 9e3:	00 00                	add    %al,(%rax)
 9e5:	00 00                	add    %al,(%rax)
 9e7:	00 00                	add    %al,(%rax)
 9e9:	37                   	(bad)  
 9ea:	20 00                	and    %al,(%rax)
 9ec:	00 00                	add    %al,(%rax)
 9ee:	00 00                	add    %al,(%rax)
 9f0:	08 00                	or     %al,(%rax)
 9f2:	00 00                	add    %al,(%rax)
 9f4:	00 00                	add    %al,(%rax)
 9f6:	00 00                	add    %al,(%rax)
 9f8:	00 32                	add    %dh,(%rdx)
 9fa:	20 00                	and    %al,(%rax)
 9fc:	00 00                	add    %al,(%rax)
 9fe:	00 00                	add    %al,(%rax)
 a00:	18 37                	sbb    %dh,(%rdi)
 a02:	20 00                	and    %al,(%rax)
 a04:	00 00                	add    %al,(%rax)
 a06:	00 00                	add    %al,(%rax)
 a08:	08 00                	or     %al,(%rax)
 a0a:	00 00                	add    %al,(%rax)
 a0c:	00 00                	add    %al,(%rax)
 a0e:	00 00                	add    %al,(%rax)
 a10:	60                   	(bad)  
 a11:	31 20                	xor    %esp,(%rax)
 a13:	00 00                	add    %al,(%rax)
 a15:	00 00                	add    %al,(%rax)
 a17:	00 20                	add    %ah,(%rax)
 a19:	37                   	(bad)  
 a1a:	20 00                	and    %al,(%rax)
 a1c:	00 00                	add    %al,(%rax)
 a1e:	00 00                	add    %al,(%rax)
 a20:	08 00                	or     %al,(%rax)
 a22:	00 00                	add    %al,(%rax)
 a24:	00 00                	add    %al,(%rax)
 a26:	00 00                	add    %al,(%rax)
 a28:	c0 31 20             	shlb   $0x20,(%rcx)
 a2b:	00 00                	add    %al,(%rax)
 a2d:	00 00                	add    %al,(%rax)
 a2f:	00 38                	add    %bh,(%rax)
 a31:	37                   	(bad)  
 a32:	20 00                	and    %al,(%rax)
 a34:	00 00                	add    %al,(%rax)
 a36:	00 00                	add    %al,(%rax)
 a38:	08 00                	or     %al,(%rax)
 a3a:	00 00                	add    %al,(%rax)
 a3c:	00 00                	add    %al,(%rax)
 a3e:	00 00                	add    %al,(%rax)
 a40:	80 31 20             	xorb   $0x20,(%rcx)
 a43:	00 00                	add    %al,(%rax)
 a45:	00 00                	add    %al,(%rax)
 a47:	00 40 37             	add    %al,0x37(%rax)
 a4a:	20 00                	and    %al,(%rax)
 a4c:	00 00                	add    %al,(%rax)
 a4e:	00 00                	add    %al,(%rax)
 a50:	08 00                	or     %al,(%rax)
 a52:	00 00                	add    %al,(%rax)
 a54:	00 00                	add    %al,(%rax)
 a56:	00 00                	add    %al,(%rax)
 a58:	20 32                	and    %dh,(%rdx)
 a5a:	20 00                	and    %al,(%rax)
 a5c:	00 00                	add    %al,(%rax)
 a5e:	00 00                	add    %al,(%rax)
 a60:	58                   	pop    %rax
 a61:	37                   	(bad)  
 a62:	20 00                	and    %al,(%rax)
 a64:	00 00                	add    %al,(%rax)
 a66:	00 00                	add    %al,(%rax)
 a68:	08 00                	or     %al,(%rax)
 a6a:	00 00                	add    %al,(%rax)
 a6c:	00 00                	add    %al,(%rax)
 a6e:	00 00                	add    %al,(%rax)
 a70:	60                   	(bad)  
 a71:	37                   	(bad)  
 a72:	20 00                	and    %al,(%rax)
 a74:	00 00                	add    %al,(%rax)
 a76:	00 00                	add    %al,(%rax)
 a78:	68 37 20 00 00       	pushq  $0x2037
 a7d:	00 00                	add    %al,(%rax)
 a7f:	00 08                	add    %cl,(%rax)
 a81:	00 00                	add    %al,(%rax)
 a83:	00 00                	add    %al,(%rax)
 a85:	00 00                	add    %al,(%rax)
 a87:	00 70 37             	add    %dh,0x37(%rax)
 a8a:	20 00                	and    %al,(%rax)
 a8c:	00 00                	add    %al,(%rax)
 a8e:	00 00                	add    %al,(%rax)
 a90:	78 37                	js     ac9 <_init-0x3cf>
 a92:	20 00                	and    %al,(%rax)
 a94:	00 00                	add    %al,(%rax)
 a96:	00 00                	add    %al,(%rax)
 a98:	08 00                	or     %al,(%rax)
 a9a:	00 00                	add    %al,(%rax)
 a9c:	00 00                	add    %al,(%rax)
 a9e:	00 00                	add    %al,(%rax)
 aa0:	80 37 20             	xorb   $0x20,(%rdi)
 aa3:	00 00                	add    %al,(%rax)
 aa5:	00 00                	add    %al,(%rax)
 aa7:	00 88 37 20 00 00    	add    %cl,0x2037(%rax)
 aad:	00 00                	add    %al,(%rax)
 aaf:	00 08                	add    %cl,(%rax)
 ab1:	00 00                	add    %al,(%rax)
 ab3:	00 00                	add    %al,(%rax)
 ab5:	00 00                	add    %al,(%rax)
 ab7:	00 90 37 20 00 00    	add    %dl,0x2037(%rax)
 abd:	00 00                	add    %al,(%rax)
 abf:	00 98 37 20 00 00    	add    %bl,0x2037(%rax)
 ac5:	00 00                	add    %al,(%rax)
 ac7:	00 08                	add    %cl,(%rax)
 ac9:	00 00                	add    %al,(%rax)
 acb:	00 00                	add    %al,(%rax)
 acd:	00 00                	add    %al,(%rax)
 acf:	00 40 32             	add    %al,0x32(%rax)
 ad2:	20 00                	and    %al,(%rax)
 ad4:	00 00                	add    %al,(%rax)
 ad6:	00 00                	add    %al,(%rax)
 ad8:	d0 2f                	shrb   (%rdi)
 ada:	20 00                	and    %al,(%rax)
 adc:	00 00                	add    %al,(%rax)
 ade:	00 00                	add    %al,(%rax)
 ae0:	06                   	(bad)  
 ae1:	00 00                	add    %al,(%rax)
 ae3:	00 03                	add    %al,(%rbx)
	...
 aed:	00 00                	add    %al,(%rax)
 aef:	00 d8                	add    %bl,%al
 af1:	2f                   	(bad)  
 af2:	20 00                	and    %al,(%rax)
 af4:	00 00                	add    %al,(%rax)
 af6:	00 00                	add    %al,(%rax)
 af8:	06                   	(bad)  
 af9:	00 00                	add    %al,(%rax)
 afb:	00 0e                	add    %cl,(%rsi)
	...
 b05:	00 00                	add    %al,(%rax)
 b07:	00 e0                	add    %ah,%al
 b09:	2f                   	(bad)  
 b0a:	20 00                	and    %al,(%rax)
 b0c:	00 00                	add    %al,(%rax)
 b0e:	00 00                	add    %al,(%rax)
 b10:	06                   	(bad)  
 b11:	00 00                	add    %al,(%rax)
 b13:	00 14 00             	add    %dl,(%rax,%rax,1)
	...
 b1e:	00 00                	add    %al,(%rax)
 b20:	e8 2f 20 00 00       	callq  2b54 <__GNU_EH_FRAME_HDR+0x3d4>
 b25:	00 00                	add    %al,(%rax)
 b27:	00 06                	add    %al,(%rsi)
 b29:	00 00                	add    %al,(%rax)
 b2b:	00 1c 00             	add    %bl,(%rax,%rax,1)
	...
 b36:	00 00                	add    %al,(%rax)
 b38:	f0 2f                	lock (bad) 
 b3a:	20 00                	and    %al,(%rax)
 b3c:	00 00                	add    %al,(%rax)
 b3e:	00 00                	add    %al,(%rax)
 b40:	06                   	(bad)  
 b41:	00 00                	add    %al,(%rax)
 b43:	00 22                	add    %ah,(%rdx)
	...
 b4d:	00 00                	add    %al,(%rax)
 b4f:	00 f8                	add    %bh,%al
 b51:	2f                   	(bad)  
 b52:	20 00                	and    %al,(%rax)
 b54:	00 00                	add    %al,(%rax)
 b56:	00 00                	add    %al,(%rax)
 b58:	06                   	(bad)  
 b59:	00 00                	add    %al,(%rax)
 b5b:	00 24 00             	add    %ah,(%rax,%rax,1)
	...
 b66:	00 00                	add    %al,(%rax)
 b68:	a0 37 20 00 00 00 00 	movabs 0x500000000002037,%al
 b6f:	00 05 
 b71:	00 00                	add    %al,(%rax)
 b73:	00 27                	add    %ah,(%rdi)
	...
 b7d:	00 00                	add    %al,(%rax)
 b7f:	00 b0 37 20 00 00    	add    %dh,0x2037(%rax)
 b85:	00 00                	add    %al,(%rax)
 b87:	00 05 00 00 00 28    	add    %al,0x28000000(%rip)        # 28000b8d <_end+0x27dfcd1d>
	...

Disassembly of section .rela.plt:

0000000000000b98 <.rela.plt>:
 b98:	18 30                	sbb    %dh,(%rax)
 b9a:	20 00                	and    %al,(%rax)
 b9c:	00 00                	add    %al,(%rax)
 b9e:	00 00                	add    %al,(%rax)
 ba0:	07                   	(bad)  
 ba1:	00 00                	add    %al,(%rax)
 ba3:	00 01                	add    %al,(%rcx)
	...
 bad:	00 00                	add    %al,(%rax)
 baf:	00 20                	add    %ah,(%rax)
 bb1:	30 20                	xor    %ah,(%rax)
 bb3:	00 00                	add    %al,(%rax)
 bb5:	00 00                	add    %al,(%rax)
 bb7:	00 07                	add    %al,(%rdi)
 bb9:	00 00                	add    %al,(%rax)
 bbb:	00 02                	add    %al,(%rdx)
	...
 bc5:	00 00                	add    %al,(%rax)
 bc7:	00 28                	add    %ch,(%rax)
 bc9:	30 20                	xor    %ah,(%rax)
 bcb:	00 00                	add    %al,(%rax)
 bcd:	00 00                	add    %al,(%rax)
 bcf:	00 07                	add    %al,(%rdi)
 bd1:	00 00                	add    %al,(%rax)
 bd3:	00 04 00             	add    %al,(%rax,%rax,1)
	...
 bde:	00 00                	add    %al,(%rax)
 be0:	30 30                	xor    %dh,(%rax)
 be2:	20 00                	and    %al,(%rax)
 be4:	00 00                	add    %al,(%rax)
 be6:	00 00                	add    %al,(%rax)
 be8:	07                   	(bad)  
 be9:	00 00                	add    %al,(%rax)
 beb:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # bf1 <_init-0x2a7>
 bf1:	00 00                	add    %al,(%rax)
 bf3:	00 00                	add    %al,(%rax)
 bf5:	00 00                	add    %al,(%rax)
 bf7:	00 38                	add    %bh,(%rax)
 bf9:	30 20                	xor    %ah,(%rax)
 bfb:	00 00                	add    %al,(%rax)
 bfd:	00 00                	add    %al,(%rax)
 bff:	00 07                	add    %al,(%rdi)
 c01:	00 00                	add    %al,(%rax)
 c03:	00 06                	add    %al,(%rsi)
	...
 c0d:	00 00                	add    %al,(%rax)
 c0f:	00 40 30             	add    %al,0x30(%rax)
 c12:	20 00                	and    %al,(%rax)
 c14:	00 00                	add    %al,(%rax)
 c16:	00 00                	add    %al,(%rax)
 c18:	07                   	(bad)  
 c19:	00 00                	add    %al,(%rax)
 c1b:	00 07                	add    %al,(%rdi)
	...
 c25:	00 00                	add    %al,(%rax)
 c27:	00 48 30             	add    %cl,0x30(%rax)
 c2a:	20 00                	and    %al,(%rax)
 c2c:	00 00                	add    %al,(%rax)
 c2e:	00 00                	add    %al,(%rax)
 c30:	07                   	(bad)  
 c31:	00 00                	add    %al,(%rax)
 c33:	00 08                	add    %cl,(%rax)
	...
 c3d:	00 00                	add    %al,(%rax)
 c3f:	00 50 30             	add    %dl,0x30(%rax)
 c42:	20 00                	and    %al,(%rax)
 c44:	00 00                	add    %al,(%rax)
 c46:	00 00                	add    %al,(%rax)
 c48:	07                   	(bad)  
 c49:	00 00                	add    %al,(%rax)
 c4b:	00 09                	add    %cl,(%rcx)
	...
 c55:	00 00                	add    %al,(%rax)
 c57:	00 58 30             	add    %bl,0x30(%rax)
 c5a:	20 00                	and    %al,(%rax)
 c5c:	00 00                	add    %al,(%rax)
 c5e:	00 00                	add    %al,(%rax)
 c60:	07                   	(bad)  
 c61:	00 00                	add    %al,(%rax)
 c63:	00 0a                	add    %cl,(%rdx)
	...
 c6d:	00 00                	add    %al,(%rax)
 c6f:	00 60 30             	add    %ah,0x30(%rax)
 c72:	20 00                	and    %al,(%rax)
 c74:	00 00                	add    %al,(%rax)
 c76:	00 00                	add    %al,(%rax)
 c78:	07                   	(bad)  
 c79:	00 00                	add    %al,(%rax)
 c7b:	00 0b                	add    %cl,(%rbx)
	...
 c85:	00 00                	add    %al,(%rax)
 c87:	00 68 30             	add    %ch,0x30(%rax)
 c8a:	20 00                	and    %al,(%rax)
 c8c:	00 00                	add    %al,(%rax)
 c8e:	00 00                	add    %al,(%rax)
 c90:	07                   	(bad)  
 c91:	00 00                	add    %al,(%rax)
 c93:	00 0c 00             	add    %cl,(%rax,%rax,1)
	...
 c9e:	00 00                	add    %al,(%rax)
 ca0:	70 30                	jo     cd2 <_init-0x1c6>
 ca2:	20 00                	and    %al,(%rax)
 ca4:	00 00                	add    %al,(%rax)
 ca6:	00 00                	add    %al,(%rax)
 ca8:	07                   	(bad)  
 ca9:	00 00                	add    %al,(%rax)
 cab:	00 0d 00 00 00 00    	add    %cl,0x0(%rip)        # cb1 <_init-0x1e7>
 cb1:	00 00                	add    %al,(%rax)
 cb3:	00 00                	add    %al,(%rax)
 cb5:	00 00                	add    %al,(%rax)
 cb7:	00 78 30             	add    %bh,0x30(%rax)
 cba:	20 00                	and    %al,(%rax)
 cbc:	00 00                	add    %al,(%rax)
 cbe:	00 00                	add    %al,(%rax)
 cc0:	07                   	(bad)  
 cc1:	00 00                	add    %al,(%rax)
 cc3:	00 0f                	add    %cl,(%rdi)
	...
 ccd:	00 00                	add    %al,(%rax)
 ccf:	00 80 30 20 00 00    	add    %al,0x2030(%rax)
 cd5:	00 00                	add    %al,(%rax)
 cd7:	00 07                	add    %al,(%rdi)
 cd9:	00 00                	add    %al,(%rax)
 cdb:	00 10                	add    %dl,(%rax)
	...
 ce5:	00 00                	add    %al,(%rax)
 ce7:	00 88 30 20 00 00    	add    %cl,0x2030(%rax)
 ced:	00 00                	add    %al,(%rax)
 cef:	00 07                	add    %al,(%rdi)
 cf1:	00 00                	add    %al,(%rax)
 cf3:	00 11                	add    %dl,(%rcx)
	...
 cfd:	00 00                	add    %al,(%rax)
 cff:	00 90 30 20 00 00    	add    %dl,0x2030(%rax)
 d05:	00 00                	add    %al,(%rax)
 d07:	00 07                	add    %al,(%rdi)
 d09:	00 00                	add    %al,(%rax)
 d0b:	00 12                	add    %dl,(%rdx)
	...
 d15:	00 00                	add    %al,(%rax)
 d17:	00 98 30 20 00 00    	add    %bl,0x2030(%rax)
 d1d:	00 00                	add    %al,(%rax)
 d1f:	00 07                	add    %al,(%rdi)
 d21:	00 00                	add    %al,(%rax)
 d23:	00 13                	add    %dl,(%rbx)
	...
 d2d:	00 00                	add    %al,(%rax)
 d2f:	00 a0 30 20 00 00    	add    %ah,0x2030(%rax)
 d35:	00 00                	add    %al,(%rax)
 d37:	00 07                	add    %al,(%rdi)
 d39:	00 00                	add    %al,(%rax)
 d3b:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # d41 <_init-0x157>
 d41:	00 00                	add    %al,(%rax)
 d43:	00 00                	add    %al,(%rax)
 d45:	00 00                	add    %al,(%rax)
 d47:	00 a8 30 20 00 00    	add    %ch,0x2030(%rax)
 d4d:	00 00                	add    %al,(%rax)
 d4f:	00 07                	add    %al,(%rdi)
 d51:	00 00                	add    %al,(%rax)
 d53:	00 16                	add    %dl,(%rsi)
	...
 d5d:	00 00                	add    %al,(%rax)
 d5f:	00 b0 30 20 00 00    	add    %dh,0x2030(%rax)
 d65:	00 00                	add    %al,(%rax)
 d67:	00 07                	add    %al,(%rdi)
 d69:	00 00                	add    %al,(%rax)
 d6b:	00 17                	add    %dl,(%rdi)
	...
 d75:	00 00                	add    %al,(%rax)
 d77:	00 b8 30 20 00 00    	add    %bh,0x2030(%rax)
 d7d:	00 00                	add    %al,(%rax)
 d7f:	00 07                	add    %al,(%rdi)
 d81:	00 00                	add    %al,(%rax)
 d83:	00 18                	add    %bl,(%rax)
	...
 d8d:	00 00                	add    %al,(%rax)
 d8f:	00 c0                	add    %al,%al
 d91:	30 20                	xor    %ah,(%rax)
 d93:	00 00                	add    %al,(%rax)
 d95:	00 00                	add    %al,(%rax)
 d97:	00 07                	add    %al,(%rdi)
 d99:	00 00                	add    %al,(%rax)
 d9b:	00 19                	add    %bl,(%rcx)
	...
 da5:	00 00                	add    %al,(%rax)
 da7:	00 c8                	add    %cl,%al
 da9:	30 20                	xor    %ah,(%rax)
 dab:	00 00                	add    %al,(%rax)
 dad:	00 00                	add    %al,(%rax)
 daf:	00 07                	add    %al,(%rdi)
 db1:	00 00                	add    %al,(%rax)
 db3:	00 1a                	add    %bl,(%rdx)
	...
 dbd:	00 00                	add    %al,(%rax)
 dbf:	00 d0                	add    %dl,%al
 dc1:	30 20                	xor    %ah,(%rax)
 dc3:	00 00                	add    %al,(%rax)
 dc5:	00 00                	add    %al,(%rax)
 dc7:	00 07                	add    %al,(%rdi)
 dc9:	00 00                	add    %al,(%rax)
 dcb:	00 1b                	add    %bl,(%rbx)
	...
 dd5:	00 00                	add    %al,(%rax)
 dd7:	00 d8                	add    %bl,%al
 dd9:	30 20                	xor    %ah,(%rax)
 ddb:	00 00                	add    %al,(%rax)
 ddd:	00 00                	add    %al,(%rax)
 ddf:	00 07                	add    %al,(%rdi)
 de1:	00 00                	add    %al,(%rax)
 de3:	00 1d 00 00 00 00    	add    %bl,0x0(%rip)        # de9 <_init-0xaf>
 de9:	00 00                	add    %al,(%rax)
 deb:	00 00                	add    %al,(%rax)
 ded:	00 00                	add    %al,(%rax)
 def:	00 e0                	add    %ah,%al
 df1:	30 20                	xor    %ah,(%rax)
 df3:	00 00                	add    %al,(%rax)
 df5:	00 00                	add    %al,(%rax)
 df7:	00 07                	add    %al,(%rdi)
 df9:	00 00                	add    %al,(%rax)
 dfb:	00 1e                	add    %bl,(%rsi)
	...
 e05:	00 00                	add    %al,(%rax)
 e07:	00 e8                	add    %ch,%al
 e09:	30 20                	xor    %ah,(%rax)
 e0b:	00 00                	add    %al,(%rax)
 e0d:	00 00                	add    %al,(%rax)
 e0f:	00 07                	add    %al,(%rdi)
 e11:	00 00                	add    %al,(%rax)
 e13:	00 1f                	add    %bl,(%rdi)
	...
 e1d:	00 00                	add    %al,(%rax)
 e1f:	00 f0                	add    %dh,%al
 e21:	30 20                	xor    %ah,(%rax)
 e23:	00 00                	add    %al,(%rax)
 e25:	00 00                	add    %al,(%rax)
 e27:	00 07                	add    %al,(%rdi)
 e29:	00 00                	add    %al,(%rax)
 e2b:	00 20                	add    %ah,(%rax)
	...
 e35:	00 00                	add    %al,(%rax)
 e37:	00 f8                	add    %bh,%al
 e39:	30 20                	xor    %ah,(%rax)
 e3b:	00 00                	add    %al,(%rax)
 e3d:	00 00                	add    %al,(%rax)
 e3f:	00 07                	add    %al,(%rdi)
 e41:	00 00                	add    %al,(%rax)
 e43:	00 21                	add    %ah,(%rcx)
	...
 e51:	31 20                	xor    %esp,(%rax)
 e53:	00 00                	add    %al,(%rax)
 e55:	00 00                	add    %al,(%rax)
 e57:	00 07                	add    %al,(%rdi)
 e59:	00 00                	add    %al,(%rax)
 e5b:	00 23                	add    %ah,(%rbx)
	...
 e65:	00 00                	add    %al,(%rax)
 e67:	00 08                	add    %cl,(%rax)
 e69:	31 20                	xor    %esp,(%rax)
 e6b:	00 00                	add    %al,(%rax)
 e6d:	00 00                	add    %al,(%rax)
 e6f:	00 07                	add    %al,(%rdi)
 e71:	00 00                	add    %al,(%rax)
 e73:	00 25 00 00 00 00    	add    %ah,0x0(%rip)        # e79 <_init-0x1f>
 e79:	00 00                	add    %al,(%rax)
 e7b:	00 00                	add    %al,(%rax)
 e7d:	00 00                	add    %al,(%rax)
 e7f:	00 10                	add    %dl,(%rax)
 e81:	31 20                	xor    %esp,(%rax)
 e83:	00 00                	add    %al,(%rax)
 e85:	00 00                	add    %al,(%rax)
 e87:	00 07                	add    %al,(%rdi)
 e89:	00 00                	add    %al,(%rax)
 e8b:	00 26                	add    %ah,(%rsi)
	...

Disassembly of section .init:

0000000000000e98 <_init>:
 e98:	48 83 ec 08          	sub    $0x8,%rsp
 e9c:	48 8b 05 3d 21 20 00 	mov    0x20213d(%rip),%rax        # 202fe0 <__gmon_start__>
 ea3:	48 85 c0             	test   %rax,%rax
 ea6:	74 02                	je     eaa <_init+0x12>
 ea8:	ff d0                	callq  *%rax
 eaa:	48 83 c4 08          	add    $0x8,%rsp
 eae:	c3                   	retq   

Disassembly of section .plt:

0000000000000eb0 <.plt>:
     eb0:	ff 35 52 21 20 00    	pushq  0x202152(%rip)        # 203008 <_GLOBAL_OFFSET_TABLE_+0x8>
     eb6:	ff 25 54 21 20 00    	jmpq   *0x202154(%rip)        # 203010 <_GLOBAL_OFFSET_TABLE_+0x10>
     ebc:	0f 1f 40 00          	nopl   0x0(%rax)

0000000000000ec0 <getenv@plt>:
     ec0:	ff 25 52 21 20 00    	jmpq   *0x202152(%rip)        # 203018 <getenv@GLIBC_2.2.5>
     ec6:	68 00 00 00 00       	pushq  $0x0
     ecb:	e9 e0 ff ff ff       	jmpq   eb0 <.plt>

0000000000000ed0 <__errno_location@plt>:
     ed0:	ff 25 4a 21 20 00    	jmpq   *0x20214a(%rip)        # 203020 <__errno_location@GLIBC_2.2.5>
     ed6:	68 01 00 00 00       	pushq  $0x1
     edb:	e9 d0 ff ff ff       	jmpq   eb0 <.plt>

0000000000000ee0 <strcpy@plt>:
     ee0:	ff 25 42 21 20 00    	jmpq   *0x202142(%rip)        # 203028 <strcpy@GLIBC_2.2.5>
     ee6:	68 02 00 00 00       	pushq  $0x2
     eeb:	e9 c0 ff ff ff       	jmpq   eb0 <.plt>

0000000000000ef0 <puts@plt>:
     ef0:	ff 25 3a 21 20 00    	jmpq   *0x20213a(%rip)        # 203030 <puts@GLIBC_2.2.5>
     ef6:	68 03 00 00 00       	pushq  $0x3
     efb:	e9 b0 ff ff ff       	jmpq   eb0 <.plt>

0000000000000f00 <write@plt>:
     f00:	ff 25 32 21 20 00    	jmpq   *0x202132(%rip)        # 203038 <write@GLIBC_2.2.5>
     f06:	68 04 00 00 00       	pushq  $0x4
     f0b:	e9 a0 ff ff ff       	jmpq   eb0 <.plt>

0000000000000f10 <fclose@plt>:
     f10:	ff 25 2a 21 20 00    	jmpq   *0x20212a(%rip)        # 203040 <fclose@GLIBC_2.2.5>
     f16:	68 05 00 00 00       	pushq  $0x5
     f1b:	e9 90 ff ff ff       	jmpq   eb0 <.plt>

0000000000000f20 <system@plt>:
     f20:	ff 25 22 21 20 00    	jmpq   *0x202122(%rip)        # 203048 <system@GLIBC_2.2.5>
     f26:	68 06 00 00 00       	pushq  $0x6
     f2b:	e9 80 ff ff ff       	jmpq   eb0 <.plt>

0000000000000f30 <printf@plt>:
     f30:	ff 25 1a 21 20 00    	jmpq   *0x20211a(%rip)        # 203050 <printf@GLIBC_2.2.5>
     f36:	68 07 00 00 00       	pushq  $0x7
     f3b:	e9 70 ff ff ff       	jmpq   eb0 <.plt>

0000000000000f40 <rewind@plt>:
     f40:	ff 25 12 21 20 00    	jmpq   *0x202112(%rip)        # 203058 <rewind@GLIBC_2.2.5>
     f46:	68 08 00 00 00       	pushq  $0x8
     f4b:	e9 60 ff ff ff       	jmpq   eb0 <.plt>

0000000000000f50 <dup@plt>:
     f50:	ff 25 0a 21 20 00    	jmpq   *0x20210a(%rip)        # 203060 <dup@GLIBC_2.2.5>
     f56:	68 09 00 00 00       	pushq  $0x9
     f5b:	e9 50 ff ff ff       	jmpq   eb0 <.plt>

0000000000000f60 <close@plt>:
     f60:	ff 25 02 21 20 00    	jmpq   *0x202102(%rip)        # 203068 <close@GLIBC_2.2.5>
     f66:	68 0a 00 00 00       	pushq  $0xa
     f6b:	e9 40 ff ff ff       	jmpq   eb0 <.plt>

0000000000000f70 <fputc@plt>:
     f70:	ff 25 fa 20 20 00    	jmpq   *0x2020fa(%rip)        # 203070 <fputc@GLIBC_2.2.5>
     f76:	68 0b 00 00 00       	pushq  $0xb
     f7b:	e9 30 ff ff ff       	jmpq   eb0 <.plt>

0000000000000f80 <fgets@plt>:
     f80:	ff 25 f2 20 20 00    	jmpq   *0x2020f2(%rip)        # 203078 <fgets@GLIBC_2.2.5>
     f86:	68 0c 00 00 00       	pushq  $0xc
     f8b:	e9 20 ff ff ff       	jmpq   eb0 <.plt>

0000000000000f90 <tmpfile@plt>:
     f90:	ff 25 ea 20 20 00    	jmpq   *0x2020ea(%rip)        # 203080 <tmpfile@GLIBC_2.2.5>
     f96:	68 0d 00 00 00       	pushq  $0xd
     f9b:	e9 10 ff ff ff       	jmpq   eb0 <.plt>

0000000000000fa0 <signal@plt>:
     fa0:	ff 25 e2 20 20 00    	jmpq   *0x2020e2(%rip)        # 203088 <signal@GLIBC_2.2.5>
     fa6:	68 0e 00 00 00       	pushq  $0xe
     fab:	e9 00 ff ff ff       	jmpq   eb0 <.plt>

0000000000000fb0 <gethostbyname@plt>:
     fb0:	ff 25 da 20 20 00    	jmpq   *0x2020da(%rip)        # 203090 <gethostbyname@GLIBC_2.2.5>
     fb6:	68 0f 00 00 00       	pushq  $0xf
     fbb:	e9 f0 fe ff ff       	jmpq   eb0 <.plt>

0000000000000fc0 <fprintf@plt>:
     fc0:	ff 25 d2 20 20 00    	jmpq   *0x2020d2(%rip)        # 203098 <fprintf@GLIBC_2.2.5>
     fc6:	68 10 00 00 00       	pushq  $0x10
     fcb:	e9 e0 fe ff ff       	jmpq   eb0 <.plt>

0000000000000fd0 <strtol@plt>:
     fd0:	ff 25 ca 20 20 00    	jmpq   *0x2020ca(%rip)        # 2030a0 <strtol@GLIBC_2.2.5>
     fd6:	68 11 00 00 00       	pushq  $0x11
     fdb:	e9 d0 fe ff ff       	jmpq   eb0 <.plt>

0000000000000fe0 <inet_pton@plt>:
     fe0:	ff 25 c2 20 20 00    	jmpq   *0x2020c2(%rip)        # 2030a8 <inet_pton@GLIBC_2.2.5>
     fe6:	68 12 00 00 00       	pushq  $0x12
     feb:	e9 c0 fe ff ff       	jmpq   eb0 <.plt>

0000000000000ff0 <fflush@plt>:
     ff0:	ff 25 ba 20 20 00    	jmpq   *0x2020ba(%rip)        # 2030b0 <fflush@GLIBC_2.2.5>
     ff6:	68 13 00 00 00       	pushq  $0x13
     ffb:	e9 b0 fe ff ff       	jmpq   eb0 <.plt>

0000000000001000 <__isoc99_sscanf@plt>:
    1000:	ff 25 b2 20 20 00    	jmpq   *0x2020b2(%rip)        # 2030b8 <__isoc99_sscanf@GLIBC_2.7>
    1006:	68 14 00 00 00       	pushq  $0x14
    100b:	e9 a0 fe ff ff       	jmpq   eb0 <.plt>

0000000000001010 <bcopy@plt>:
    1010:	ff 25 aa 20 20 00    	jmpq   *0x2020aa(%rip)        # 2030c0 <bcopy@GLIBC_2.2.5>
    1016:	68 15 00 00 00       	pushq  $0x15
    101b:	e9 90 fe ff ff       	jmpq   eb0 <.plt>

0000000000001020 <cuserid@plt>:
    1020:	ff 25 a2 20 20 00    	jmpq   *0x2020a2(%rip)        # 2030c8 <cuserid@GLIBC_2.2.5>
    1026:	68 16 00 00 00       	pushq  $0x16
    102b:	e9 80 fe ff ff       	jmpq   eb0 <.plt>

0000000000001030 <fopen@plt>:
    1030:	ff 25 9a 20 20 00    	jmpq   *0x20209a(%rip)        # 2030d0 <fopen@GLIBC_2.2.5>
    1036:	68 17 00 00 00       	pushq  $0x17
    103b:	e9 70 fe ff ff       	jmpq   eb0 <.plt>

0000000000001040 <strcat@plt>:
    1040:	ff 25 92 20 20 00    	jmpq   *0x202092(%rip)        # 2030d8 <strcat@GLIBC_2.2.5>
    1046:	68 18 00 00 00       	pushq  $0x18
    104b:	e9 60 fe ff ff       	jmpq   eb0 <.plt>

0000000000001050 <sprintf@plt>:
    1050:	ff 25 8a 20 20 00    	jmpq   *0x20208a(%rip)        # 2030e0 <sprintf@GLIBC_2.2.5>
    1056:	68 19 00 00 00       	pushq  $0x19
    105b:	e9 50 fe ff ff       	jmpq   eb0 <.plt>

0000000000001060 <exit@plt>:
    1060:	ff 25 82 20 20 00    	jmpq   *0x202082(%rip)        # 2030e8 <exit@GLIBC_2.2.5>
    1066:	68 1a 00 00 00       	pushq  $0x1a
    106b:	e9 40 fe ff ff       	jmpq   eb0 <.plt>

0000000000001070 <connect@plt>:
    1070:	ff 25 7a 20 20 00    	jmpq   *0x20207a(%rip)        # 2030f0 <connect@GLIBC_2.2.5>
    1076:	68 1b 00 00 00       	pushq  $0x1b
    107b:	e9 30 fe ff ff       	jmpq   eb0 <.plt>

0000000000001080 <fwrite@plt>:
    1080:	ff 25 72 20 20 00    	jmpq   *0x202072(%rip)        # 2030f8 <fwrite@GLIBC_2.2.5>
    1086:	68 1c 00 00 00       	pushq  $0x1c
    108b:	e9 20 fe ff ff       	jmpq   eb0 <.plt>

0000000000001090 <sleep@plt>:
    1090:	ff 25 6a 20 20 00    	jmpq   *0x20206a(%rip)        # 203100 <sleep@GLIBC_2.2.5>
    1096:	68 1d 00 00 00       	pushq  $0x1d
    109b:	e9 10 fe ff ff       	jmpq   eb0 <.plt>

00000000000010a0 <__ctype_b_loc@plt>:
    10a0:	ff 25 62 20 20 00    	jmpq   *0x202062(%rip)        # 203108 <__ctype_b_loc@GLIBC_2.3>
    10a6:	68 1e 00 00 00       	pushq  $0x1e
    10ab:	e9 00 fe ff ff       	jmpq   eb0 <.plt>

00000000000010b0 <socket@plt>:
    10b0:	ff 25 5a 20 20 00    	jmpq   *0x20205a(%rip)        # 203110 <socket@GLIBC_2.2.5>
    10b6:	68 1f 00 00 00       	pushq  $0x1f
    10bb:	e9 f0 fd ff ff       	jmpq   eb0 <.plt>

Disassembly of section .plt.got:

00000000000010c0 <__cxa_finalize@plt>:
    10c0:	ff 25 32 1f 20 00    	jmpq   *0x201f32(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
    10c6:	66 90                	xchg   %ax,%ax

Disassembly of section .text:

00000000000010d0 <_start>:
    10d0:	31 ed                	xor    %ebp,%ebp
    10d2:	49 89 d1             	mov    %rdx,%r9
    10d5:	5e                   	pop    %rsi
    10d6:	48 89 e2             	mov    %rsp,%rdx
    10d9:	48 83 e4 f0          	and    $0xfffffffffffffff0,%rsp
    10dd:	50                   	push   %rax
    10de:	54                   	push   %rsp
    10df:	4c 8d 05 ea 10 00 00 	lea    0x10ea(%rip),%r8        # 21d0 <__libc_csu_fini>
    10e6:	48 8d 0d 73 10 00 00 	lea    0x1073(%rip),%rcx        # 2160 <__libc_csu_init>
    10ed:	48 8d 3d 0c 01 00 00 	lea    0x10c(%rip),%rdi        # 1200 <main>
    10f4:	ff 15 de 1e 20 00    	callq  *0x201ede(%rip)        # 202fd8 <__libc_start_main@GLIBC_2.2.5>
    10fa:	f4                   	hlt    
    10fb:	0f 1f 44 00 00       	nopl   0x0(%rax,%rax,1)

0000000000001100 <deregister_tm_clones>:
    1100:	48 8d 3d 99 26 20 00 	lea    0x202699(%rip),%rdi        # 2037a0 <stdout@@GLIBC_2.2.5>
    1107:	48 8d 05 99 26 20 00 	lea    0x202699(%rip),%rax        # 2037a7 <__TMC_END__+0x7>
    110e:	55                   	push   %rbp
    110f:	48 29 f8             	sub    %rdi,%rax
    1112:	48 89 e5             	mov    %rsp,%rbp
    1115:	48 83 f8 0e          	cmp    $0xe,%rax
    1119:	76 15                	jbe    1130 <deregister_tm_clones+0x30>
    111b:	48 8b 05 ae 1e 20 00 	mov    0x201eae(%rip),%rax        # 202fd0 <_ITM_deregisterTMCloneTable>
    1122:	48 85 c0             	test   %rax,%rax
    1125:	74 09                	je     1130 <deregister_tm_clones+0x30>
    1127:	5d                   	pop    %rbp
    1128:	ff e0                	jmpq   *%rax
    112a:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    1130:	5d                   	pop    %rbp
    1131:	c3                   	retq   
    1132:	0f 1f 40 00          	nopl   0x0(%rax)
    1136:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    113d:	00 00 00 

0000000000001140 <register_tm_clones>:
    1140:	48 8d 3d 59 26 20 00 	lea    0x202659(%rip),%rdi        # 2037a0 <stdout@@GLIBC_2.2.5>
    1147:	48 8d 35 52 26 20 00 	lea    0x202652(%rip),%rsi        # 2037a0 <stdout@@GLIBC_2.2.5>
    114e:	55                   	push   %rbp
    114f:	48 29 fe             	sub    %rdi,%rsi
    1152:	48 89 e5             	mov    %rsp,%rbp
    1155:	48 c1 fe 03          	sar    $0x3,%rsi
    1159:	48 89 f0             	mov    %rsi,%rax
    115c:	48 c1 e8 3f          	shr    $0x3f,%rax
    1160:	48 01 c6             	add    %rax,%rsi
    1163:	48 d1 fe             	sar    %rsi
    1166:	74 18                	je     1180 <register_tm_clones+0x40>
    1168:	48 8b 05 81 1e 20 00 	mov    0x201e81(%rip),%rax        # 202ff0 <_ITM_registerTMCloneTable>
    116f:	48 85 c0             	test   %rax,%rax
    1172:	74 0c                	je     1180 <register_tm_clones+0x40>
    1174:	5d                   	pop    %rbp
    1175:	ff e0                	jmpq   *%rax
    1177:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    117e:	00 00 
    1180:	5d                   	pop    %rbp
    1181:	c3                   	retq   
    1182:	0f 1f 40 00          	nopl   0x0(%rax)
    1186:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    118d:	00 00 00 

0000000000001190 <__do_global_dtors_aux>:
    1190:	80 3d 21 26 20 00 00 	cmpb   $0x0,0x202621(%rip)        # 2037b8 <completed.6972>
    1197:	75 27                	jne    11c0 <__do_global_dtors_aux+0x30>
    1199:	48 83 3d 57 1e 20 00 	cmpq   $0x0,0x201e57(%rip)        # 202ff8 <__cxa_finalize@GLIBC_2.2.5>
    11a0:	00 
    11a1:	55                   	push   %rbp
    11a2:	48 89 e5             	mov    %rsp,%rbp
    11a5:	74 0c                	je     11b3 <__do_global_dtors_aux+0x23>
    11a7:	48 8b 3d 7a 1f 20 00 	mov    0x201f7a(%rip),%rdi        # 203128 <__dso_handle>
    11ae:	e8 0d ff ff ff       	callq  10c0 <__cxa_finalize@plt>
    11b3:	e8 48 ff ff ff       	callq  1100 <deregister_tm_clones>
    11b8:	5d                   	pop    %rbp
    11b9:	c6 05 f8 25 20 00 01 	movb   $0x1,0x2025f8(%rip)        # 2037b8 <completed.6972>
    11c0:	f3 c3                	repz retq 
    11c2:	0f 1f 40 00          	nopl   0x0(%rax)
    11c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    11cd:	00 00 00 

00000000000011d0 <frame_dummy>:
    11d0:	48 8d 3d 11 1c 20 00 	lea    0x201c11(%rip),%rdi        # 202de8 <__JCR_END__>
    11d7:	48 83 3f 00          	cmpq   $0x0,(%rdi)
    11db:	75 0b                	jne    11e8 <frame_dummy+0x18>
    11dd:	e9 5e ff ff ff       	jmpq   1140 <register_tm_clones>
    11e2:	66 0f 1f 44 00 00    	nopw   0x0(%rax,%rax,1)
    11e8:	48 8b 05 f9 1d 20 00 	mov    0x201df9(%rip),%rax        # 202fe8 <_Jv_RegisterClasses>
    11ef:	48 85 c0             	test   %rax,%rax
    11f2:	74 e9                	je     11dd <frame_dummy+0xd>
    11f4:	55                   	push   %rbp
    11f5:	48 89 e5             	mov    %rsp,%rbp
    11f8:	ff d0                	callq  *%rax
    11fa:	5d                   	pop    %rbp
    11fb:	e9 40 ff ff ff       	jmpq   1140 <register_tm_clones>

0000000000001200 <main>:
    1200:	53                   	push   %rbx
    1201:	83 ff 01             	cmp    $0x1,%edi
    1204:	0f 84 f8 00 00 00    	je     1302 <main+0x102>
    120a:	48 89 f3             	mov    %rsi,%rbx
    120d:	83 ff 02             	cmp    $0x2,%edi
    1210:	0f 85 1c 01 00 00    	jne    1332 <main+0x132>
    1216:	48 8b 7e 08          	mov    0x8(%rsi),%rdi
    121a:	48 8d 35 f9 13 00 00 	lea    0x13f9(%rip),%rsi        # 261a <array.3088+0x25a>
    1221:	e8 0a fe ff ff       	callq  1030 <fopen@plt>
    1226:	48 89 05 93 25 20 00 	mov    %rax,0x202593(%rip)        # 2037c0 <infile>
    122d:	48 85 c0             	test   %rax,%rax
    1230:	0f 84 df 00 00 00    	je     1315 <main+0x115>
    1236:	e8 2a 06 00 00       	callq  1865 <initialize_bomb>
    123b:	48 8d 3d 26 10 00 00 	lea    0x1026(%rip),%rdi        # 2268 <_IO_stdin_used+0x88>
    1242:	e8 a9 fc ff ff       	callq  ef0 <puts@plt>
    1247:	48 8d 3d 5a 10 00 00 	lea    0x105a(%rip),%rdi        # 22a8 <_IO_stdin_used+0xc8>
    124e:	e8 9d fc ff ff       	callq  ef0 <puts@plt>
    1253:	e8 68 0d 00 00       	callq  1fc0 <read_line>
    1258:	48 89 c7             	mov    %rax,%rdi
    125b:	e8 f0 00 00 00       	callq  1350 <phase_1>
    1260:	e8 5c 0e 00 00       	callq  20c1 <phase_defused>
    1265:	48 8d 3d 6c 10 00 00 	lea    0x106c(%rip),%rdi        # 22d8 <_IO_stdin_used+0xf8>
    126c:	e8 7f fc ff ff       	callq  ef0 <puts@plt>
    1271:	e8 4a 0d 00 00       	callq  1fc0 <read_line>
    1276:	48 89 c7             	mov    %rax,%rdi
    1279:	e8 f2 00 00 00       	callq  1370 <phase_2>
    127e:	e8 3e 0e 00 00       	callq  20c1 <phase_defused>
    1283:	48 8d 3d 91 0f 00 00 	lea    0xf91(%rip),%rdi        # 221b <_IO_stdin_used+0x3b>
    128a:	e8 61 fc ff ff       	callq  ef0 <puts@plt>
    128f:	e8 2c 0d 00 00       	callq  1fc0 <read_line>
    1294:	48 89 c7             	mov    %rax,%rdi
    1297:	e8 0f 01 00 00       	callq  13ab <phase_3>
    129c:	e8 20 0e 00 00       	callq  20c1 <phase_defused>
    12a1:	48 8d 3d 91 0f 00 00 	lea    0xf91(%rip),%rdi        # 2239 <_IO_stdin_used+0x59>
    12a8:	e8 43 fc ff ff       	callq  ef0 <puts@plt>
    12ad:	e8 0e 0d 00 00       	callq  1fc0 <read_line>
    12b2:	48 89 c7             	mov    %rax,%rdi
    12b5:	e8 a4 01 00 00       	callq  145e <phase_4>
    12ba:	e8 02 0e 00 00       	callq  20c1 <phase_defused>
    12bf:	48 8d 3d 42 10 00 00 	lea    0x1042(%rip),%rdi        # 2308 <_IO_stdin_used+0x128>
    12c6:	e8 25 fc ff ff       	callq  ef0 <puts@plt>
    12cb:	e8 f0 0c 00 00       	callq  1fc0 <read_line>
    12d0:	48 89 c7             	mov    %rax,%rdi
    12d3:	e8 cd 01 00 00       	callq  14a5 <phase_5>
    12d8:	e8 e4 0d 00 00       	callq  20c1 <phase_defused>
    12dd:	48 8d 3d 64 0f 00 00 	lea    0xf64(%rip),%rdi        # 2248 <_IO_stdin_used+0x68>
    12e4:	e8 07 fc ff ff       	callq  ef0 <puts@plt>
    12e9:	e8 d2 0c 00 00       	callq  1fc0 <read_line>
    12ee:	48 89 c7             	mov    %rax,%rdi
    12f1:	e8 27 02 00 00       	callq  151d <phase_6>
    12f6:	e8 c6 0d 00 00       	callq  20c1 <phase_defused>
    12fb:	b8 00 00 00 00       	mov    $0x0,%eax
    1300:	5b                   	pop    %rbx
    1301:	c3                   	retq   
    1302:	48 8b 05 a7 24 20 00 	mov    0x2024a7(%rip),%rax        # 2037b0 <stdin@@GLIBC_2.2.5>
    1309:	48 89 05 b0 24 20 00 	mov    %rax,0x2024b0(%rip)        # 2037c0 <infile>
    1310:	e9 21 ff ff ff       	jmpq   1236 <main+0x36>
    1315:	48 8b 53 08          	mov    0x8(%rbx),%rdx
    1319:	48 8b 33             	mov    (%rbx),%rsi
    131c:	48 8d 3d c1 0e 00 00 	lea    0xec1(%rip),%rdi        # 21e4 <_IO_stdin_used+0x4>
    1323:	e8 08 fc ff ff       	callq  f30 <printf@plt>
    1328:	bf 08 00 00 00       	mov    $0x8,%edi
    132d:	e8 2e fd ff ff       	callq  1060 <exit@plt>
    1332:	48 8b 36             	mov    (%rsi),%rsi
    1335:	48 8d 3d c5 0e 00 00 	lea    0xec5(%rip),%rdi        # 2201 <_IO_stdin_used+0x21>
    133c:	b8 00 00 00 00       	mov    $0x0,%eax
    1341:	e8 ea fb ff ff       	callq  f30 <printf@plt>
    1346:	bf 08 00 00 00       	mov    $0x8,%edi
    134b:	e8 10 fd ff ff       	callq  1060 <exit@plt>

0000000000001350 <phase_1>:
    1350:	48 83 ec 08          	sub    $0x8,%rsp
    1354:	48 8d 35 d5 0f 00 00 	lea    0xfd5(%rip),%rsi        # 2330 <_IO_stdin_used+0x150>
    135b:	e8 d3 03 00 00       	callq  1733 <strings_not_equal>
    1360:	85 c0                	test   %eax,%eax
    1362:	75 05                	jne    1369 <phase_1+0x19>
    1364:	48 83 c4 08          	add    $0x8,%rsp
    1368:	c3                   	retq   
    1369:	e8 d5 0b 00 00       	callq  1f43 <explode_bomb>
    136e:	eb f4                	jmp    1364 <phase_1+0x14>

0000000000001370 <phase_2>:
    1370:	55                   	push   %rbp
    1371:	53                   	push   %rbx
    1372:	48 83 ec 28          	sub    $0x28,%rsp
    1376:	48 89 e5             	mov    %rsp,%rbp
    1379:	48 89 e6             	mov    %rsp,%rsi
    137c:	e8 fe 0b 00 00       	callq  1f7f <read_six_numbers>
    1381:	48 89 e3             	mov    %rsp,%rbx
    1384:	48 83 c5 14          	add    $0x14,%rbp
    1388:	eb 09                	jmp    1393 <phase_2+0x23>
    138a:	48 83 c3 04          	add    $0x4,%rbx
    138e:	48 39 eb             	cmp    %rbp,%rbx
    1391:	74 11                	je     13a4 <phase_2+0x34>
    1393:	8b 03                	mov    (%rbx),%eax
    1395:	83 c0 05             	add    $0x5,%eax
    1398:	39 43 04             	cmp    %eax,0x4(%rbx)
    139b:	74 ed                	je     138a <phase_2+0x1a>
    139d:	e8 a1 0b 00 00       	callq  1f43 <explode_bomb>
    13a2:	eb e6                	jmp    138a <phase_2+0x1a>
    13a4:	48 83 c4 28          	add    $0x28,%rsp
    13a8:	5b                   	pop    %rbx
    13a9:	5d                   	pop    %rbp
    13aa:	c3                   	retq   

00000000000013ab <phase_3>:
    13ab:	48 83 ec 18          	sub    $0x18,%rsp
    13af:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    13b4:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    13b9:	48 8d 35 63 13 00 00 	lea    0x1363(%rip),%rsi        # 2723 <array.3088+0x363>
    13c0:	b8 00 00 00 00       	mov    $0x0,%eax
    13c5:	e8 36 fc ff ff       	callq  1000 <__isoc99_sscanf@plt>
    13ca:	83 f8 01             	cmp    $0x1,%eax
    13cd:	7e 1b                	jle    13ea <phase_3+0x3f>
    13cf:	83 7c 24 0c 07       	cmpl   $0x7,0xc(%rsp)
    13d4:	77 4c                	ja     1422 <phase_3+0x77>
    13d6:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    13da:	48 8d 15 bf 0f 00 00 	lea    0xfbf(%rip),%rdx        # 23a0 <_IO_stdin_used+0x1c0>
    13e1:	48 63 04 82          	movslq (%rdx,%rax,4),%rax
    13e5:	48 01 d0             	add    %rdx,%rax
    13e8:	ff e0                	jmpq   *%rax
    13ea:	e8 54 0b 00 00       	callq  1f43 <explode_bomb>
    13ef:	eb de                	jmp    13cf <phase_3+0x24>
    13f1:	b8 d4 03 00 00       	mov    $0x3d4,%eax
    13f6:	eb 3b                	jmp    1433 <phase_3+0x88>
    13f8:	b8 97 01 00 00       	mov    $0x197,%eax
    13fd:	eb 34                	jmp    1433 <phase_3+0x88>
    13ff:	b8 6c 03 00 00       	mov    $0x36c,%eax
    1404:	eb 2d                	jmp    1433 <phase_3+0x88>
    1406:	b8 f8 00 00 00       	mov    $0xf8,%eax
    140b:	eb 26                	jmp    1433 <phase_3+0x88>
    140d:	b8 35 03 00 00       	mov    $0x335,%eax
    1412:	eb 1f                	jmp    1433 <phase_3+0x88>
    1414:	b8 7f 00 00 00       	mov    $0x7f,%eax
    1419:	eb 18                	jmp    1433 <phase_3+0x88>
    141b:	b8 61 01 00 00       	mov    $0x161,%eax
    1420:	eb 11                	jmp    1433 <phase_3+0x88>
    1422:	e8 1c 0b 00 00       	callq  1f43 <explode_bomb>
    1427:	b8 00 00 00 00       	mov    $0x0,%eax
    142c:	eb 05                	jmp    1433 <phase_3+0x88>
    142e:	b8 d0 01 00 00       	mov    $0x1d0,%eax
    1433:	3b 44 24 08          	cmp    0x8(%rsp),%eax
    1437:	74 05                	je     143e <phase_3+0x93>
    1439:	e8 05 0b 00 00       	callq  1f43 <explode_bomb>
    143e:	48 83 c4 18          	add    $0x18,%rsp
    1442:	c3                   	retq   

0000000000001443 <func4>:
    1443:	b8 01 00 00 00       	mov    $0x1,%eax
    1448:	83 ff 01             	cmp    $0x1,%edi
    144b:	7e 0f                	jle    145c <func4+0x19>
    144d:	53                   	push   %rbx
    144e:	89 fb                	mov    %edi,%ebx
    1450:	8d 7f ff             	lea    -0x1(%rdi),%edi
    1453:	e8 eb ff ff ff       	callq  1443 <func4>
    1458:	0f af c3             	imul   %ebx,%eax
    145b:	5b                   	pop    %rbx
    145c:	f3 c3                	repz retq 

000000000000145e <phase_4>:
    145e:	48 83 ec 18          	sub    $0x18,%rsp
    1462:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    1467:	48 8d 35 b8 12 00 00 	lea    0x12b8(%rip),%rsi        # 2726 <array.3088+0x366>
    146e:	b8 00 00 00 00       	mov    $0x0,%eax
    1473:	e8 88 fb ff ff       	callq  1000 <__isoc99_sscanf@plt>
    1478:	83 f8 01             	cmp    $0x1,%eax
    147b:	74 1f                	je     149c <phase_4+0x3e>
    147d:	e8 c1 0a 00 00       	callq  1f43 <explode_bomb>
    1482:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1486:	e8 b8 ff ff ff       	callq  1443 <func4>
    148b:	3d 00 5f 37 00       	cmp    $0x375f00,%eax
    1490:	74 05                	je     1497 <phase_4+0x39>
    1492:	e8 ac 0a 00 00       	callq  1f43 <explode_bomb>
    1497:	48 83 c4 18          	add    $0x18,%rsp
    149b:	c3                   	retq   
    149c:	83 7c 24 0c 00       	cmpl   $0x0,0xc(%rsp)
    14a1:	7f df                	jg     1482 <phase_4+0x24>
    14a3:	eb d8                	jmp    147d <phase_4+0x1f>

00000000000014a5 <phase_5>:
    14a5:	48 83 ec 18          	sub    $0x18,%rsp
    14a9:	48 8d 4c 24 08       	lea    0x8(%rsp),%rcx
    14ae:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    14b3:	48 8d 35 69 12 00 00 	lea    0x1269(%rip),%rsi        # 2723 <array.3088+0x363>
    14ba:	b8 00 00 00 00       	mov    $0x0,%eax
    14bf:	e8 3c fb ff ff       	callq  1000 <__isoc99_sscanf@plt>
    14c4:	83 f8 01             	cmp    $0x1,%eax
    14c7:	7e 4d                	jle    1516 <phase_5+0x71>
    14c9:	8b 44 24 0c          	mov    0xc(%rsp),%eax
    14cd:	83 e0 0f             	and    $0xf,%eax
    14d0:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    14d4:	83 f8 0f             	cmp    $0xf,%eax
    14d7:	74 33                	je     150c <phase_5+0x67>
    14d9:	b9 00 00 00 00       	mov    $0x0,%ecx
    14de:	ba 00 00 00 00       	mov    $0x0,%edx
    14e3:	48 8d 35 d6 0e 00 00 	lea    0xed6(%rip),%rsi        # 23c0 <array.3088>
    14ea:	83 c2 01             	add    $0x1,%edx
    14ed:	48 98                	cltq   
    14ef:	8b 04 86             	mov    (%rsi,%rax,4),%eax
    14f2:	01 c1                	add    %eax,%ecx
    14f4:	83 f8 0f             	cmp    $0xf,%eax
    14f7:	75 f1                	jne    14ea <phase_5+0x45>
    14f9:	c7 44 24 0c 0f 00 00 	movl   $0xf,0xc(%rsp)
    1500:	00 
    1501:	83 fa 0c             	cmp    $0xc,%edx
    1504:	75 06                	jne    150c <phase_5+0x67>
    1506:	3b 4c 24 08          	cmp    0x8(%rsp),%ecx
    150a:	74 05                	je     1511 <phase_5+0x6c>
    150c:	e8 32 0a 00 00       	callq  1f43 <explode_bomb>
    1511:	48 83 c4 18          	add    $0x18,%rsp
    1515:	c3                   	retq   
    1516:	e8 28 0a 00 00       	callq  1f43 <explode_bomb>
    151b:	eb ac                	jmp    14c9 <phase_5+0x24>

000000000000151d <phase_6>:
    151d:	41 55                	push   %r13
    151f:	41 54                	push   %r12
    1521:	55                   	push   %rbp
    1522:	53                   	push   %rbx
    1523:	48 83 ec 58          	sub    $0x58,%rsp
    1527:	4c 8d 64 24 30       	lea    0x30(%rsp),%r12
    152c:	4c 89 e6             	mov    %r12,%rsi
    152f:	e8 4b 0a 00 00       	callq  1f7f <read_six_numbers>
    1534:	41 bd 00 00 00 00    	mov    $0x0,%r13d
    153a:	eb 25                	jmp    1561 <phase_6+0x44>
    153c:	41 83 c5 01          	add    $0x1,%r13d
    1540:	41 83 fd 06          	cmp    $0x6,%r13d
    1544:	74 38                	je     157e <phase_6+0x61>
    1546:	44 89 eb             	mov    %r13d,%ebx
    1549:	48 63 c3             	movslq %ebx,%rax
    154c:	8b 44 84 30          	mov    0x30(%rsp,%rax,4),%eax
    1550:	39 45 00             	cmp    %eax,0x0(%rbp)
    1553:	74 22                	je     1577 <phase_6+0x5a>
    1555:	83 c3 01             	add    $0x1,%ebx
    1558:	83 fb 05             	cmp    $0x5,%ebx
    155b:	7e ec                	jle    1549 <phase_6+0x2c>
    155d:	49 83 c4 04          	add    $0x4,%r12
    1561:	4c 89 e5             	mov    %r12,%rbp
    1564:	41 8b 04 24          	mov    (%r12),%eax
    1568:	83 e8 01             	sub    $0x1,%eax
    156b:	83 f8 05             	cmp    $0x5,%eax
    156e:	76 cc                	jbe    153c <phase_6+0x1f>
    1570:	e8 ce 09 00 00       	callq  1f43 <explode_bomb>
    1575:	eb c5                	jmp    153c <phase_6+0x1f>
    1577:	e8 c7 09 00 00       	callq  1f43 <explode_bomb>
    157c:	eb d7                	jmp    1555 <phase_6+0x38>
    157e:	be 00 00 00 00       	mov    $0x0,%esi
    1583:	8b 4c 34 30          	mov    0x30(%rsp,%rsi,1),%ecx
    1587:	b8 01 00 00 00       	mov    $0x1,%eax
    158c:	48 8d 15 bd 21 20 00 	lea    0x2021bd(%rip),%rdx        # 203750 <node1>
    1593:	83 f9 01             	cmp    $0x1,%ecx
    1596:	7e 0b                	jle    15a3 <phase_6+0x86>
    1598:	48 8b 52 08          	mov    0x8(%rdx),%rdx
    159c:	83 c0 01             	add    $0x1,%eax
    159f:	39 c8                	cmp    %ecx,%eax
    15a1:	75 f5                	jne    1598 <phase_6+0x7b>
    15a3:	48 89 14 74          	mov    %rdx,(%rsp,%rsi,2)
    15a7:	48 83 c6 04          	add    $0x4,%rsi
    15ab:	48 83 fe 18          	cmp    $0x18,%rsi
    15af:	75 d2                	jne    1583 <phase_6+0x66>
    15b1:	48 8b 1c 24          	mov    (%rsp),%rbx
    15b5:	48 89 e0             	mov    %rsp,%rax
    15b8:	48 8d 74 24 28       	lea    0x28(%rsp),%rsi
    15bd:	48 89 d9             	mov    %rbx,%rcx
    15c0:	48 8b 50 08          	mov    0x8(%rax),%rdx
    15c4:	48 89 51 08          	mov    %rdx,0x8(%rcx)
    15c8:	48 83 c0 08          	add    $0x8,%rax
    15cc:	48 89 d1             	mov    %rdx,%rcx
    15cf:	48 39 c6             	cmp    %rax,%rsi
    15d2:	75 ec                	jne    15c0 <phase_6+0xa3>
    15d4:	48 c7 42 08 00 00 00 	movq   $0x0,0x8(%rdx)
    15db:	00 
    15dc:	bd 05 00 00 00       	mov    $0x5,%ebp
    15e1:	eb 09                	jmp    15ec <phase_6+0xcf>
    15e3:	48 8b 5b 08          	mov    0x8(%rbx),%rbx
    15e7:	83 ed 01             	sub    $0x1,%ebp
    15ea:	74 11                	je     15fd <phase_6+0xe0>
    15ec:	48 8b 43 08          	mov    0x8(%rbx),%rax
    15f0:	8b 00                	mov    (%rax),%eax
    15f2:	39 03                	cmp    %eax,(%rbx)
    15f4:	7d ed                	jge    15e3 <phase_6+0xc6>
    15f6:	e8 48 09 00 00       	callq  1f43 <explode_bomb>
    15fb:	eb e6                	jmp    15e3 <phase_6+0xc6>
    15fd:	48 83 c4 58          	add    $0x58,%rsp
    1601:	5b                   	pop    %rbx
    1602:	5d                   	pop    %rbp
    1603:	41 5c                	pop    %r12
    1605:	41 5d                	pop    %r13
    1607:	c3                   	retq   

0000000000001608 <fun7>:
    1608:	48 85 ff             	test   %rdi,%rdi
    160b:	74 32                	je     163f <fun7+0x37>
    160d:	48 83 ec 08          	sub    $0x8,%rsp
    1611:	8b 17                	mov    (%rdi),%edx
    1613:	39 f2                	cmp    %esi,%edx
    1615:	7f 1b                	jg     1632 <fun7+0x2a>
    1617:	b8 00 00 00 00       	mov    $0x0,%eax
    161c:	39 f2                	cmp    %esi,%edx
    161e:	74 0d                	je     162d <fun7+0x25>
    1620:	48 8b 7f 10          	mov    0x10(%rdi),%rdi
    1624:	e8 df ff ff ff       	callq  1608 <fun7>
    1629:	8d 44 00 01          	lea    0x1(%rax,%rax,1),%eax
    162d:	48 83 c4 08          	add    $0x8,%rsp
    1631:	c3                   	retq   
    1632:	48 8b 7f 08          	mov    0x8(%rdi),%rdi
    1636:	e8 cd ff ff ff       	callq  1608 <fun7>
    163b:	01 c0                	add    %eax,%eax
    163d:	eb ee                	jmp    162d <fun7+0x25>
    163f:	b8 ff ff ff ff       	mov    $0xffffffff,%eax
    1644:	c3                   	retq   

0000000000001645 <secret_phase>:
    1645:	53                   	push   %rbx
    1646:	e8 75 09 00 00       	callq  1fc0 <read_line>
    164b:	ba 0a 00 00 00       	mov    $0xa,%edx
    1650:	be 00 00 00 00       	mov    $0x0,%esi
    1655:	48 89 c7             	mov    %rax,%rdi
    1658:	e8 73 f9 ff ff       	callq  fd0 <strtol@plt>
    165d:	48 89 c3             	mov    %rax,%rbx
    1660:	8d 40 ff             	lea    -0x1(%rax),%eax
    1663:	3d e8 03 00 00       	cmp    $0x3e8,%eax
    1668:	77 2b                	ja     1695 <secret_phase+0x50>
    166a:	89 de                	mov    %ebx,%esi
    166c:	48 8d 3d fd 1f 20 00 	lea    0x201ffd(%rip),%rdi        # 203670 <n1>
    1673:	e8 90 ff ff ff       	callq  1608 <fun7>
    1678:	83 f8 04             	cmp    $0x4,%eax
    167b:	74 05                	je     1682 <secret_phase+0x3d>
    167d:	e8 c1 08 00 00       	callq  1f43 <explode_bomb>
    1682:	48 8d 3d df 0c 00 00 	lea    0xcdf(%rip),%rdi        # 2368 <_IO_stdin_used+0x188>
    1689:	e8 62 f8 ff ff       	callq  ef0 <puts@plt>
    168e:	e8 2e 0a 00 00       	callq  20c1 <phase_defused>
    1693:	5b                   	pop    %rbx
    1694:	c3                   	retq   
    1695:	e8 a9 08 00 00       	callq  1f43 <explode_bomb>
    169a:	eb ce                	jmp    166a <secret_phase+0x25>

000000000000169c <sig_handler>:
    169c:	48 83 ec 08          	sub    $0x8,%rsp
    16a0:	48 8d 3d 59 0d 00 00 	lea    0xd59(%rip),%rdi        # 2400 <array.3088+0x40>
    16a7:	e8 44 f8 ff ff       	callq  ef0 <puts@plt>
    16ac:	bf 03 00 00 00       	mov    $0x3,%edi
    16b1:	e8 da f9 ff ff       	callq  1090 <sleep@plt>
    16b6:	48 8d 3d 7b 0e 00 00 	lea    0xe7b(%rip),%rdi        # 2538 <array.3088+0x178>
    16bd:	b8 00 00 00 00       	mov    $0x0,%eax
    16c2:	e8 69 f8 ff ff       	callq  f30 <printf@plt>
    16c7:	48 8b 3d d2 20 20 00 	mov    0x2020d2(%rip),%rdi        # 2037a0 <stdout@@GLIBC_2.2.5>
    16ce:	e8 1d f9 ff ff       	callq  ff0 <fflush@plt>
    16d3:	bf 01 00 00 00       	mov    $0x1,%edi
    16d8:	e8 b3 f9 ff ff       	callq  1090 <sleep@plt>
    16dd:	48 8d 3d 5c 0e 00 00 	lea    0xe5c(%rip),%rdi        # 2540 <array.3088+0x180>
    16e4:	e8 07 f8 ff ff       	callq  ef0 <puts@plt>
    16e9:	bf 10 00 00 00       	mov    $0x10,%edi
    16ee:	e8 6d f9 ff ff       	callq  1060 <exit@plt>

00000000000016f3 <invalid_phase>:
    16f3:	48 83 ec 08          	sub    $0x8,%rsp
    16f7:	48 89 fe             	mov    %rdi,%rsi
    16fa:	48 8d 3d 47 0e 00 00 	lea    0xe47(%rip),%rdi        # 2548 <array.3088+0x188>
    1701:	b8 00 00 00 00       	mov    $0x0,%eax
    1706:	e8 25 f8 ff ff       	callq  f30 <printf@plt>
    170b:	bf 08 00 00 00       	mov    $0x8,%edi
    1710:	e8 4b f9 ff ff       	callq  1060 <exit@plt>

0000000000001715 <string_length>:
    1715:	80 3f 00             	cmpb   $0x0,(%rdi)
    1718:	74 13                	je     172d <string_length+0x18>
    171a:	b8 00 00 00 00       	mov    $0x0,%eax
    171f:	48 83 c7 01          	add    $0x1,%rdi
    1723:	83 c0 01             	add    $0x1,%eax
    1726:	80 3f 00             	cmpb   $0x0,(%rdi)
    1729:	75 f4                	jne    171f <string_length+0xa>
    172b:	f3 c3                	repz retq 
    172d:	b8 00 00 00 00       	mov    $0x0,%eax
    1732:	c3                   	retq   

0000000000001733 <strings_not_equal>:
    1733:	41 54                	push   %r12
    1735:	55                   	push   %rbp
    1736:	53                   	push   %rbx
    1737:	48 89 fb             	mov    %rdi,%rbx
    173a:	48 89 f5             	mov    %rsi,%rbp
    173d:	e8 d3 ff ff ff       	callq  1715 <string_length>
    1742:	41 89 c4             	mov    %eax,%r12d
    1745:	48 89 ef             	mov    %rbp,%rdi
    1748:	e8 c8 ff ff ff       	callq  1715 <string_length>
    174d:	ba 01 00 00 00       	mov    $0x1,%edx
    1752:	41 39 c4             	cmp    %eax,%r12d
    1755:	74 07                	je     175e <strings_not_equal+0x2b>
    1757:	89 d0                	mov    %edx,%eax
    1759:	5b                   	pop    %rbx
    175a:	5d                   	pop    %rbp
    175b:	41 5c                	pop    %r12
    175d:	c3                   	retq   
    175e:	0f b6 03             	movzbl (%rbx),%eax
    1761:	84 c0                	test   %al,%al
    1763:	74 27                	je     178c <strings_not_equal+0x59>
    1765:	3a 45 00             	cmp    0x0(%rbp),%al
    1768:	75 29                	jne    1793 <strings_not_equal+0x60>
    176a:	48 83 c3 01          	add    $0x1,%rbx
    176e:	48 83 c5 01          	add    $0x1,%rbp
    1772:	0f b6 03             	movzbl (%rbx),%eax
    1775:	84 c0                	test   %al,%al
    1777:	74 0c                	je     1785 <strings_not_equal+0x52>
    1779:	3a 45 00             	cmp    0x0(%rbp),%al
    177c:	74 ec                	je     176a <strings_not_equal+0x37>
    177e:	ba 01 00 00 00       	mov    $0x1,%edx
    1783:	eb d2                	jmp    1757 <strings_not_equal+0x24>
    1785:	ba 00 00 00 00       	mov    $0x0,%edx
    178a:	eb cb                	jmp    1757 <strings_not_equal+0x24>
    178c:	ba 00 00 00 00       	mov    $0x0,%edx
    1791:	eb c4                	jmp    1757 <strings_not_equal+0x24>
    1793:	ba 01 00 00 00       	mov    $0x1,%edx
    1798:	eb bd                	jmp    1757 <strings_not_equal+0x24>

000000000000179a <open_clientfd>:
    179a:	41 54                	push   %r12
    179c:	55                   	push   %rbp
    179d:	53                   	push   %rbx
    179e:	48 83 ec 10          	sub    $0x10,%rsp
    17a2:	49 89 fc             	mov    %rdi,%r12
    17a5:	89 f3                	mov    %esi,%ebx
    17a7:	ba 00 00 00 00       	mov    $0x0,%edx
    17ac:	be 01 00 00 00       	mov    $0x1,%esi
    17b1:	bf 02 00 00 00       	mov    $0x2,%edi
    17b6:	e8 f5 f8 ff ff       	callq  10b0 <socket@plt>
    17bb:	85 c0                	test   %eax,%eax
    17bd:	78 64                	js     1823 <open_clientfd+0x89>
    17bf:	89 c5                	mov    %eax,%ebp
    17c1:	4c 89 e7             	mov    %r12,%rdi
    17c4:	e8 e7 f7 ff ff       	callq  fb0 <gethostbyname@plt>
    17c9:	48 85 c0             	test   %rax,%rax
    17cc:	74 6b                	je     1839 <open_clientfd+0x9f>
    17ce:	48 c7 04 24 00 00 00 	movq   $0x0,(%rsp)
    17d5:	00 
    17d6:	48 c7 44 24 08 00 00 	movq   $0x0,0x8(%rsp)
    17dd:	00 00 
    17df:	66 c7 04 24 02 00    	movw   $0x2,(%rsp)
    17e5:	48 63 50 14          	movslq 0x14(%rax),%rdx
    17e9:	48 8d 74 24 04       	lea    0x4(%rsp),%rsi
    17ee:	48 8b 40 18          	mov    0x18(%rax),%rax
    17f2:	48 8b 38             	mov    (%rax),%rdi
    17f5:	e8 16 f8 ff ff       	callq  1010 <bcopy@plt>
    17fa:	89 de                	mov    %ebx,%esi
    17fc:	66 c1 ce 08          	ror    $0x8,%si
    1800:	66 89 74 24 02       	mov    %si,0x2(%rsp)
    1805:	ba 10 00 00 00       	mov    $0x10,%edx
    180a:	48 89 e6             	mov    %rsp,%rsi
    180d:	89 ef                	mov    %ebp,%edi
    180f:	e8 5c f8 ff ff       	callq  1070 <connect@plt>
    1814:	85 c0                	test   %eax,%eax
    1816:	78 37                	js     184f <open_clientfd+0xb5>
    1818:	89 e8                	mov    %ebp,%eax
    181a:	48 83 c4 10          	add    $0x10,%rsp
    181e:	5b                   	pop    %rbx
    181f:	5d                   	pop    %rbp
    1820:	41 5c                	pop    %r12
    1822:	c3                   	retq   
    1823:	48 8d 3d 2f 0d 00 00 	lea    0xd2f(%rip),%rdi        # 2559 <array.3088+0x199>
    182a:	e8 c1 f6 ff ff       	callq  ef0 <puts@plt>
    182f:	bf 08 00 00 00       	mov    $0x8,%edi
    1834:	e8 27 f8 ff ff       	callq  1060 <exit@plt>
    1839:	48 8d 3d 27 0d 00 00 	lea    0xd27(%rip),%rdi        # 2567 <array.3088+0x1a7>
    1840:	e8 ab f6 ff ff       	callq  ef0 <puts@plt>
    1845:	bf 08 00 00 00       	mov    $0x8,%edi
    184a:	e8 11 f8 ff ff       	callq  1060 <exit@plt>
    184f:	48 8d 3d 1f 0d 00 00 	lea    0xd1f(%rip),%rdi        # 2575 <array.3088+0x1b5>
    1856:	e8 95 f6 ff ff       	callq  ef0 <puts@plt>
    185b:	bf 08 00 00 00       	mov    $0x8,%edi
    1860:	e8 fb f7 ff ff       	callq  1060 <exit@plt>

0000000000001865 <initialize_bomb>:
    1865:	48 83 ec 08          	sub    $0x8,%rsp
    1869:	48 8d 35 2c fe ff ff 	lea    -0x1d4(%rip),%rsi        # 169c <sig_handler>
    1870:	bf 02 00 00 00       	mov    $0x2,%edi
    1875:	e8 26 f7 ff ff       	callq  fa0 <signal@plt>
    187a:	be 50 00 00 00       	mov    $0x50,%esi
    187f:	48 8d 3d fd 0c 00 00 	lea    0xcfd(%rip),%rdi        # 2583 <array.3088+0x1c3>
    1886:	e8 0f ff ff ff       	callq  179a <open_clientfd>
    188b:	89 c7                	mov    %eax,%edi
    188d:	e8 ce f6 ff ff       	callq  f60 <close@plt>
    1892:	48 83 c4 08          	add    $0x8,%rsp
    1896:	c3                   	retq   

0000000000001897 <blank_line>:
    1897:	55                   	push   %rbp
    1898:	53                   	push   %rbx
    1899:	48 83 ec 08          	sub    $0x8,%rsp
    189d:	48 89 fd             	mov    %rdi,%rbp
    18a0:	0f b6 5d 00          	movzbl 0x0(%rbp),%ebx
    18a4:	84 db                	test   %bl,%bl
    18a6:	74 1e                	je     18c6 <blank_line+0x2f>
    18a8:	e8 f3 f7 ff ff       	callq  10a0 <__ctype_b_loc@plt>
    18ad:	48 83 c5 01          	add    $0x1,%rbp
    18b1:	48 0f be db          	movsbq %bl,%rbx
    18b5:	48 8b 00             	mov    (%rax),%rax
    18b8:	f6 44 58 01 20       	testb  $0x20,0x1(%rax,%rbx,2)
    18bd:	75 e1                	jne    18a0 <blank_line+0x9>
    18bf:	b8 00 00 00 00       	mov    $0x0,%eax
    18c4:	eb 05                	jmp    18cb <blank_line+0x34>
    18c6:	b8 01 00 00 00       	mov    $0x1,%eax
    18cb:	48 83 c4 08          	add    $0x8,%rsp
    18cf:	5b                   	pop    %rbx
    18d0:	5d                   	pop    %rbp
    18d1:	c3                   	retq   

00000000000018d2 <skip>:
    18d2:	55                   	push   %rbp
    18d3:	53                   	push   %rbx
    18d4:	48 83 ec 08          	sub    $0x8,%rsp
    18d8:	48 8d 2d 01 1f 20 00 	lea    0x201f01(%rip),%rbp        # 2037e0 <input_strings>
    18df:	48 63 05 d6 1e 20 00 	movslq 0x201ed6(%rip),%rax        # 2037bc <num_input_strings>
    18e6:	48 8d 3c 80          	lea    (%rax,%rax,4),%rdi
    18ea:	48 c1 e7 04          	shl    $0x4,%rdi
    18ee:	48 01 ef             	add    %rbp,%rdi
    18f1:	48 8b 15 c8 1e 20 00 	mov    0x201ec8(%rip),%rdx        # 2037c0 <infile>
    18f8:	be 50 00 00 00       	mov    $0x50,%esi
    18fd:	e8 7e f6 ff ff       	callq  f80 <fgets@plt>
    1902:	48 89 c3             	mov    %rax,%rbx
    1905:	48 85 c0             	test   %rax,%rax
    1908:	74 0c                	je     1916 <skip+0x44>
    190a:	48 89 c7             	mov    %rax,%rdi
    190d:	e8 85 ff ff ff       	callq  1897 <blank_line>
    1912:	85 c0                	test   %eax,%eax
    1914:	75 c9                	jne    18df <skip+0xd>
    1916:	48 89 d8             	mov    %rbx,%rax
    1919:	48 83 c4 08          	add    $0x8,%rsp
    191d:	5b                   	pop    %rbx
    191e:	5d                   	pop    %rbp
    191f:	c3                   	retq   

0000000000001920 <writen>:
    1920:	41 56                	push   %r14
    1922:	41 55                	push   %r13
    1924:	41 54                	push   %r12
    1926:	55                   	push   %rbp
    1927:	53                   	push   %rbx
    1928:	49 89 d5             	mov    %rdx,%r13
    192b:	48 85 d2             	test   %rdx,%rdx
    192e:	74 3b                	je     196b <writen+0x4b>
    1930:	41 89 fc             	mov    %edi,%r12d
    1933:	48 89 f5             	mov    %rsi,%rbp
    1936:	48 89 d3             	mov    %rdx,%rbx
    1939:	41 be 00 00 00 00    	mov    $0x0,%r14d
    193f:	eb 08                	jmp    1949 <writen+0x29>
    1941:	48 01 c5             	add    %rax,%rbp
    1944:	48 29 c3             	sub    %rax,%rbx
    1947:	74 22                	je     196b <writen+0x4b>
    1949:	48 89 da             	mov    %rbx,%rdx
    194c:	48 89 ee             	mov    %rbp,%rsi
    194f:	44 89 e7             	mov    %r12d,%edi
    1952:	e8 a9 f5 ff ff       	callq  f00 <write@plt>
    1957:	48 85 c0             	test   %rax,%rax
    195a:	7f e5                	jg     1941 <writen+0x21>
    195c:	e8 6f f5 ff ff       	callq  ed0 <__errno_location@plt>
    1961:	83 38 04             	cmpl   $0x4,(%rax)
    1964:	75 11                	jne    1977 <writen+0x57>
    1966:	4c 89 f0             	mov    %r14,%rax
    1969:	eb d6                	jmp    1941 <writen+0x21>
    196b:	4c 89 e8             	mov    %r13,%rax
    196e:	5b                   	pop    %rbx
    196f:	5d                   	pop    %rbp
    1970:	41 5c                	pop    %r12
    1972:	41 5d                	pop    %r13
    1974:	41 5e                	pop    %r14
    1976:	c3                   	retq   
    1977:	48 c7 c0 ff ff ff ff 	mov    $0xffffffffffffffff,%rax
    197e:	eb ee                	jmp    196e <writen+0x4e>

0000000000001980 <send_msg>:
    1980:	41 57                	push   %r15
    1982:	41 56                	push   %r14
    1984:	41 55                	push   %r13
    1986:	41 54                	push   %r12
    1988:	55                   	push   %rbp
    1989:	53                   	push   %rbx
    198a:	48 81 ec 68 24 00 00 	sub    $0x2468,%rsp
    1991:	41 89 fc             	mov    %edi,%r12d
    1994:	ba 00 00 00 00       	mov    $0x0,%edx
    1999:	be 01 00 00 00       	mov    $0x1,%esi
    199e:	bf 02 00 00 00       	mov    $0x2,%edi
    19a3:	e8 08 f7 ff ff       	callq  10b0 <socket@plt>
    19a8:	41 89 c7             	mov    %eax,%r15d
    19ab:	85 c0                	test   %eax,%eax
    19ad:	0f 88 2a 02 00 00    	js     1bdd <send_msg+0x25d>
    19b3:	48 c7 84 24 50 24 00 	movq   $0x0,0x2450(%rsp)
    19ba:	00 00 00 00 00 
    19bf:	48 c7 84 24 58 24 00 	movq   $0x0,0x2458(%rsp)
    19c6:	00 00 00 00 00 
    19cb:	66 c7 84 24 50 24 00 	movw   $0x2,0x2450(%rsp)
    19d2:	00 02 00 
    19d5:	66 c7 84 24 52 24 00 	movw   $0x7ac8,0x2452(%rsp)
    19dc:	00 c8 7a 
    19df:	48 8d 94 24 54 24 00 	lea    0x2454(%rsp),%rdx
    19e6:	00 
    19e7:	48 8d 35 95 0b 00 00 	lea    0xb95(%rip),%rsi        # 2583 <array.3088+0x1c3>
    19ee:	bf 02 00 00 00       	mov    $0x2,%edi
    19f3:	b8 00 00 00 00       	mov    $0x0,%eax
    19f8:	e8 e3 f5 ff ff       	callq  fe0 <inet_pton@plt>
    19fd:	85 c0                	test   %eax,%eax
    19ff:	0f 88 09 02 00 00    	js     1c0e <send_msg+0x28e>
    1a05:	48 8d b4 24 50 24 00 	lea    0x2450(%rsp),%rsi
    1a0c:	00 
    1a0d:	ba 10 00 00 00       	mov    $0x10,%edx
    1a12:	44 89 ff             	mov    %r15d,%edi
    1a15:	e8 56 f6 ff ff       	callq  1070 <connect@plt>
    1a1a:	85 c0                	test   %eax,%eax
    1a1c:	0f 88 22 02 00 00    	js     1c44 <send_msg+0x2c4>
    1a22:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
    1a27:	48 b8 53 75 62 6a 65 	movabs $0x3a7463656a627553,%rax
    1a2e:	63 74 3a 
    1a31:	48 89 44 24 50       	mov    %rax,0x50(%rsp)
    1a36:	48 b8 20 42 6f 6d 62 	movabs $0x6f6e20626d6f4220,%rax
    1a3d:	20 6e 6f 
    1a40:	48 89 44 24 58       	mov    %rax,0x58(%rsp)
    1a45:	48 b8 74 69 66 69 63 	movabs $0x6974616369666974,%rax
    1a4c:	61 74 69 
    1a4f:	48 89 44 24 60       	mov    %rax,0x60(%rsp)
    1a54:	c7 44 24 68 6f 6e 0a 	movl   $0xa6e6f,0x68(%rsp)
    1a5b:	00 
    1a5c:	48 8d 9c 24 50 04 00 	lea    0x450(%rsp),%rbx
    1a63:	00 
    1a64:	48 89 ee             	mov    %rbp,%rsi
    1a67:	48 89 df             	mov    %rbx,%rdi
    1a6a:	e8 d1 f5 ff ff       	callq  1040 <strcat@plt>
    1a6f:	66 c7 44 24 50 0a 00 	movw   $0xa,0x50(%rsp)
    1a76:	48 89 ee             	mov    %rbp,%rsi
    1a79:	48 89 df             	mov    %rbx,%rdi
    1a7c:	e8 bf f5 ff ff       	callq  1040 <strcat@plt>
    1a81:	bf 00 00 00 00       	mov    $0x0,%edi
    1a86:	e8 95 f5 ff ff       	callq  1020 <cuserid@plt>
    1a8b:	48 85 c0             	test   %rax,%rax
    1a8e:	0f 84 e6 01 00 00    	je     1c7a <send_msg+0x2fa>
    1a94:	48 89 e7             	mov    %rsp,%rdi
    1a97:	48 89 c6             	mov    %rax,%rsi
    1a9a:	e8 41 f4 ff ff       	callq  ee0 <strcpy@plt>
    1a9f:	45 85 e4             	test   %r12d,%r12d
    1aa2:	48 8d 05 f0 0a 00 00 	lea    0xaf0(%rip),%rax        # 2599 <array.3088+0x1d9>
    1aa9:	4c 8d 0d e1 0a 00 00 	lea    0xae1(%rip),%r9        # 2591 <array.3088+0x1d1>
    1ab0:	4c 0f 44 c8          	cmove  %rax,%r9
    1ab4:	48 8d 5c 24 50       	lea    0x50(%rsp),%rbx
    1ab9:	48 83 ec 08          	sub    $0x8,%rsp
    1abd:	8b 05 f9 1c 20 00    	mov    0x201cf9(%rip),%eax        # 2037bc <num_input_strings>
    1ac3:	50                   	push   %rax
    1ac4:	4c 8d 44 24 10       	lea    0x10(%rsp),%r8
    1ac9:	8b 0d 91 1b 20 00    	mov    0x201b91(%rip),%ecx        # 203660 <bomb_id>
    1acf:	48 8d 15 8a 17 20 00 	lea    0x20178a(%rip),%rdx        # 203260 <lab_id>
    1ad6:	48 8d 35 e0 0a 00 00 	lea    0xae0(%rip),%rsi        # 25bd <array.3088+0x1fd>
    1add:	48 89 df             	mov    %rbx,%rdi
    1ae0:	b8 00 00 00 00       	mov    $0x0,%eax
    1ae5:	e8 66 f5 ff ff       	callq  1050 <sprintf@plt>
    1aea:	48 8d bc 24 60 04 00 	lea    0x460(%rsp),%rdi
    1af1:	00 
    1af2:	48 89 de             	mov    %rbx,%rsi
    1af5:	e8 46 f5 ff ff       	callq  1040 <strcat@plt>
    1afa:	48 83 c4 10          	add    $0x10,%rsp
    1afe:	83 3d b7 1c 20 00 00 	cmpl   $0x0,0x201cb7(%rip)        # 2037bc <num_input_strings>
    1b05:	7e 70                	jle    1b77 <send_msg+0x1f7>
    1b07:	bb 00 00 00 00       	mov    $0x0,%ebx
    1b0c:	4c 8d 35 cd 1c 20 00 	lea    0x201ccd(%rip),%r14        # 2037e0 <input_strings>
    1b13:	49 89 e5             	mov    %rsp,%r13
    1b16:	48 8d 6c 24 50       	lea    0x50(%rsp),%rbp
    1b1b:	4c 8d a4 24 50 04 00 	lea    0x450(%rsp),%r12
    1b22:	00 
    1b23:	48 63 c3             	movslq %ebx,%rax
    1b26:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1b2a:	48 c1 e0 04          	shl    $0x4,%rax
    1b2e:	4c 01 f0             	add    %r14,%rax
    1b31:	83 c3 01             	add    $0x1,%ebx
    1b34:	48 83 ec 08          	sub    $0x8,%rsp
    1b38:	50                   	push   %rax
    1b39:	41 89 d9             	mov    %ebx,%r9d
    1b3c:	4d 89 e8             	mov    %r13,%r8
    1b3f:	8b 0d 1b 1b 20 00    	mov    0x201b1b(%rip),%ecx        # 203660 <bomb_id>
    1b45:	48 8d 15 14 17 20 00 	lea    0x201714(%rip),%rdx        # 203260 <lab_id>
    1b4c:	48 8d 35 86 0a 00 00 	lea    0xa86(%rip),%rsi        # 25d9 <array.3088+0x219>
    1b53:	48 89 ef             	mov    %rbp,%rdi
    1b56:	b8 00 00 00 00       	mov    $0x0,%eax
    1b5b:	e8 f0 f4 ff ff       	callq  1050 <sprintf@plt>
    1b60:	48 89 ee             	mov    %rbp,%rsi
    1b63:	4c 89 e7             	mov    %r12,%rdi
    1b66:	e8 d5 f4 ff ff       	callq  1040 <strcat@plt>
    1b6b:	48 83 c4 10          	add    $0x10,%rsp
    1b6f:	39 1d 47 1c 20 00    	cmp    %ebx,0x201c47(%rip)        # 2037bc <num_input_strings>
    1b75:	7f ac                	jg     1b23 <send_msg+0x1a3>
    1b77:	48 8d ac 24 50 04 00 	lea    0x450(%rsp),%rbp
    1b7e:	00 
    1b7f:	49 c7 c4 ff ff ff ff 	mov    $0xffffffffffffffff,%r12
    1b86:	bb 00 00 00 00       	mov    $0x0,%ebx
    1b8b:	4c 89 e1             	mov    %r12,%rcx
    1b8e:	48 89 ef             	mov    %rbp,%rdi
    1b91:	89 d8                	mov    %ebx,%eax
    1b93:	f2 ae                	repnz scas %es:(%rdi),%al
    1b95:	48 f7 d1             	not    %rcx
    1b98:	4a 8d 14 21          	lea    (%rcx,%r12,1),%rdx
    1b9c:	48 89 ee             	mov    %rbp,%rsi
    1b9f:	44 89 ff             	mov    %r15d,%edi
    1ba2:	e8 79 fd ff ff       	callq  1920 <writen>
    1ba7:	48 89 c2             	mov    %rax,%rdx
    1baa:	4c 89 e1             	mov    %r12,%rcx
    1bad:	48 89 ef             	mov    %rbp,%rdi
    1bb0:	89 d8                	mov    %ebx,%eax
    1bb2:	f2 ae                	repnz scas %es:(%rdi),%al
    1bb4:	48 f7 d1             	not    %rcx
    1bb7:	4c 01 e1             	add    %r12,%rcx
    1bba:	48 39 ca             	cmp    %rcx,%rdx
    1bbd:	0f 82 cf 00 00 00    	jb     1c92 <send_msg+0x312>
    1bc3:	44 89 ff             	mov    %r15d,%edi
    1bc6:	e8 95 f3 ff ff       	callq  f60 <close@plt>
    1bcb:	48 81 c4 68 24 00 00 	add    $0x2468,%rsp
    1bd2:	5b                   	pop    %rbx
    1bd3:	5d                   	pop    %rbp
    1bd4:	41 5c                	pop    %r12
    1bd6:	41 5d                	pop    %r13
    1bd8:	41 5e                	pop    %r14
    1bda:	41 5f                	pop    %r15
    1bdc:	c3                   	retq   
    1bdd:	48 8d 15 be 09 00 00 	lea    0x9be(%rip),%rdx        # 25a2 <array.3088+0x1e2>
    1be4:	48 8d 35 12 06 00 00 	lea    0x612(%rip),%rsi        # 21fd <_IO_stdin_used+0x1d>
    1beb:	48 8b 3d ae 1b 20 00 	mov    0x201bae(%rip),%rdi        # 2037a0 <stdout@@GLIBC_2.2.5>
    1bf2:	b8 00 00 00 00       	mov    $0x0,%eax
    1bf7:	e8 c4 f3 ff ff       	callq  fc0 <fprintf@plt>
    1bfc:	44 89 ff             	mov    %r15d,%edi
    1bff:	e8 5c f3 ff ff       	callq  f60 <close@plt>
    1c04:	bf 01 00 00 00       	mov    $0x1,%edi
    1c09:	e8 52 f4 ff ff       	callq  1060 <exit@plt>
    1c0e:	48 8d 15 01 0a 00 00 	lea    0xa01(%rip),%rdx        # 2616 <array.3088+0x256>
    1c15:	48 8d 35 e1 05 00 00 	lea    0x5e1(%rip),%rsi        # 21fd <_IO_stdin_used+0x1d>
    1c1c:	48 8b 3d 7d 1b 20 00 	mov    0x201b7d(%rip),%rdi        # 2037a0 <stdout@@GLIBC_2.2.5>
    1c23:	b8 00 00 00 00       	mov    $0x0,%eax
    1c28:	e8 93 f3 ff ff       	callq  fc0 <fprintf@plt>
    1c2d:	45 85 ff             	test   %r15d,%r15d
    1c30:	74 08                	je     1c3a <send_msg+0x2ba>
    1c32:	44 89 ff             	mov    %r15d,%edi
    1c35:	e8 26 f3 ff ff       	callq  f60 <close@plt>
    1c3a:	bf 01 00 00 00       	mov    $0x1,%edi
    1c3f:	e8 1c f4 ff ff       	callq  1060 <exit@plt>
    1c44:	48 8d 15 64 09 00 00 	lea    0x964(%rip),%rdx        # 25af <array.3088+0x1ef>
    1c4b:	48 8d 35 ab 05 00 00 	lea    0x5ab(%rip),%rsi        # 21fd <_IO_stdin_used+0x1d>
    1c52:	48 8b 3d 47 1b 20 00 	mov    0x201b47(%rip),%rdi        # 2037a0 <stdout@@GLIBC_2.2.5>
    1c59:	b8 00 00 00 00       	mov    $0x0,%eax
    1c5e:	e8 5d f3 ff ff       	callq  fc0 <fprintf@plt>
    1c63:	45 85 ff             	test   %r15d,%r15d
    1c66:	74 08                	je     1c70 <send_msg+0x2f0>
    1c68:	44 89 ff             	mov    %r15d,%edi
    1c6b:	e8 f0 f2 ff ff       	callq  f60 <close@plt>
    1c70:	bf 01 00 00 00       	mov    $0x1,%edi
    1c75:	e8 e6 f3 ff ff       	callq  1060 <exit@plt>
    1c7a:	c7 04 24 6e 6f 62 6f 	movl   $0x6f626f6e,(%rsp)
    1c81:	66 c7 44 24 04 64 79 	movw   $0x7964,0x4(%rsp)
    1c88:	c6 44 24 06 00       	movb   $0x0,0x6(%rsp)
    1c8d:	e9 0d fe ff ff       	jmpq   1a9f <send_msg+0x11f>
    1c92:	48 8d 15 5c 09 00 00 	lea    0x95c(%rip),%rdx        # 25f5 <array.3088+0x235>
    1c99:	48 8d 35 5d 05 00 00 	lea    0x55d(%rip),%rsi        # 21fd <_IO_stdin_used+0x1d>
    1ca0:	48 8b 3d f9 1a 20 00 	mov    0x201af9(%rip),%rdi        # 2037a0 <stdout@@GLIBC_2.2.5>
    1ca7:	e8 14 f3 ff ff       	callq  fc0 <fprintf@plt>
    1cac:	45 85 ff             	test   %r15d,%r15d
    1caf:	74 08                	je     1cb9 <send_msg+0x339>
    1cb1:	44 89 ff             	mov    %r15d,%edi
    1cb4:	e8 a7 f2 ff ff       	callq  f60 <close@plt>
    1cb9:	bf 01 00 00 00       	mov    $0x1,%edi
    1cbe:	e8 9d f3 ff ff       	callq  1060 <exit@plt>

0000000000001cc3 <send_msg_2>:
    1cc3:	41 57                	push   %r15
    1cc5:	41 56                	push   %r14
    1cc7:	41 55                	push   %r13
    1cc9:	41 54                	push   %r12
    1ccb:	55                   	push   %rbp
    1ccc:	53                   	push   %rbx
    1ccd:	48 83 ec 68          	sub    $0x68,%rsp
    1cd1:	89 fb                	mov    %edi,%ebx
    1cd3:	bf 00 00 00 00       	mov    $0x0,%edi
    1cd8:	e8 73 f2 ff ff       	callq  f50 <dup@plt>
    1cdd:	89 44 24 0c          	mov    %eax,0xc(%rsp)
    1ce1:	83 f8 ff             	cmp    $0xffffffff,%eax
    1ce4:	0f 84 a6 01 00 00    	je     1e90 <send_msg_2+0x1cd>
    1cea:	bf 00 00 00 00       	mov    $0x0,%edi
    1cef:	e8 6c f2 ff ff       	callq  f60 <close@plt>
    1cf4:	83 f8 ff             	cmp    $0xffffffff,%eax
    1cf7:	0f 84 a9 01 00 00    	je     1ea6 <send_msg_2+0x1e3>
    1cfd:	e8 8e f2 ff ff       	callq  f90 <tmpfile@plt>
    1d02:	48 89 c5             	mov    %rax,%rbp
    1d05:	48 85 c0             	test   %rax,%rax
    1d08:	0f 84 ae 01 00 00    	je     1ebc <send_msg_2+0x1f9>
    1d0e:	48 89 c1             	mov    %rax,%rcx
    1d11:	ba 1b 00 00 00       	mov    $0x1b,%edx
    1d16:	be 01 00 00 00       	mov    $0x1,%esi
    1d1b:	48 8d 3d 22 09 00 00 	lea    0x922(%rip),%rdi        # 2644 <array.3088+0x284>
    1d22:	e8 59 f3 ff ff       	callq  1080 <fwrite@plt>
    1d27:	48 89 ee             	mov    %rbp,%rsi
    1d2a:	bf 0a 00 00 00       	mov    $0xa,%edi
    1d2f:	e8 3c f2 ff ff       	callq  f70 <fputc@plt>
    1d34:	bf 00 00 00 00       	mov    $0x0,%edi
    1d39:	e8 e2 f2 ff ff       	callq  1020 <cuserid@plt>
    1d3e:	48 85 c0             	test   %rax,%rax
    1d41:	0f 84 8b 01 00 00    	je     1ed2 <send_msg_2+0x20f>
    1d47:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    1d4c:	48 89 c6             	mov    %rax,%rsi
    1d4f:	e8 8c f1 ff ff       	callq  ee0 <strcpy@plt>
    1d54:	85 db                	test   %ebx,%ebx
    1d56:	48 8d 05 3c 08 00 00 	lea    0x83c(%rip),%rax        # 2599 <array.3088+0x1d9>
    1d5d:	4c 8d 0d 2d 08 00 00 	lea    0x82d(%rip),%r9        # 2591 <array.3088+0x1d1>
    1d64:	4c 0f 44 c8          	cmove  %rax,%r9
    1d68:	48 83 ec 08          	sub    $0x8,%rsp
    1d6c:	8b 05 4a 1a 20 00    	mov    0x201a4a(%rip),%eax        # 2037bc <num_input_strings>
    1d72:	50                   	push   %rax
    1d73:	4c 8d 44 24 20       	lea    0x20(%rsp),%r8
    1d78:	8b 0d e2 18 20 00    	mov    0x2018e2(%rip),%ecx        # 203660 <bomb_id>
    1d7e:	48 8d 15 db 14 20 00 	lea    0x2014db(%rip),%rdx        # 203260 <lab_id>
    1d85:	48 8d 35 31 08 00 00 	lea    0x831(%rip),%rsi        # 25bd <array.3088+0x1fd>
    1d8c:	48 89 ef             	mov    %rbp,%rdi
    1d8f:	b8 00 00 00 00       	mov    $0x0,%eax
    1d94:	e8 27 f2 ff ff       	callq  fc0 <fprintf@plt>
    1d99:	48 83 c4 10          	add    $0x10,%rsp
    1d9d:	83 3d 18 1a 20 00 00 	cmpl   $0x0,0x201a18(%rip)        # 2037bc <num_input_strings>
    1da4:	7e 60                	jle    1e06 <send_msg_2+0x143>
    1da6:	bb 00 00 00 00       	mov    $0x0,%ebx
    1dab:	4c 8d 3d 2e 1a 20 00 	lea    0x201a2e(%rip),%r15        # 2037e0 <input_strings>
    1db2:	4c 8d 74 24 10       	lea    0x10(%rsp),%r14
    1db7:	4c 8d 2d a2 14 20 00 	lea    0x2014a2(%rip),%r13        # 203260 <lab_id>
    1dbe:	4c 8d 25 14 08 00 00 	lea    0x814(%rip),%r12        # 25d9 <array.3088+0x219>
    1dc5:	48 63 c3             	movslq %ebx,%rax
    1dc8:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    1dcc:	48 c1 e0 04          	shl    $0x4,%rax
    1dd0:	4c 01 f8             	add    %r15,%rax
    1dd3:	83 c3 01             	add    $0x1,%ebx
    1dd6:	48 83 ec 08          	sub    $0x8,%rsp
    1dda:	50                   	push   %rax
    1ddb:	41 89 d9             	mov    %ebx,%r9d
    1dde:	4d 89 f0             	mov    %r14,%r8
    1de1:	8b 0d 79 18 20 00    	mov    0x201879(%rip),%ecx        # 203660 <bomb_id>
    1de7:	4c 89 ea             	mov    %r13,%rdx
    1dea:	4c 89 e6             	mov    %r12,%rsi
    1ded:	48 89 ef             	mov    %rbp,%rdi
    1df0:	b8 00 00 00 00       	mov    $0x0,%eax
    1df5:	e8 c6 f1 ff ff       	callq  fc0 <fprintf@plt>
    1dfa:	48 83 c4 10          	add    $0x10,%rsp
    1dfe:	39 1d b8 19 20 00    	cmp    %ebx,0x2019b8(%rip)        # 2037bc <num_input_strings>
    1e04:	7f bf                	jg     1dc5 <send_msg_2+0x102>
    1e06:	48 89 ef             	mov    %rbp,%rdi
    1e09:	e8 32 f1 ff ff       	callq  f40 <rewind@plt>
    1e0e:	4c 8d 05 4b 08 00 00 	lea    0x84b(%rip),%r8        # 2660 <array.3088+0x2a0>
    1e15:	48 8d 0d 4e 08 00 00 	lea    0x84e(%rip),%rcx        # 266a <array.3088+0x2aa>
    1e1c:	48 8d 15 4f 08 00 00 	lea    0x84f(%rip),%rdx        # 2672 <array.3088+0x2b2>
    1e23:	48 8d 35 5f 08 00 00 	lea    0x85f(%rip),%rsi        # 2689 <array.3088+0x2c9>
    1e2a:	48 8d 3d ef 1f 20 00 	lea    0x201fef(%rip),%rdi        # 203e20 <scratch>
    1e31:	b8 00 00 00 00       	mov    $0x0,%eax
    1e36:	e8 15 f2 ff ff       	callq  1050 <sprintf@plt>
    1e3b:	48 8d 3d de 1f 20 00 	lea    0x201fde(%rip),%rdi        # 203e20 <scratch>
    1e42:	e8 d9 f0 ff ff       	callq  f20 <system@plt>
    1e47:	85 c0                	test   %eax,%eax
    1e49:	0f 85 9c 00 00 00    	jne    1eeb <send_msg_2+0x228>
    1e4f:	48 89 ef             	mov    %rbp,%rdi
    1e52:	e8 b9 f0 ff ff       	callq  f10 <fclose@plt>
    1e57:	85 c0                	test   %eax,%eax
    1e59:	0f 85 a2 00 00 00    	jne    1f01 <send_msg_2+0x23e>
    1e5f:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1e63:	e8 e8 f0 ff ff       	callq  f50 <dup@plt>
    1e68:	85 c0                	test   %eax,%eax
    1e6a:	0f 85 a7 00 00 00    	jne    1f17 <send_msg_2+0x254>
    1e70:	8b 7c 24 0c          	mov    0xc(%rsp),%edi
    1e74:	e8 e7 f0 ff ff       	callq  f60 <close@plt>
    1e79:	85 c0                	test   %eax,%eax
    1e7b:	0f 85 ac 00 00 00    	jne    1f2d <send_msg_2+0x26a>
    1e81:	48 83 c4 68          	add    $0x68,%rsp
    1e85:	5b                   	pop    %rbx
    1e86:	5d                   	pop    %rbp
    1e87:	41 5c                	pop    %r12
    1e89:	41 5d                	pop    %r13
    1e8b:	41 5e                	pop    %r14
    1e8d:	41 5f                	pop    %r15
    1e8f:	c3                   	retq   
    1e90:	48 8d 3d 71 07 00 00 	lea    0x771(%rip),%rdi        # 2608 <array.3088+0x248>
    1e97:	e8 54 f0 ff ff       	callq  ef0 <puts@plt>
    1e9c:	bf 08 00 00 00       	mov    $0x8,%edi
    1ea1:	e8 ba f1 ff ff       	callq  1060 <exit@plt>
    1ea6:	48 8d 3d 6f 07 00 00 	lea    0x76f(%rip),%rdi        # 261c <array.3088+0x25c>
    1ead:	e8 3e f0 ff ff       	callq  ef0 <puts@plt>
    1eb2:	bf 08 00 00 00       	mov    $0x8,%edi
    1eb7:	e8 a4 f1 ff ff       	callq  1060 <exit@plt>
    1ebc:	48 8d 3d 6c 07 00 00 	lea    0x76c(%rip),%rdi        # 262f <array.3088+0x26f>
    1ec3:	e8 28 f0 ff ff       	callq  ef0 <puts@plt>
    1ec8:	bf 08 00 00 00       	mov    $0x8,%edi
    1ecd:	e8 8e f1 ff ff       	callq  1060 <exit@plt>
    1ed2:	c7 44 24 10 6e 6f 62 	movl   $0x6f626f6e,0x10(%rsp)
    1ed9:	6f 
    1eda:	66 c7 44 24 14 64 79 	movw   $0x7964,0x14(%rsp)
    1ee1:	c6 44 24 16 00       	movb   $0x0,0x16(%rsp)
    1ee6:	e9 69 fe ff ff       	jmpq   1d54 <send_msg_2+0x91>
    1eeb:	48 8d 3d a0 07 00 00 	lea    0x7a0(%rip),%rdi        # 2692 <array.3088+0x2d2>
    1ef2:	e8 f9 ef ff ff       	callq  ef0 <puts@plt>
    1ef7:	bf 08 00 00 00       	mov    $0x8,%edi
    1efc:	e8 5f f1 ff ff       	callq  1060 <exit@plt>
    1f01:	48 8d 3d a4 07 00 00 	lea    0x7a4(%rip),%rdi        # 26ac <array.3088+0x2ec>
    1f08:	e8 e3 ef ff ff       	callq  ef0 <puts@plt>
    1f0d:	bf 08 00 00 00       	mov    $0x8,%edi
    1f12:	e8 49 f1 ff ff       	callq  1060 <exit@plt>
    1f17:	48 8d 3d a7 07 00 00 	lea    0x7a7(%rip),%rdi        # 26c5 <array.3088+0x305>
    1f1e:	e8 cd ef ff ff       	callq  ef0 <puts@plt>
    1f23:	bf 08 00 00 00       	mov    $0x8,%edi
    1f28:	e8 33 f1 ff ff       	callq  1060 <exit@plt>
    1f2d:	48 8d 3d ac 07 00 00 	lea    0x7ac(%rip),%rdi        # 26e0 <array.3088+0x320>
    1f34:	e8 b7 ef ff ff       	callq  ef0 <puts@plt>
    1f39:	bf 08 00 00 00       	mov    $0x8,%edi
    1f3e:	e8 1d f1 ff ff       	callq  1060 <exit@plt>

0000000000001f43 <explode_bomb>:
    1f43:	48 83 ec 08          	sub    $0x8,%rsp
    1f47:	48 8d 3d a9 07 00 00 	lea    0x7a9(%rip),%rdi        # 26f7 <array.3088+0x337>
    1f4e:	e8 9d ef ff ff       	callq  ef0 <puts@plt>
    1f53:	48 8d 3d a6 07 00 00 	lea    0x7a6(%rip),%rdi        # 2700 <array.3088+0x340>
    1f5a:	e8 91 ef ff ff       	callq  ef0 <puts@plt>
    1f5f:	bf 00 00 00 00       	mov    $0x0,%edi
    1f64:	e8 17 fa ff ff       	callq  1980 <send_msg>
    1f69:	48 8d 3d c8 04 00 00 	lea    0x4c8(%rip),%rdi        # 2438 <array.3088+0x78>
    1f70:	e8 7b ef ff ff       	callq  ef0 <puts@plt>
    1f75:	bf 08 00 00 00       	mov    $0x8,%edi
    1f7a:	e8 e1 f0 ff ff       	callq  1060 <exit@plt>

0000000000001f7f <read_six_numbers>:
    1f7f:	48 83 ec 08          	sub    $0x8,%rsp
    1f83:	48 89 f2             	mov    %rsi,%rdx
    1f86:	48 8d 4e 04          	lea    0x4(%rsi),%rcx
    1f8a:	48 8d 46 14          	lea    0x14(%rsi),%rax
    1f8e:	50                   	push   %rax
    1f8f:	48 8d 46 10          	lea    0x10(%rsi),%rax
    1f93:	50                   	push   %rax
    1f94:	4c 8d 4e 0c          	lea    0xc(%rsi),%r9
    1f98:	4c 8d 46 08          	lea    0x8(%rsi),%r8
    1f9c:	48 8d 35 74 07 00 00 	lea    0x774(%rip),%rsi        # 2717 <array.3088+0x357>
    1fa3:	b8 00 00 00 00       	mov    $0x0,%eax
    1fa8:	e8 53 f0 ff ff       	callq  1000 <__isoc99_sscanf@plt>
    1fad:	48 83 c4 10          	add    $0x10,%rsp
    1fb1:	83 f8 05             	cmp    $0x5,%eax
    1fb4:	7e 05                	jle    1fbb <read_six_numbers+0x3c>
    1fb6:	48 83 c4 08          	add    $0x8,%rsp
    1fba:	c3                   	retq   
    1fbb:	e8 83 ff ff ff       	callq  1f43 <explode_bomb>

0000000000001fc0 <read_line>:
    1fc0:	48 83 ec 08          	sub    $0x8,%rsp
    1fc4:	b8 00 00 00 00       	mov    $0x0,%eax
    1fc9:	e8 04 f9 ff ff       	callq  18d2 <skip>
    1fce:	48 85 c0             	test   %rax,%rax
    1fd1:	74 6f                	je     2042 <read_line+0x82>
    1fd3:	8b 35 e3 17 20 00    	mov    0x2017e3(%rip),%esi        # 2037bc <num_input_strings>
    1fd9:	48 63 c6             	movslq %esi,%rax
    1fdc:	48 8d 14 80          	lea    (%rax,%rax,4),%rdx
    1fe0:	48 c1 e2 04          	shl    $0x4,%rdx
    1fe4:	48 8d 05 f5 17 20 00 	lea    0x2017f5(%rip),%rax        # 2037e0 <input_strings>
    1feb:	48 01 c2             	add    %rax,%rdx
    1fee:	b8 00 00 00 00       	mov    $0x0,%eax
    1ff3:	48 c7 c1 ff ff ff ff 	mov    $0xffffffffffffffff,%rcx
    1ffa:	48 89 d7             	mov    %rdx,%rdi
    1ffd:	f2 ae                	repnz scas %es:(%rdi),%al
    1fff:	48 f7 d1             	not    %rcx
    2002:	48 83 e9 01          	sub    $0x1,%rcx
    2006:	83 f9 4f             	cmp    $0x4f,%ecx
    2009:	0f 84 a1 00 00 00    	je     20b0 <read_line+0xf0>
    200f:	83 e9 01             	sub    $0x1,%ecx
    2012:	48 63 c9             	movslq %ecx,%rcx
    2015:	48 63 c6             	movslq %esi,%rax
    2018:	48 8d 04 80          	lea    (%rax,%rax,4),%rax
    201c:	48 c1 e0 04          	shl    $0x4,%rax
    2020:	48 89 c7             	mov    %rax,%rdi
    2023:	48 8d 05 b6 17 20 00 	lea    0x2017b6(%rip),%rax        # 2037e0 <input_strings>
    202a:	48 01 f8             	add    %rdi,%rax
    202d:	c6 04 08 00          	movb   $0x0,(%rax,%rcx,1)
    2031:	83 c6 01             	add    $0x1,%esi
    2034:	89 35 82 17 20 00    	mov    %esi,0x201782(%rip)        # 2037bc <num_input_strings>
    203a:	48 89 d0             	mov    %rdx,%rax
    203d:	48 83 c4 08          	add    $0x8,%rsp
    2041:	c3                   	retq   
    2042:	48 8b 05 67 17 20 00 	mov    0x201767(%rip),%rax        # 2037b0 <stdin@@GLIBC_2.2.5>
    2049:	48 39 05 70 17 20 00 	cmp    %rax,0x201770(%rip)        # 2037c0 <infile>
    2050:	74 43                	je     2095 <read_line+0xd5>
    2052:	48 8d 3d ee 06 00 00 	lea    0x6ee(%rip),%rdi        # 2747 <array.3088+0x387>
    2059:	e8 62 ee ff ff       	callq  ec0 <getenv@plt>
    205e:	48 85 c0             	test   %rax,%rax
    2061:	75 43                	jne    20a6 <read_line+0xe6>
    2063:	48 8b 05 46 17 20 00 	mov    0x201746(%rip),%rax        # 2037b0 <stdin@@GLIBC_2.2.5>
    206a:	48 89 05 4f 17 20 00 	mov    %rax,0x20174f(%rip)        # 2037c0 <infile>
    2071:	b8 00 00 00 00       	mov    $0x0,%eax
    2076:	e8 57 f8 ff ff       	callq  18d2 <skip>
    207b:	48 85 c0             	test   %rax,%rax
    207e:	0f 85 4f ff ff ff    	jne    1fd3 <read_line+0x13>
    2084:	48 8d 3d 9e 06 00 00 	lea    0x69e(%rip),%rdi        # 2729 <array.3088+0x369>
    208b:	e8 60 ee ff ff       	callq  ef0 <puts@plt>
    2090:	e8 ae fe ff ff       	callq  1f43 <explode_bomb>
    2095:	48 8d 3d 8d 06 00 00 	lea    0x68d(%rip),%rdi        # 2729 <array.3088+0x369>
    209c:	e8 4f ee ff ff       	callq  ef0 <puts@plt>
    20a1:	e8 9d fe ff ff       	callq  1f43 <explode_bomb>
    20a6:	bf 00 00 00 00       	mov    $0x0,%edi
    20ab:	e8 b0 ef ff ff       	callq  1060 <exit@plt>
    20b0:	48 8d 3d 9b 06 00 00 	lea    0x69b(%rip),%rdi        # 2752 <array.3088+0x392>
    20b7:	e8 34 ee ff ff       	callq  ef0 <puts@plt>
    20bc:	e8 82 fe ff ff       	callq  1f43 <explode_bomb>

00000000000020c1 <phase_defused>:
    20c1:	48 83 ec 68          	sub    $0x68,%rsp
    20c5:	bf 01 00 00 00       	mov    $0x1,%edi
    20ca:	e8 b1 f8 ff ff       	callq  1980 <send_msg>
    20cf:	83 3d e6 16 20 00 06 	cmpl   $0x6,0x2016e6(%rip)        # 2037bc <num_input_strings>
    20d6:	74 05                	je     20dd <phase_defused+0x1c>
    20d8:	48 83 c4 68          	add    $0x68,%rsp
    20dc:	c3                   	retq   
    20dd:	48 8d 4c 24 10       	lea    0x10(%rsp),%rcx
    20e2:	48 8d 54 24 0c       	lea    0xc(%rsp),%rdx
    20e7:	48 8d 35 7f 06 00 00 	lea    0x67f(%rip),%rsi        # 276d <array.3088+0x3ad>
    20ee:	48 8d 3d db 17 20 00 	lea    0x2017db(%rip),%rdi        # 2038d0 <input_strings+0xf0>
    20f5:	b8 00 00 00 00       	mov    $0x0,%eax
    20fa:	e8 01 ef ff ff       	callq  1000 <__isoc99_sscanf@plt>
    20ff:	83 f8 02             	cmp    $0x2,%eax
    2102:	74 1a                	je     211e <phase_defused+0x5d>
    2104:	48 8d 3d b5 03 00 00 	lea    0x3b5(%rip),%rdi        # 24c0 <array.3088+0x100>
    210b:	e8 e0 ed ff ff       	callq  ef0 <puts@plt>
    2110:	48 8d 3d d9 03 00 00 	lea    0x3d9(%rip),%rdi        # 24f0 <array.3088+0x130>
    2117:	e8 d4 ed ff ff       	callq  ef0 <puts@plt>
    211c:	eb ba                	jmp    20d8 <phase_defused+0x17>
    211e:	48 8d 7c 24 10       	lea    0x10(%rsp),%rdi
    2123:	48 8d 35 49 06 00 00 	lea    0x649(%rip),%rsi        # 2773 <array.3088+0x3b3>
    212a:	e8 04 f6 ff ff       	callq  1733 <strings_not_equal>
    212f:	85 c0                	test   %eax,%eax
    2131:	75 d1                	jne    2104 <phase_defused+0x43>
    2133:	48 8d 3d 26 03 00 00 	lea    0x326(%rip),%rdi        # 2460 <array.3088+0xa0>
    213a:	e8 b1 ed ff ff       	callq  ef0 <puts@plt>
    213f:	48 8d 3d 42 03 00 00 	lea    0x342(%rip),%rdi        # 2488 <array.3088+0xc8>
    2146:	e8 a5 ed ff ff       	callq  ef0 <puts@plt>
    214b:	b8 00 00 00 00       	mov    $0x0,%eax
    2150:	e8 f0 f4 ff ff       	callq  1645 <secret_phase>
    2155:	eb ad                	jmp    2104 <phase_defused+0x43>
    2157:	66 0f 1f 84 00 00 00 	nopw   0x0(%rax,%rax,1)
    215e:	00 00 

0000000000002160 <__libc_csu_init>:
    2160:	41 57                	push   %r15
    2162:	41 56                	push   %r14
    2164:	41 89 ff             	mov    %edi,%r15d
    2167:	41 55                	push   %r13
    2169:	41 54                	push   %r12
    216b:	4c 8d 25 66 0c 20 00 	lea    0x200c66(%rip),%r12        # 202dd8 <__frame_dummy_init_array_entry>
    2172:	55                   	push   %rbp
    2173:	48 8d 2d 66 0c 20 00 	lea    0x200c66(%rip),%rbp        # 202de0 <__init_array_end>
    217a:	53                   	push   %rbx
    217b:	49 89 f6             	mov    %rsi,%r14
    217e:	49 89 d5             	mov    %rdx,%r13
    2181:	4c 29 e5             	sub    %r12,%rbp
    2184:	48 83 ec 08          	sub    $0x8,%rsp
    2188:	48 c1 fd 03          	sar    $0x3,%rbp
    218c:	e8 07 ed ff ff       	callq  e98 <_init>
    2191:	48 85 ed             	test   %rbp,%rbp
    2194:	74 20                	je     21b6 <__libc_csu_init+0x56>
    2196:	31 db                	xor    %ebx,%ebx
    2198:	0f 1f 84 00 00 00 00 	nopl   0x0(%rax,%rax,1)
    219f:	00 
    21a0:	4c 89 ea             	mov    %r13,%rdx
    21a3:	4c 89 f6             	mov    %r14,%rsi
    21a6:	44 89 ff             	mov    %r15d,%edi
    21a9:	41 ff 14 dc          	callq  *(%r12,%rbx,8)
    21ad:	48 83 c3 01          	add    $0x1,%rbx
    21b1:	48 39 dd             	cmp    %rbx,%rbp
    21b4:	75 ea                	jne    21a0 <__libc_csu_init+0x40>
    21b6:	48 83 c4 08          	add    $0x8,%rsp
    21ba:	5b                   	pop    %rbx
    21bb:	5d                   	pop    %rbp
    21bc:	41 5c                	pop    %r12
    21be:	41 5d                	pop    %r13
    21c0:	41 5e                	pop    %r14
    21c2:	41 5f                	pop    %r15
    21c4:	c3                   	retq   
    21c5:	90                   	nop
    21c6:	66 2e 0f 1f 84 00 00 	nopw   %cs:0x0(%rax,%rax,1)
    21cd:	00 00 00 

00000000000021d0 <__libc_csu_fini>:
    21d0:	f3 c3                	repz retq 

Disassembly of section .fini:

00000000000021d4 <_fini>:
    21d4:	48 83 ec 08          	sub    $0x8,%rsp
    21d8:	48 83 c4 08          	add    $0x8,%rsp
    21dc:	c3                   	retq   

Disassembly of section .rodata:

00000000000021e0 <_IO_stdin_used>:
    21e0:	01 00                	add    %eax,(%rax)
    21e2:	02 00                	add    (%rax),%al
    21e4:	25 73 3a 20 45       	and    $0x45203a73,%eax
    21e9:	72 72                	jb     225d <_IO_stdin_used+0x7d>
    21eb:	6f                   	outsl  %ds:(%rsi),(%dx)
    21ec:	72 3a                	jb     2228 <_IO_stdin_used+0x48>
    21ee:	20 43 6f             	and    %al,0x6f(%rbx)
    21f1:	75 6c                	jne    225f <_IO_stdin_used+0x7f>
    21f3:	64 6e                	outsb  %fs:(%rsi),(%dx)
    21f5:	27                   	(bad)  
    21f6:	74 20                	je     2218 <_IO_stdin_used+0x38>
    21f8:	6f                   	outsl  %ds:(%rsi),(%dx)
    21f9:	70 65                	jo     2260 <_IO_stdin_used+0x80>
    21fb:	6e                   	outsb  %ds:(%rsi),(%dx)
    21fc:	20 25 73 0a 00 55    	and    %ah,0x55000a73(%rip)        # 55002c75 <_end+0x54dfee05>
    2202:	73 61                	jae    2265 <_IO_stdin_used+0x85>
    2204:	67 65 3a 20          	cmp    %gs:(%eax),%ah
    2208:	25 73 20 5b 3c       	and    $0x3c5b2073,%eax
    220d:	69 6e 70 75 74 5f 66 	imul   $0x665f7475,0x70(%rsi),%ebp
    2214:	69 6c 65 3e 5d 0a 00 	imul   $0x54000a5d,0x3e(%rbp,%riz,2),%ebp
    221b:	54 
    221c:	68 61 74 27 73       	pushq  $0x73277461
    2221:	20 6e 75             	and    %ch,0x75(%rsi)
    2224:	6d                   	insl   (%dx),%es:(%rdi)
    2225:	62                   	(bad)  
    2226:	65 72 20             	gs jb  2249 <_IO_stdin_used+0x69>
    2229:	32 2e                	xor    (%rsi),%ch
    222b:	20 20                	and    %ah,(%rax)
    222d:	4b                   	rex.WXB
    222e:	65 65 70 20          	gs gs jo 2252 <_IO_stdin_used+0x72>
    2232:	67 6f                	outsl  %ds:(%esi),(%dx)
    2234:	69 6e 67 21 00 48 61 	imul   $0x61480021,0x67(%rsi),%ebp
    223b:	6c                   	insb   (%dx),%es:(%rdi)
    223c:	66 77 61             	data16 ja 22a0 <_IO_stdin_used+0xc0>
    223f:	79 20                	jns    2261 <_IO_stdin_used+0x81>
    2241:	74 68                	je     22ab <_IO_stdin_used+0xcb>
    2243:	65 72 65             	gs jb  22ab <_IO_stdin_used+0xcb>
    2246:	21 00                	and    %eax,(%rax)
    2248:	47 6f                	rex.RXB outsl %ds:(%rsi),(%dx)
    224a:	6f                   	outsl  %ds:(%rsi),(%dx)
    224b:	64 20 77 6f          	and    %dh,%fs:0x6f(%rdi)
    224f:	72 6b                	jb     22bc <_IO_stdin_used+0xdc>
    2251:	21 20                	and    %esp,(%rax)
    2253:	20 4f 6e             	and    %cl,0x6e(%rdi)
    2256:	20 74 6f 20          	and    %dh,0x20(%rdi,%rbp,2)
    225a:	74 68                	je     22c4 <_IO_stdin_used+0xe4>
    225c:	65 20 6e 65          	and    %ch,%gs:0x65(%rsi)
    2260:	78 74                	js     22d6 <_IO_stdin_used+0xf6>
    2262:	2e 2e 2e 00 00       	cs cs add %al,%cs:(%rax)
    2267:	00 57 65             	add    %dl,0x65(%rdi)
    226a:	6c                   	insb   (%dx),%es:(%rdi)
    226b:	63 6f 6d             	movslq 0x6d(%rdi),%ebp
    226e:	65 20 74 6f 20       	and    %dh,%gs:0x20(%rdi,%rbp,2)
    2273:	6d                   	insl   (%dx),%es:(%rdi)
    2274:	79 20                	jns    2296 <_IO_stdin_used+0xb6>
    2276:	66 69 65 6e 64 69    	imul   $0x6964,0x6e(%rbp),%sp
    227c:	73 68                	jae    22e6 <_IO_stdin_used+0x106>
    227e:	20 6c 69 74          	and    %ch,0x74(%rcx,%rbp,2)
    2282:	74 6c                	je     22f0 <_IO_stdin_used+0x110>
    2284:	65 20 62 6f          	and    %ah,%gs:0x6f(%rdx)
    2288:	6d                   	insl   (%dx),%es:(%rdi)
    2289:	62                   	(bad)  
    228a:	2e 20 59 6f          	and    %bl,%cs:0x6f(%rcx)
    228e:	75 20                	jne    22b0 <_IO_stdin_used+0xd0>
    2290:	68 61 76 65 20       	pushq  $0x20657661
    2295:	36 20 70 68          	and    %dh,%ss:0x68(%rax)
    2299:	61                   	(bad)  
    229a:	73 65                	jae    2301 <_IO_stdin_used+0x121>
    229c:	73 20                	jae    22be <_IO_stdin_used+0xde>
    229e:	77 69                	ja     2309 <_IO_stdin_used+0x129>
    22a0:	74 68                	je     230a <_IO_stdin_used+0x12a>
    22a2:	00 00                	add    %al,(%rax)
    22a4:	00 00                	add    %al,(%rax)
    22a6:	00 00                	add    %al,(%rax)
    22a8:	77 68                	ja     2312 <_IO_stdin_used+0x132>
    22aa:	69 63 68 20 74 6f 20 	imul   $0x206f7420,0x68(%rbx),%esp
    22b1:	62                   	(bad)  
    22b2:	6c                   	insb   (%dx),%es:(%rdi)
    22b3:	6f                   	outsl  %ds:(%rsi),(%dx)
    22b4:	77 20                	ja     22d6 <_IO_stdin_used+0xf6>
    22b6:	79 6f                	jns    2327 <_IO_stdin_used+0x147>
    22b8:	75 72                	jne    232c <_IO_stdin_used+0x14c>
    22ba:	73 65                	jae    2321 <_IO_stdin_used+0x141>
    22bc:	6c                   	insb   (%dx),%es:(%rdi)
    22bd:	66 20 75 70          	data16 and %dh,0x70(%rbp)
    22c1:	2e 20 48 61          	and    %cl,%cs:0x61(%rax)
    22c5:	76 65                	jbe    232c <_IO_stdin_used+0x14c>
    22c7:	20 61 20             	and    %ah,0x20(%rcx)
    22ca:	6e                   	outsb  %ds:(%rsi),(%dx)
    22cb:	69 63 65 20 64 61 79 	imul   $0x79616420,0x65(%rbx),%esp
    22d2:	21 00                	and    %eax,(%rax)
    22d4:	00 00                	add    %al,(%rax)
    22d6:	00 00                	add    %al,(%rax)
    22d8:	50                   	push   %rax
    22d9:	68 61 73 65 20       	pushq  $0x20657361
    22de:	31 20                	xor    %esp,(%rax)
    22e0:	64 65 66 75 73       	fs gs data16 jne 2358 <_IO_stdin_used+0x178>
    22e5:	65 64 2e 20 48 6f    	gs fs and %cl,%cs:0x6f(%rax)
    22eb:	77 20                	ja     230d <_IO_stdin_used+0x12d>
    22ed:	61                   	(bad)  
    22ee:	62                   	(bad)  
    22ef:	6f                   	outsl  %ds:(%rsi),(%dx)
    22f0:	75 74                	jne    2366 <_IO_stdin_used+0x186>
    22f2:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
    22f6:	20 6e 65             	and    %ch,0x65(%rsi)
    22f9:	78 74                	js     236f <_IO_stdin_used+0x18f>
    22fb:	20 6f 6e             	and    %ch,0x6e(%rdi)
    22fe:	65 3f                	gs (bad) 
	...
    2308:	53                   	push   %rbx
    2309:	6f                   	outsl  %ds:(%rsi),(%dx)
    230a:	20 79 6f             	and    %bh,0x6f(%rcx)
    230d:	75 20                	jne    232f <_IO_stdin_used+0x14f>
    230f:	67 6f                	outsl  %ds:(%esi),(%dx)
    2311:	74 20                	je     2333 <_IO_stdin_used+0x153>
    2313:	74 68                	je     237d <_IO_stdin_used+0x19d>
    2315:	61                   	(bad)  
    2316:	74 20                	je     2338 <_IO_stdin_used+0x158>
    2318:	6f                   	outsl  %ds:(%rsi),(%dx)
    2319:	6e                   	outsb  %ds:(%rsi),(%dx)
    231a:	65 2e 20 20          	gs and %ah,%cs:(%rax)
    231e:	54                   	push   %rsp
    231f:	72 79                	jb     239a <_IO_stdin_used+0x1ba>
    2321:	20 74 68 69          	and    %dh,0x69(%rax,%rbp,2)
    2325:	73 20                	jae    2347 <_IO_stdin_used+0x167>
    2327:	6f                   	outsl  %ds:(%rsi),(%dx)
    2328:	6e                   	outsb  %ds:(%rsi),(%dx)
    2329:	65 2e 00 00          	gs add %al,%cs:(%rax)
    232d:	00 00                	add    %al,(%rax)
    232f:	00 49 20             	add    %cl,0x20(%rcx)
    2332:	61                   	(bad)  
    2333:	6d                   	insl   (%dx),%es:(%rdi)
    2334:	20 6e 6f             	and    %ch,0x6f(%rsi)
    2337:	74 20                	je     2359 <_IO_stdin_used+0x179>
    2339:	70 61                	jo     239c <_IO_stdin_used+0x1bc>
    233b:	72 74                	jb     23b1 <_IO_stdin_used+0x1d1>
    233d:	20 6f 66             	and    %ch,0x66(%rdi)
    2340:	20 74 68 65          	and    %dh,0x65(%rax,%rbp,2)
    2344:	20 70 72             	and    %dh,0x72(%rax)
    2347:	6f                   	outsl  %ds:(%rsi),(%dx)
    2348:	62                   	(bad)  
    2349:	6c                   	insb   (%dx),%es:(%rdi)
    234a:	65 6d                	gs insl (%dx),%es:(%rdi)
    234c:	2e 20 49 20          	and    %cl,%cs:0x20(%rcx)
    2350:	61                   	(bad)  
    2351:	6d                   	insl   (%dx),%es:(%rdi)
    2352:	20 61 20             	and    %ah,0x20(%rcx)
    2355:	52                   	push   %rdx
    2356:	65 70 75             	gs jo  23ce <array.3088+0xe>
    2359:	62                   	(bad)  
    235a:	6c                   	insb   (%dx),%es:(%rdi)
    235b:	69 63 61 6e 2e 00 00 	imul   $0x2e6e,0x61(%rbx),%esp
    2362:	00 00                	add    %al,(%rax)
    2364:	00 00                	add    %al,(%rax)
    2366:	00 00                	add    %al,(%rax)
    2368:	57                   	push   %rdi
    2369:	6f                   	outsl  %ds:(%rsi),(%dx)
    236a:	77 21                	ja     238d <_IO_stdin_used+0x1ad>
    236c:	20 59 6f             	and    %bl,0x6f(%rcx)
    236f:	75 27                	jne    2398 <_IO_stdin_used+0x1b8>
    2371:	76 65                	jbe    23d8 <array.3088+0x18>
    2373:	20 64 65 66          	and    %ah,0x66(%rbp,%riz,2)
    2377:	75 73                	jne    23ec <array.3088+0x2c>
    2379:	65 64 20 74 68 65    	gs and %dh,%fs:0x65(%rax,%rbp,2)
    237f:	20 73 65             	and    %dh,0x65(%rbx)
    2382:	63 72 65             	movslq 0x65(%rdx),%esi
    2385:	74 20                	je     23a7 <_IO_stdin_used+0x1c7>
    2387:	73 74                	jae    23fd <array.3088+0x3d>
    2389:	61                   	(bad)  
    238a:	67 65 21 00          	and    %eax,%gs:(%eax)
	...
    239e:	00 00                	add    %al,(%rax)
    23a0:	8e f0                	mov    %eax,%?
    23a2:	ff                   	(bad)  
    23a3:	ff 51 f0             	callq  *-0x10(%rcx)
    23a6:	ff                   	(bad)  
    23a7:	ff 58 f0             	lcall  *-0x10(%rax)
    23aa:	ff                   	(bad)  
    23ab:	ff 5f f0             	lcall  *-0x10(%rdi)
    23ae:	ff                   	(bad)  
    23af:	ff 66 f0             	jmpq   *-0x10(%rsi)
    23b2:	ff                   	(bad)  
    23b3:	ff 6d f0             	ljmp   *-0x10(%rbp)
    23b6:	ff                   	(bad)  
    23b7:	ff 74 f0 ff          	pushq  -0x1(%rax,%rsi,8)
    23bb:	ff                   	(bad)  
    23bc:	7b f0                	jnp    23ae <_IO_stdin_used+0x1ce>
    23be:	ff                   	(bad)  
    23bf:	ff                 	decl   (%rdx)

00000000000023c0 <array.3088>:
    23c0:	0a 00                	or     (%rax),%al
    23c2:	00 00                	add    %al,(%rax)
    23c4:	02 00                	add    (%rax),%al
    23c6:	00 00                	add    %al,(%rax)
    23c8:	0e                   	(bad)  
    23c9:	00 00                	add    %al,(%rax)
    23cb:	00 07                	add    %al,(%rdi)
    23cd:	00 00                	add    %al,(%rax)
    23cf:	00 08                	add    %cl,(%rax)
    23d1:	00 00                	add    %al,(%rax)
    23d3:	00 0c 00             	add    %cl,(%rax,%rax,1)
    23d6:	00 00                	add    %al,(%rax)
    23d8:	0f 00 00             	sldt   (%rax)
    23db:	00 0b                	add    %cl,(%rbx)
    23dd:	00 00                	add    %al,(%rax)
    23df:	00 00                	add    %al,(%rax)
    23e1:	00 00                	add    %al,(%rax)
    23e3:	00 04 00             	add    %al,(%rax,%rax,1)
    23e6:	00 00                	add    %al,(%rax)
    23e8:	01 00                	add    %eax,(%rax)
    23ea:	00 00                	add    %al,(%rax)
    23ec:	0d 00 00 00 03       	or     $0x3000000,%eax
    23f1:	00 00                	add    %al,(%rax)
    23f3:	00 09                	add    %cl,(%rcx)
    23f5:	00 00                	add    %al,(%rax)
    23f7:	00 06                	add    %al,(%rsi)
    23f9:	00 00                	add    %al,(%rax)
    23fb:	00 05 00 00 00 53    	add    %al,0x53000000(%rip)        # 53002401 <_end+0x52dfe591>
    2401:	6f                   	outsl  %ds:(%rsi),(%dx)
    2402:	20 79 6f             	and    %bh,0x6f(%rcx)
    2405:	75 20                	jne    2427 <array.3088+0x67>
    2407:	74 68                	je     2471 <array.3088+0xb1>
    2409:	69 6e 6b 20 79 6f 75 	imul   $0x756f7920,0x6b(%rsi),%ebp
    2410:	20 63 61             	and    %ah,0x61(%rbx)
    2413:	6e                   	outsb  %ds:(%rsi),(%dx)
    2414:	20 73 74             	and    %dh,0x74(%rbx)
    2417:	6f                   	outsl  %ds:(%rsi),(%dx)
    2418:	70 20                	jo     243a <array.3088+0x7a>
    241a:	74 68                	je     2484 <array.3088+0xc4>
    241c:	65 20 62 6f          	and    %ah,%gs:0x6f(%rdx)
    2420:	6d                   	insl   (%dx),%es:(%rdi)
    2421:	62                   	(bad)  
    2422:	20 77 69             	and    %dh,0x69(%rdi)
    2425:	74 68                	je     248f <array.3088+0xcf>
    2427:	20 63 74             	and    %ah,0x74(%rbx)
    242a:	72 6c                	jb     2498 <array.3088+0xd8>
    242c:	2d 63 2c 20 64       	sub    $0x64202c63,%eax
    2431:	6f                   	outsl  %ds:(%rsi),(%dx)
    2432:	20 79 6f             	and    %bh,0x6f(%rcx)
    2435:	75 3f                	jne    2476 <array.3088+0xb6>
    2437:	00 59 6f             	add    %bl,0x6f(%rcx)
    243a:	75 72                	jne    24ae <array.3088+0xee>
    243c:	20 69 6e             	and    %ch,0x6e(%rcx)
    243f:	73 74                	jae    24b5 <array.3088+0xf5>
    2441:	72 75                	jb     24b8 <array.3088+0xf8>
    2443:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
    2447:	20 68 61             	and    %ch,0x61(%rax)
    244a:	73 20                	jae    246c <array.3088+0xac>
    244c:	62                   	(bad)  
    244d:	65 65 6e             	gs outsb %gs:(%rsi),(%dx)
    2450:	20 6e 6f             	and    %ch,0x6f(%rsi)
    2453:	74 69                	je     24be <array.3088+0xfe>
    2455:	66 69 65 64 2e 00    	imul   $0x2e,0x64(%rbp),%sp
    245b:	00 00                	add    %al,(%rax)
    245d:	00 00                	add    %al,(%rax)
    245f:	00 43 75             	add    %al,0x75(%rbx)
    2462:	72 73                	jb     24d7 <array.3088+0x117>
    2464:	65 73 2c             	gs jae 2493 <array.3088+0xd3>
    2467:	20 79 6f             	and    %bh,0x6f(%rcx)
    246a:	75 27                	jne    2493 <array.3088+0xd3>
    246c:	76 65                	jbe    24d3 <array.3088+0x113>
    246e:	20 66 6f             	and    %ah,0x6f(%rsi)
    2471:	75 6e                	jne    24e1 <array.3088+0x121>
    2473:	64 20 74 68 65       	and    %dh,%fs:0x65(%rax,%rbp,2)
    2478:	20 73 65             	and    %dh,0x65(%rbx)
    247b:	63 72 65             	movslq 0x65(%rdx),%esi
    247e:	74 20                	je     24a0 <array.3088+0xe0>
    2480:	70 68                	jo     24ea <array.3088+0x12a>
    2482:	61                   	(bad)  
    2483:	73 65                	jae    24ea <array.3088+0x12a>
    2485:	21 00                	and    %eax,(%rax)
    2487:	00 42 75             	add    %al,0x75(%rdx)
    248a:	74 20                	je     24ac <array.3088+0xec>
    248c:	66 69 6e 64 69 6e    	imul   $0x6e69,0x64(%rsi),%bp
    2492:	67 20 69 74          	and    %ch,0x74(%ecx)
    2496:	20 61 6e             	and    %ah,0x6e(%rcx)
    2499:	64 20 73 6f          	and    %dh,%fs:0x6f(%rbx)
    249d:	6c                   	insb   (%dx),%es:(%rdi)
    249e:	76 69                	jbe    2509 <array.3088+0x149>
    24a0:	6e                   	outsb  %ds:(%rsi),(%dx)
    24a1:	67 20 69 74          	and    %ch,0x74(%ecx)
    24a5:	20 61 72             	and    %ah,0x72(%rcx)
    24a8:	65 20 71 75          	and    %dh,%gs:0x75(%rcx)
    24ac:	69 74 65 20 64 69 66 	imul   $0x66666964,0x20(%rbp,%riz,2),%esi
    24b3:	66 
    24b4:	65 72 65             	gs jb  251c <array.3088+0x15c>
    24b7:	6e                   	outsb  %ds:(%rsi),(%dx)
    24b8:	74 2e                	je     24e8 <array.3088+0x128>
    24ba:	2e 2e 00 00          	cs add %al,%cs:(%rax)
    24be:	00 00                	add    %al,(%rax)
    24c0:	43 6f                	rex.XB outsl %ds:(%rsi),(%dx)
    24c2:	6e                   	outsb  %ds:(%rsi),(%dx)
    24c3:	67 72 61             	addr32 jb 2527 <array.3088+0x167>
    24c6:	74 75                	je     253d <array.3088+0x17d>
    24c8:	6c                   	insb   (%dx),%es:(%rdi)
    24c9:	61                   	(bad)  
    24ca:	74 69                	je     2535 <array.3088+0x175>
    24cc:	6f                   	outsl  %ds:(%rsi),(%dx)
    24cd:	6e                   	outsb  %ds:(%rsi),(%dx)
    24ce:	73 21                	jae    24f1 <array.3088+0x131>
    24d0:	20 59 6f             	and    %bl,0x6f(%rcx)
    24d3:	75 27                	jne    24fc <array.3088+0x13c>
    24d5:	76 65                	jbe    253c <array.3088+0x17c>
    24d7:	20 64 65 66          	and    %ah,0x66(%rbp,%riz,2)
    24db:	75 73                	jne    2550 <array.3088+0x190>
    24dd:	65 64 20 74 68 65    	gs and %dh,%fs:0x65(%rax,%rbp,2)
    24e3:	20 62 6f             	and    %ah,0x6f(%rdx)
    24e6:	6d                   	insl   (%dx),%es:(%rdi)
    24e7:	62 21                	(bad)  
    24e9:	00 00                	add    %al,(%rax)
    24eb:	00 00                	add    %al,(%rax)
    24ed:	00 00                	add    %al,(%rax)
    24ef:	00 59 6f             	add    %bl,0x6f(%rcx)
    24f2:	75 72                	jne    2566 <array.3088+0x1a6>
    24f4:	20 69 6e             	and    %ch,0x6e(%rcx)
    24f7:	73 74                	jae    256d <array.3088+0x1ad>
    24f9:	72 75                	jb     2570 <array.3088+0x1b0>
    24fb:	63 74 6f 72          	movslq 0x72(%rdi,%rbp,2),%esi
    24ff:	20 68 61             	and    %ch,0x61(%rax)
    2502:	73 20                	jae    2524 <array.3088+0x164>
    2504:	62                   	(bad)  
    2505:	65 65 6e             	gs outsb %gs:(%rsi),(%dx)
    2508:	20 6e 6f             	and    %ch,0x6f(%rsi)
    250b:	74 69                	je     2576 <array.3088+0x1b6>
    250d:	66 69 65 64 20 61    	imul   $0x6120,0x64(%rbp),%sp
    2513:	6e                   	outsb  %ds:(%rsi),(%dx)
    2514:	64 20 77 69          	and    %dh,%fs:0x69(%rdi)
    2518:	6c                   	insb   (%dx),%es:(%rdi)
    2519:	6c                   	insb   (%dx),%es:(%rdi)
    251a:	20 76 65             	and    %dh,0x65(%rsi)
    251d:	72 69                	jb     2588 <array.3088+0x1c8>
    251f:	66 79 20             	data16 jns 2542 <array.3088+0x182>
    2522:	79 6f                	jns    2593 <array.3088+0x1d3>
    2524:	75 72                	jne    2598 <array.3088+0x1d8>
    2526:	20 73 6f             	and    %dh,0x6f(%rbx)
    2529:	6c                   	insb   (%dx),%es:(%rdi)
    252a:	75 74                	jne    25a0 <array.3088+0x1e0>
    252c:	69 6f 6e 2e 00 00 00 	imul   $0x2e,0x6e(%rdi),%ebp
    2533:	00 00                	add    %al,(%rax)
    2535:	00 00                	add    %al,(%rax)
    2537:	00 57 65             	add    %dl,0x65(%rdi)
    253a:	6c                   	insb   (%dx),%es:(%rdi)
    253b:	6c                   	insb   (%dx),%es:(%rdi)
    253c:	2e 2e 2e 00 4f 4b    	cs cs add %cl,%cs:0x4b(%rdi)
    2542:	2e 20 3a             	and    %bh,%cs:(%rdx)
    2545:	2d 29 00 49 6e       	sub    $0x6e490029,%eax
    254a:	76 61                	jbe    25ad <array.3088+0x1ed>
    254c:	6c                   	insb   (%dx),%es:(%rdi)
    254d:	69 64 20 70 68 61 73 	imul   $0x65736168,0x70(%rax,%riz,1),%esp
    2554:	65 
    2555:	25 73 0a 00 42       	and    $0x42000a73,%eax
    255a:	61                   	(bad)  
    255b:	64 20 68 6f          	and    %ch,%fs:0x6f(%rax)
    255f:	73 74                	jae    25d5 <array.3088+0x215>
    2561:	20 28                	and    %ch,(%rax)
    2563:	31 29                	xor    %ebp,(%rcx)
    2565:	2e 00 42 61          	add    %al,%cs:0x61(%rdx)
    2569:	64 20 68 6f          	and    %ch,%fs:0x6f(%rax)
    256d:	73 74                	jae    25e3 <array.3088+0x223>
    256f:	20 28                	and    %ch,(%rax)
    2571:	32 29                	xor    (%rcx),%ch
    2573:	2e 00 42 61          	add    %al,%cs:0x61(%rdx)
    2577:	64 20 68 6f          	and    %ch,%fs:0x6f(%rax)
    257b:	73 74                	jae    25f1 <array.3088+0x231>
    257d:	20 28                	and    %ch,(%rax)
    257f:	33 29                	xor    (%rcx),%ebp
    2581:	2e 00 32             	add    %dh,%cs:(%rdx)
    2584:	30 32                	xor    %dh,(%rdx)
    2586:	2e 31 32             	xor    %esi,%cs:(%rdx)
    2589:	30 2e                	xor    %ch,(%rsi)
    258b:	34 30                	xor    $0x30,%al
    258d:	2e 38 35 00 64 65 66 	cmp    %dh,%cs:0x66656400(%rip)        # 66658994 <_end+0x66454b24>
    2594:	75 73                	jne    2609 <array.3088+0x249>
    2596:	65 64 00 65 78       	gs add %ah,%fs:0x78(%rbp)
    259b:	70 6c                	jo     2609 <array.3088+0x249>
    259d:	6f                   	outsl  %ds:(%rsi),(%dx)
    259e:	64 65 64 00 73 6f    	fs gs add %dh,%fs:0x6f(%rbx)
    25a4:	63 6b 65             	movslq 0x65(%rbx),%ebp
    25a7:	74 20                	je     25c9 <array.3088+0x209>
    25a9:	65 72 72             	gs jb  261e <array.3088+0x25e>
    25ac:	6f                   	outsl  %ds:(%rsi),(%dx)
    25ad:	72 00                	jb     25af <array.3088+0x1ef>
    25af:	63 6f 6e             	movslq 0x6e(%rdi),%ebp
    25b2:	6e                   	outsb  %ds:(%rsi),(%dx)
    25b3:	65 63 74 20 65       	movslq %gs:0x65(%rax,%riz,1),%esi
    25b8:	72 72                	jb     262c <array.3088+0x26c>
    25ba:	6f                   	outsl  %ds:(%rsi),(%dx)
    25bb:	72 00                	jb     25bd <array.3088+0x1fd>
    25bd:	62                   	(bad)  
    25be:	6f                   	outsl  %ds:(%rsi),(%dx)
    25bf:	6d                   	insl   (%dx),%es:(%rdi)
    25c0:	62                   	(bad)  
    25c1:	2d 68 65 61 64       	sub    $0x64616568,%eax
    25c6:	65 72 3a             	gs jb  2603 <array.3088+0x243>
    25c9:	25 73 3a 25 64       	and    $0x64253a73,%eax
    25ce:	3a 25 73 3a 25 73    	cmp    0x73253a73(%rip),%ah        # 73256047 <_end+0x730521d7>
    25d4:	3a 25 64 0a 00 62    	cmp    0x62000a64(%rip),%ah        # 6200303e <_end+0x61dff1ce>
    25da:	6f                   	outsl  %ds:(%rsi),(%dx)
    25db:	6d                   	insl   (%dx),%es:(%rdi)
    25dc:	62                   	(bad)  
    25dd:	2d 73 74 72 69       	sub    $0x69727473,%eax
    25e2:	6e                   	outsb  %ds:(%rsi),(%dx)
    25e3:	67 3a 25 73 3a 25 64 	cmp    0x64253a73(%eip),%ah        # 6425605d <_end+0x640521ed>
    25ea:	3a 25 73 3a 25 64    	cmp    0x64253a73(%rip),%ah        # 64256063 <_end+0x640521f3>
    25f0:	3a 25 73 0a 00 73    	cmp    0x73000a73(%rip),%ah        # 73003069 <_end+0x72dff1f9>
    25f6:	6f                   	outsl  %ds:(%rsi),(%dx)
    25f7:	63 6b 65             	movslq 0x65(%rbx),%ebp
    25fa:	74 20                	je     261c <array.3088+0x25c>
    25fc:	77 72                	ja     2670 <array.3088+0x2b0>
    25fe:	69 74 65 20 65 72 72 	imul   $0x6f727265,0x20(%rbp,%riz,2),%esi
    2605:	6f 
    2606:	72 00                	jb     2608 <array.3088+0x248>
    2608:	45 52                	rex.RB push %r10
    260a:	52                   	push   %rdx
    260b:	4f 52                	rex.WRXB push %r10
    260d:	3a 20                	cmp    (%rax),%ah
    260f:	64 75 70             	fs jne 2682 <array.3088+0x2c2>
    2612:	28 30                	sub    %dh,(%rax)
    2614:	29 20                	sub    %esp,(%rax)
    2616:	65 72 72             	gs jb  268b <array.3088+0x2cb>
    2619:	6f                   	outsl  %ds:(%rsi),(%dx)
    261a:	72 00                	jb     261c <array.3088+0x25c>
    261c:	45 52                	rex.RB push %r10
    261e:	52                   	push   %rdx
    261f:	4f 52                	rex.WRXB push %r10
    2621:	3a 20                	cmp    (%rax),%ah
    2623:	63 6c 6f 73          	movslq 0x73(%rdi,%rbp,2),%ebp
    2627:	65 20 65 72          	and    %ah,%gs:0x72(%rbp)
    262b:	72 6f                	jb     269c <array.3088+0x2dc>
    262d:	72 00                	jb     262f <array.3088+0x26f>
    262f:	45 52                	rex.RB push %r10
    2631:	52                   	push   %rdx
    2632:	4f 52                	rex.WRXB push %r10
    2634:	3a 20                	cmp    (%rax),%ah
    2636:	74 6d                	je     26a5 <array.3088+0x2e5>
    2638:	70 66                	jo     26a0 <array.3088+0x2e0>
    263a:	69 6c 65 20 65 72 72 	imul   $0x6f727265,0x20(%rbp,%riz,2),%ebp
    2641:	6f 
    2642:	72 00                	jb     2644 <array.3088+0x284>
    2644:	53                   	push   %rbx
    2645:	75 62                	jne    26a9 <array.3088+0x2e9>
    2647:	6a 65                	pushq  $0x65
    2649:	63 74 3a 20          	movslq 0x20(%rdx,%rdi,1),%esi
    264d:	42 6f                	rex.X outsl %ds:(%rsi),(%dx)
    264f:	6d                   	insl   (%dx),%es:(%rdi)
    2650:	62                   	(bad)  
    2651:	20 6e 6f             	and    %ch,0x6f(%rsi)
    2654:	74 69                	je     26bf <array.3088+0x2ff>
    2656:	66 69 63 61 74 69    	imul   $0x6974,0x61(%rbx),%sp
    265c:	6f                   	outsl  %ds:(%rsi),(%dx)
    265d:	6e                   	outsb  %ds:(%rsi),(%dx)
    265e:	0a 00                	or     (%rax),%al
    2660:	6c                   	insb   (%dx),%es:(%rdi)
    2661:	6f                   	outsl  %ds:(%rsi),(%dx)
    2662:	63 61 6c             	movslq 0x6c(%rcx),%esp
    2665:	68 6f 73 74 00       	pushq  $0x74736f
    266a:	69 63 73 62 6f 6d 62 	imul   $0x626d6f62,0x73(%rbx),%esp
    2671:	00 2f                	add    %ch,(%rdi)
    2673:	75 73                	jne    26e8 <array.3088+0x328>
    2675:	72 2f                	jb     26a6 <array.3088+0x2e6>
    2677:	73 62                	jae    26db <array.3088+0x31b>
    2679:	69 6e 2f 73 65 6e 64 	imul   $0x646e6573,0x2f(%rsi),%ebp
    2680:	6d                   	insl   (%dx),%es:(%rdi)
    2681:	61                   	(bad)  
    2682:	69 6c 20 2d 62 6d 00 	imul   $0x25006d62,0x2d(%rax,%riz,1),%ebp
    2689:	25 
    268a:	73 20                	jae    26ac <array.3088+0x2ec>
    268c:	25 73 40 25 73       	and    $0x73254073,%eax
    2691:	00 45 52             	add    %al,0x52(%rbp)
    2694:	52                   	push   %rdx
    2695:	4f 52                	rex.WRXB push %r10
    2697:	3a 20                	cmp    (%rax),%ah
    2699:	6e                   	outsb  %ds:(%rsi),(%dx)
    269a:	6f                   	outsl  %ds:(%rsi),(%dx)
    269b:	74 69                	je     2706 <array.3088+0x346>
    269d:	66 69 63 61 74 69    	imul   $0x6974,0x61(%rbx),%sp
    26a3:	6f                   	outsl  %ds:(%rsi),(%dx)
    26a4:	6e                   	outsb  %ds:(%rsi),(%dx)
    26a5:	20 65 72             	and    %ah,0x72(%rbp)
    26a8:	72 6f                	jb     2719 <array.3088+0x359>
    26aa:	72 00                	jb     26ac <array.3088+0x2ec>
    26ac:	45 52                	rex.RB push %r10
    26ae:	52                   	push   %rdx
    26af:	4f 52                	rex.WRXB push %r10
    26b1:	3a 20                	cmp    (%rax),%ah
    26b3:	66 63 6c 6f 73       	movslq 0x73(%rdi,%rbp,2),%bp
    26b8:	65 28 74 6d 70       	sub    %dh,%gs:0x70(%rbp,%rbp,2)
    26bd:	29 20                	sub    %esp,(%rax)
    26bf:	65 72 72             	gs jb  2734 <array.3088+0x374>
    26c2:	6f                   	outsl  %ds:(%rsi),(%dx)
    26c3:	72 00                	jb     26c5 <array.3088+0x305>
    26c5:	45 52                	rex.RB push %r10
    26c7:	52                   	push   %rdx
    26c8:	4f 52                	rex.WRXB push %r10
    26ca:	3a 20                	cmp    (%rax),%ah
    26cc:	64 75 70             	fs jne 273f <array.3088+0x37f>
    26cf:	28 74 6d 70          	sub    %dh,0x70(%rbp,%rbp,2)
    26d3:	73 74                	jae    2749 <array.3088+0x389>
    26d5:	64 69 6e 29 20 65 72 	imul   $0x72726520,%fs:0x29(%rsi),%ebp
    26dc:	72 
    26dd:	6f                   	outsl  %ds:(%rsi),(%dx)
    26de:	72 00                	jb     26e0 <array.3088+0x320>
    26e0:	45 52                	rex.RB push %r10
    26e2:	52                   	push   %rdx
    26e3:	4f 52                	rex.WRXB push %r10
    26e5:	3a 20                	cmp    (%rax),%ah
    26e7:	63 6c 6f 73          	movslq 0x73(%rdi,%rbp,2),%ebp
    26eb:	65 28 74 6d 70       	sub    %dh,%gs:0x70(%rbp,%rbp,2)
    26f0:	73 74                	jae    2766 <array.3088+0x3a6>
    26f2:	64 69 6e 29 00 0a 42 	imul   $0x4f420a00,%fs:0x29(%rsi),%ebp
    26f9:	4f 
    26fa:	4f                   	rex.WRXB
    26fb:	4d 21 21             	and    %r12,(%r9)
    26fe:	21 00                	and    %eax,(%rax)
    2700:	54                   	push   %rsp
    2701:	68 65 20 62 6f       	pushq  $0x6f622065
    2706:	6d                   	insl   (%dx),%es:(%rdi)
    2707:	62                   	(bad)  
    2708:	20 68 61             	and    %ch,0x61(%rax)
    270b:	73 20                	jae    272d <array.3088+0x36d>
    270d:	62                   	(bad)  
    270e:	6c                   	insb   (%dx),%es:(%rdi)
    270f:	6f                   	outsl  %ds:(%rsi),(%dx)
    2710:	77 6e                	ja     2780 <__GNU_EH_FRAME_HDR>
    2712:	20 75 70             	and    %dh,0x70(%rbp)
    2715:	2e 00 25 64 20 25 64 	add    %ah,%cs:0x64252064(%rip)        # 64254780 <_end+0x64050910>
    271c:	20 25 64 20 25 64    	and    %ah,0x64252064(%rip)        # 64254786 <_end+0x64050916>
    2722:	20 25 64 20 25 64    	and    %ah,0x64252064(%rip)        # 6425478c <_end+0x6405091c>
    2728:	00 45 72             	add    %al,0x72(%rbp)
    272b:	72 6f                	jb     279c <__GNU_EH_FRAME_HDR+0x1c>
    272d:	72 3a                	jb     2769 <array.3088+0x3a9>
    272f:	20 50 72             	and    %dl,0x72(%rax)
    2732:	65 6d                	gs insl (%dx),%es:(%rdi)
    2734:	61                   	(bad)  
    2735:	74 75                	je     27ac <__GNU_EH_FRAME_HDR+0x2c>
    2737:	72 65                	jb     279e <__GNU_EH_FRAME_HDR+0x1e>
    2739:	20 45 4f             	and    %al,0x4f(%rbp)
    273c:	46 20 6f 6e          	rex.RX and %r13b,0x6e(%rdi)
    2740:	20 73 74             	and    %dh,0x74(%rbx)
    2743:	64 69 6e 00 47 52 41 	imul   $0x44415247,%fs:0x0(%rsi),%ebp
    274a:	44 
    274b:	45 5f                	rex.RB pop %r15
    274d:	42                   	rex.X
    274e:	4f                   	rex.WRXB
    274f:	4d                   	rex.WRB
    2750:	42 00 45 72          	rex.X add %al,0x72(%rbp)
    2754:	72 6f                	jb     27c5 <__GNU_EH_FRAME_HDR+0x45>
    2756:	72 3a                	jb     2792 <__GNU_EH_FRAME_HDR+0x12>
    2758:	20 49 6e             	and    %cl,0x6e(%rcx)
    275b:	70 75                	jo     27d2 <__GNU_EH_FRAME_HDR+0x52>
    275d:	74 20                	je     277f <array.3088+0x3bf>
    275f:	6c                   	insb   (%dx),%es:(%rdi)
    2760:	69 6e 65 20 74 6f 6f 	imul   $0x6f6f7420,0x65(%rsi),%ebp
    2767:	20 6c 6f 6e          	and    %ch,0x6e(%rdi,%rbp,2)
    276b:	67 00 25 64 20 25 73 	add    %ah,0x73252064(%eip)        # 732547d6 <_end+0x73050966>
    2772:	00 61 75             	add    %ah,0x75(%rcx)
    2775:	73 74                	jae    27eb <__GNU_EH_FRAME_HDR+0x6b>
    2777:	69 6e 70 6f 77 65 72 	imul   $0x7265776f,0x70(%rsi),%ebp
    277e:	73 00                	jae    2780 <__GNU_EH_FRAME_HDR>

Disassembly of section .eh_frame_hdr:

0000000000002780 <__GNU_EH_FRAME_HDR>:
    2780:	01 1b                	add    %ebx,(%rbx)
    2782:	03 3b                	add    (%rbx),%edi
    2784:	fc                   	cld    
    2785:	00 00                	add    %al,(%rax)
    2787:	00 1e                	add    %bl,(%rsi)
    2789:	00 00                	add    %al,(%rax)
    278b:	00 30                	add    %dh,(%rax)
    278d:	e7 ff                	out    %eax,$0xff
    278f:	ff 48 01             	decl   0x1(%rax)
    2792:	00 00                	add    %al,(%rax)
    2794:	40 e9 ff ff 70 01    	rex jmpq 1712799 <_end+0x150e929>
    279a:	00 00                	add    %al,(%rax)
    279c:	50                   	push   %rax
    279d:	e9 ff ff 18 01       	jmpq   11927a1 <_end+0xf8e931>
    27a2:	00 00                	add    %al,(%rax)
    27a4:	80 ea ff             	sub    $0xff,%dl
    27a7:	ff 88 01 00 00 d0    	decl   -0x2fffffff(%rax)
    27ad:	eb ff                	jmp    27ae <__GNU_EH_FRAME_HDR+0x2e>
    27af:	ff a8 01 00 00 f0    	ljmp   *-0xfffffff(%rax)
    27b5:	eb ff                	jmp    27b6 <__GNU_EH_FRAME_HDR+0x36>
    27b7:	ff c8                	dec    %eax
    27b9:	01 00                	add    %eax,(%rax)
    27bb:	00 2b                	add    %ch,(%rbx)
    27bd:	ec                   	in     (%dx),%al
    27be:	ff                   	(bad)  
    27bf:	ff f0                	push   %rax
    27c1:	01 00                	add    %eax,(%rax)
    27c3:	00 c3                	add    %al,%bl
    27c5:	ec                   	in     (%dx),%al
    27c6:	ff                   	(bad)  
    27c7:	ff 08                	decl   (%rax)
    27c9:	02 00                	add    (%rax),%al
    27cb:	00 de                	add    %bl,%dh
    27cd:	ec                   	in     (%dx),%al
    27ce:	ff                   	(bad)  
    27cf:	ff 28                	ljmp   *(%rax)
    27d1:	02 00                	add    (%rax),%al
    27d3:	00 25 ed ff ff 48    	add    %ah,0x48ffffed(%rip)        # 490027c6 <_end+0x48dfe956>
    27d9:	02 00                	add    (%rax),%al
    27db:	00 9d ed ff ff 68    	add    %bl,0x68ffffed(%rbp)
    27e1:	02 00                	add    (%rax),%al
    27e3:	00 88 ee ff ff a8    	add    %cl,-0x57000012(%rax)
    27e9:	02 00                	add    (%rax),%al
    27eb:	00 c5                	add    %al,%ch
    27ed:	ee                   	out    %al,(%dx)
    27ee:	ff                   	(bad)  
    27ef:	ff c8                	dec    %eax
    27f1:	02 00                	add    (%rax),%al
    27f3:	00 1c ef             	add    %bl,(%rdi,%rbp,8)
    27f6:	ff                   	(bad)  
    27f7:	ff                   	(bad)  
    27f8:	e8 02 00 00 73       	callq  730027ff <_end+0x72dfe98f>
    27fd:	ef                   	out    %eax,(%dx)
    27fe:	ff                   	(bad)  
    27ff:	ff 00                	incl   (%rax)
    2801:	03 00                	add    (%rax),%eax
    2803:	00 95 ef ff ff 18    	add    %dl,0x18ffffef(%rbp)
    2809:	03 00                	add    (%rax),%eax
    280b:	00 b3 ef ff ff 30    	add    %dh,0x30ffffef(%rbx)
    2811:	03 00                	add    (%rax),%eax
    2813:	00 1a                	add    %bl,(%rdx)
    2815:	f0 ff                	lock (bad) 
    2817:	ff 60 03             	jmpq   *0x3(%rax)
    281a:	00 00                	add    %al,(%rax)
    281c:	e5 f0                	in     $0xf0,%eax
    281e:	ff                   	(bad)  
    281f:	ff 98 03 00 00 17    	lcall  *0x17000003(%rax)
    2825:	f1                   	icebp  
    2826:	ff                   	(bad)  
    2827:	ff b0 03 00 00 52    	pushq  0x52000003(%rax)
    282d:	f1                   	icebp  
    282e:	ff                   	(bad)  
    282f:	ff                   	(bad)  
    2830:	d8 03                	fadds  (%rbx)
    2832:	00 00                	add    %al,(%rax)
    2834:	a0 f1 ff ff 00 04 00 	movabs 0x400fffff1,%al
    283b:	00 00 
    283d:	f2 ff                	repnz (bad) 
    283f:	ff 40 04             	incl   0x4(%rax)
    2842:	00 00                	add    %al,(%rax)
    2844:	43 f5                	rex.XB cmc 
    2846:	ff                   	(bad)  
    2847:	ff a8 04 00 00 c3    	ljmp   *-0x3cfffffc(%rax)
    284d:	f7 ff                	idiv   %edi
    284f:	ff 10                	callq  *(%rax)
    2851:	05 00 00 ff f7       	add    $0xf7ff0000,%eax
    2856:	ff                   	(bad)  
    2857:	ff 28                	ljmp   *(%rax)
    2859:	05 00 00 40 f8       	add    $0xf8400000,%eax
    285e:	ff                   	(bad)  
    285f:	ff 50 05             	callq  *0x5(%rax)
    2862:	00 00                	add    %al,(%rax)
    2864:	41 f9                	rex.B stc 
    2866:	ff                   	(bad)  
    2867:	ff 70 05             	pushq  0x5(%rax)
    286a:	00 00                	add    %al,(%rax)
    286c:	e0 f9                	loopne 2867 <__GNU_EH_FRAME_HDR+0xe7>
    286e:	ff                   	(bad)  
    286f:	ff 90 05 00 00 50    	callq  *0x50000005(%rax)
    2875:	fa                   	cli    
    2876:	ff                   	(bad)  
    2877:	ff                   	(bad)  
    2878:	d8                   	.byte 0xd8
    2879:	05                   	.byte 0x5
	...

Disassembly of section .eh_frame:

0000000000002880 <__FRAME_END__-0x4f0>:
    2880:	14 00                	adc    $0x0,%al
    2882:	00 00                	add    %al,(%rax)
    2884:	00 00                	add    %al,(%rax)
    2886:	00 00                	add    %al,(%rax)
    2888:	01 7a 52             	add    %edi,0x52(%rdx)
    288b:	00 01                	add    %al,(%rcx)
    288d:	78 10                	js     289f <__GNU_EH_FRAME_HDR+0x11f>
    288f:	01 1b                	add    %ebx,(%rbx)
    2891:	0c 07                	or     $0x7,%al
    2893:	08 90 01 07 10 14    	or     %dl,0x14100701(%rax)
    2899:	00 00                	add    %al,(%rax)
    289b:	00 1c 00             	add    %bl,(%rax,%rax,1)
    289e:	00 00                	add    %al,(%rax)
    28a0:	30 e8                	xor    %ch,%al
    28a2:	ff                   	(bad)  
    28a3:	ff 2b                	ljmp   *(%rbx)
	...
    28ad:	00 00                	add    %al,(%rax)
    28af:	00 14 00             	add    %dl,(%rax,%rax,1)
    28b2:	00 00                	add    %al,(%rax)
    28b4:	00 00                	add    %al,(%rax)
    28b6:	00 00                	add    %al,(%rax)
    28b8:	01 7a 52             	add    %edi,0x52(%rdx)
    28bb:	00 01                	add    %al,(%rcx)
    28bd:	78 10                	js     28cf <__GNU_EH_FRAME_HDR+0x14f>
    28bf:	01 1b                	add    %ebx,(%rbx)
    28c1:	0c 07                	or     $0x7,%al
    28c3:	08 90 01 00 00 24    	or     %dl,0x24000001(%rax)
    28c9:	00 00                	add    %al,(%rax)
    28cb:	00 1c 00             	add    %bl,(%rax,%rax,1)
    28ce:	00 00                	add    %al,(%rax)
    28d0:	e0 e5                	loopne 28b7 <__GNU_EH_FRAME_HDR+0x137>
    28d2:	ff                   	(bad)  
    28d3:	ff 10                	callq  *(%rax)
    28d5:	02 00                	add    (%rax),%al
    28d7:	00 00                	add    %al,(%rax)
    28d9:	0e                   	(bad)  
    28da:	10 46 0e             	adc    %al,0xe(%rsi)
    28dd:	18 4a 0f             	sbb    %cl,0xf(%rdx)
    28e0:	0b 77 08             	or     0x8(%rdi),%esi
    28e3:	80 00 3f             	addb   $0x3f,(%rax)
    28e6:	1a 3b                	sbb    (%rbx),%bh
    28e8:	2a 33                	sub    (%rbx),%dh
    28ea:	24 22                	and    $0x22,%al
    28ec:	00 00                	add    %al,(%rax)
    28ee:	00 00                	add    %al,(%rax)
    28f0:	14 00                	adc    $0x0,%al
    28f2:	00 00                	add    %al,(%rax)
    28f4:	44 00 00             	add    %r8b,(%rax)
    28f7:	00 c8                	add    %cl,%al
    28f9:	e7 ff                	out    %eax,$0xff
    28fb:	ff 08                	decl   (%rax)
	...
    2905:	00 00                	add    %al,(%rax)
    2907:	00 1c 00             	add    %bl,(%rax,%rax,1)
    290a:	00 00                	add    %al,(%rax)
    290c:	5c                   	pop    %rsp
    290d:	00 00                	add    %al,(%rax)
    290f:	00 f0                	add    %dh,%al
    2911:	e8 ff ff 50 01       	callq  1512915 <_end+0x130eaa5>
    2916:	00 00                	add    %al,(%rax)
    2918:	00 41 0e             	add    %al,0xe(%rcx)
    291b:	10 83 02 03 00 01    	adc    %al,0x1000302(%rbx)
    2921:	0a 0e                	or     (%rsi),%cl
    2923:	08 41 0b             	or     %al,0xb(%rcx)
    2926:	00 00                	add    %al,(%rax)
    2928:	1c 00                	sbb    $0x0,%al
    292a:	00 00                	add    %al,(%rax)
    292c:	7c 00                	jl     292e <__GNU_EH_FRAME_HDR+0x1ae>
    292e:	00 00                	add    %al,(%rax)
    2930:	20 ea                	and    %ch,%dl
    2932:	ff                   	(bad)  
    2933:	ff 20                	jmpq   *(%rax)
    2935:	00 00                	add    %al,(%rax)
    2937:	00 00                	add    %al,(%rax)
    2939:	44 0e                	rex.R (bad) 
    293b:	10 54 0a 0e          	adc    %dl,0xe(%rdx,%rcx,1)
    293f:	08 41 0b             	or     %al,0xb(%rcx)
    2942:	00 00                	add    %al,(%rax)
    2944:	00 00                	add    %al,(%rax)
    2946:	00 00                	add    %al,(%rax)
    2948:	24 00                	and    $0x0,%al
    294a:	00 00                	add    %al,(%rax)
    294c:	9c                   	pushfq 
    294d:	00 00                	add    %al,(%rax)
    294f:	00 20                	add    %ah,(%rax)
    2951:	ea                   	(bad)  
    2952:	ff                   	(bad)  
    2953:	ff                   	(bad)  
    2954:	3b 00                	cmp    (%rax),%eax
    2956:	00 00                	add    %al,(%rax)
    2958:	00 41 0e             	add    %al,0xe(%rcx)
    295b:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    2961:	83 03 44             	addl   $0x44,(%rbx)
    2964:	0e                   	(bad)  
    2965:	40 72 0e             	rex jb 2976 <__GNU_EH_FRAME_HDR+0x1f6>
    2968:	18 41 0e             	sbb    %al,0xe(%rcx)
    296b:	10 41 0e             	adc    %al,0xe(%rcx)
    296e:	08 00                	or     %al,(%rax)
    2970:	14 00                	adc    $0x0,%al
    2972:	00 00                	add    %al,(%rax)
    2974:	c4                   	(bad)  
    2975:	00 00                	add    %al,(%rax)
    2977:	00 33                	add    %dh,(%rbx)
    2979:	ea                   	(bad)  
    297a:	ff                   	(bad)  
    297b:	ff 98 00 00 00 00    	lcall  *0x0(%rax)
    2981:	44 0e                	rex.R (bad) 
    2983:	20 02                	and    %al,(%rdx)
    2985:	93                   	xchg   %eax,%ebx
    2986:	0e                   	(bad)  
    2987:	08 1c 00             	or     %bl,(%rax,%rax,1)
    298a:	00 00                	add    %al,(%rax)
    298c:	dc 00                	faddl  (%rax)
    298e:	00 00                	add    %al,(%rax)
    2990:	b3 ea                	mov    $0xea,%bl
    2992:	ff                   	(bad)  
    2993:	ff 1b                	lcall  *(%rbx)
    2995:	00 00                	add    %al,(%rax)
    2997:	00 00                	add    %al,(%rax)
    2999:	4b 0e                	rex.WXB (bad) 
    299b:	10 83 02 4e c3 0e    	adc    %al,0xec34e02(%rbx)
    29a1:	08 00                	or     %al,(%rax)
    29a3:	00 00                	add    %al,(%rax)
    29a5:	00 00                	add    %al,(%rax)
    29a7:	00 1c 00             	add    %bl,(%rax,%rax,1)
    29aa:	00 00                	add    %al,(%rax)
    29ac:	fc                   	cld    
    29ad:	00 00                	add    %al,(%rax)
    29af:	00 ae ea ff ff 47    	add    %ch,0x47ffffea(%rsi)
    29b5:	00 00                	add    %al,(%rax)
    29b7:	00 00                	add    %al,(%rax)
    29b9:	44 0e                	rex.R (bad) 
    29bb:	20 79 0a             	and    %bh,0xa(%rcx)
    29be:	0e                   	(bad)  
    29bf:	08 41 0b             	or     %al,0xb(%rcx)
    29c2:	00 00                	add    %al,(%rax)
    29c4:	00 00                	add    %al,(%rax)
    29c6:	00 00                	add    %al,(%rax)
    29c8:	1c 00                	sbb    $0x0,%al
    29ca:	00 00                	add    %al,(%rax)
    29cc:	1c 01                	sbb    $0x1,%al
    29ce:	00 00                	add    %al,(%rax)
    29d0:	d5                   	(bad)  
    29d1:	ea                   	(bad)  
    29d2:	ff                   	(bad)  
    29d3:	ff                   	(bad)  
    29d4:	78 00                	js     29d6 <__GNU_EH_FRAME_HDR+0x256>
    29d6:	00 00                	add    %al,(%rax)
    29d8:	00 44 0e 20          	add    %al,0x20(%rsi,%rcx,1)
    29dc:	02 6c 0a 0e          	add    0xe(%rdx,%rcx,1),%ch
    29e0:	08 41 0b             	or     %al,0xb(%rcx)
    29e3:	00 00                	add    %al,(%rax)
    29e5:	00 00                	add    %al,(%rax)
    29e7:	00 3c 00             	add    %bh,(%rax,%rax,1)
    29ea:	00 00                	add    %al,(%rax)
    29ec:	3c 01                	cmp    $0x1,%al
    29ee:	00 00                	add    %al,(%rax)
    29f0:	2d eb ff ff eb       	sub    $0xebffffeb,%eax
    29f5:	00 00                	add    %al,(%rax)
    29f7:	00 00                	add    %al,(%rax)
    29f9:	42 0e                	rex.X (bad) 
    29fb:	10 8d 02 42 0e 18    	adc    %cl,0x180e4202(%rbp)
    2a01:	8c 03                	mov    %es,(%rbx)
    2a03:	41 0e                	rex.B (bad) 
    2a05:	20 86 04 41 0e 28    	and    %al,0x280e4104(%rsi)
    2a0b:	83 05 44 0e 80 01 02 	addl   $0x2,0x1800e44(%rip)        # 1803856 <_end+0x15ff9e6>
    2a12:	da 0e                	fimull (%rsi)
    2a14:	28 41 0e             	sub    %al,0xe(%rcx)
    2a17:	20 41 0e             	and    %al,0xe(%rcx)
    2a1a:	18 42 0e             	sbb    %al,0xe(%rdx)
    2a1d:	10 42 0e             	adc    %al,0xe(%rdx)
    2a20:	08 00                	or     %al,(%rax)
    2a22:	00 00                	add    %al,(%rax)
    2a24:	00 00                	add    %al,(%rax)
    2a26:	00 00                	add    %al,(%rax)
    2a28:	1c 00                	sbb    $0x0,%al
    2a2a:	00 00                	add    %al,(%rax)
    2a2c:	7c 01                	jl     2a2f <__GNU_EH_FRAME_HDR+0x2af>
    2a2e:	00 00                	add    %al,(%rax)
    2a30:	d8 eb                	fsubr  %st(3),%st
    2a32:	ff                   	(bad)  
    2a33:	ff                   	(bad)  
    2a34:	3d 00 00 00 00       	cmp    $0x0,%eax
    2a39:	49 0e                	rex.WB (bad) 
    2a3b:	10 60 0a             	adc    %ah,0xa(%rax)
    2a3e:	0e                   	(bad)  
    2a3f:	08 41 0b             	or     %al,0xb(%rcx)
    2a42:	4d 0e                	rex.WRB (bad) 
    2a44:	08 00                	or     %al,(%rax)
    2a46:	00 00                	add    %al,(%rax)
    2a48:	1c 00                	sbb    $0x0,%al
    2a4a:	00 00                	add    %al,(%rax)
    2a4c:	9c                   	pushfq 
    2a4d:	01 00                	add    %eax,(%rax)
    2a4f:	00 f5                	add    %dh,%ch
    2a51:	eb ff                	jmp    2a52 <__GNU_EH_FRAME_HDR+0x2d2>
    2a53:	ff 57 00             	callq  *0x0(%rdi)
    2a56:	00 00                	add    %al,(%rax)
    2a58:	00 41 0e             	add    %al,0xe(%rcx)
    2a5b:	10 83 02 02 4e 0a    	adc    %al,0xa4e0202(%rbx)
    2a61:	0e                   	(bad)  
    2a62:	08 41 0b             	or     %al,0xb(%rcx)
    2a65:	00 00                	add    %al,(%rax)
    2a67:	00 14 00             	add    %dl,(%rax,%rax,1)
    2a6a:	00 00                	add    %al,(%rax)
    2a6c:	bc 01 00 00 2c       	mov    $0x2c000001,%esp
    2a71:	ec                   	in     (%dx),%al
    2a72:	ff                   	(bad)  
    2a73:	ff 57 00             	callq  *0x0(%rdi)
    2a76:	00 00                	add    %al,(%rax)
    2a78:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    2a7c:	00 00                	add    %al,(%rax)
    2a7e:	00 00                	add    %al,(%rax)
    2a80:	14 00                	adc    $0x0,%al
    2a82:	00 00                	add    %al,(%rax)
    2a84:	d4                   	(bad)  
    2a85:	01 00                	add    %eax,(%rax)
    2a87:	00 6b ec             	add    %ch,-0x14(%rbx)
    2a8a:	ff                   	(bad)  
    2a8b:	ff 22                	jmpq   *(%rdx)
    2a8d:	00 00                	add    %al,(%rax)
    2a8f:	00 00                	add    %al,(%rax)
    2a91:	44 0e                	rex.R (bad) 
    2a93:	10 00                	adc    %al,(%rax)
    2a95:	00 00                	add    %al,(%rax)
    2a97:	00 14 00             	add    %dl,(%rax,%rax,1)
    2a9a:	00 00                	add    %al,(%rax)
    2a9c:	ec                   	in     (%dx),%al
    2a9d:	01 00                	add    %eax,(%rax)
    2a9f:	00 75 ec             	add    %dh,-0x14(%rbp)
    2aa2:	ff                   	(bad)  
    2aa3:	ff 1e                	lcall  *(%rsi)
	...
    2aad:	00 00                	add    %al,(%rax)
    2aaf:	00 2c 00             	add    %ch,(%rax,%rax,1)
    2ab2:	00 00                	add    %al,(%rax)
    2ab4:	04 02                	add    $0x2,%al
    2ab6:	00 00                	add    %al,(%rax)
    2ab8:	7b ec                	jnp    2aa6 <__GNU_EH_FRAME_HDR+0x326>
    2aba:	ff                   	(bad)  
    2abb:	ff 67 00             	jmpq   *0x0(%rdi)
    2abe:	00 00                	add    %al,(%rax)
    2ac0:	00 42 0e             	add    %al,0xe(%rdx)
    2ac3:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
    2aca:	03 41 0e             	add    0xe(%rcx),%eax
    2acd:	20 83 04 63 0a 0e    	and    %al,0xe0a6304(%rbx)
    2ad3:	18 41 0e             	sbb    %al,0xe(%rcx)
    2ad6:	10 42 0e             	adc    %al,0xe(%rdx)
    2ad9:	08 41 0b             	or     %al,0xb(%rcx)
    2adc:	00 00                	add    %al,(%rax)
    2ade:	00 00                	add    %al,(%rax)
    2ae0:	34 00                	xor    $0x0,%al
    2ae2:	00 00                	add    %al,(%rax)
    2ae4:	34 02                	xor    $0x2,%al
    2ae6:	00 00                	add    %al,(%rax)
    2ae8:	b2 ec                	mov    $0xec,%dl
    2aea:	ff                   	(bad)  
    2aeb:	ff cb                	dec    %ebx
    2aed:	00 00                	add    %al,(%rax)
    2aef:	00 00                	add    %al,(%rax)
    2af1:	42 0e                	rex.X (bad) 
    2af3:	10 8c 02 41 0e 18 86 	adc    %cl,-0x79e7f1bf(%rdx,%rax,1)
    2afa:	03 41 0e             	add    0xe(%rcx),%eax
    2afd:	20 83 04 44 0e 30    	and    %al,0x300e4404(%rbx)
    2b03:	02 7c 0a 0e          	add    0xe(%rdx,%rcx,1),%bh
    2b07:	20 41 0e             	and    %al,0xe(%rcx)
    2b0a:	18 41 0e             	sbb    %al,0xe(%rcx)
    2b0d:	10 42 0e             	adc    %al,0xe(%rdx)
    2b10:	08 41 0b             	or     %al,0xb(%rcx)
    2b13:	00 00                	add    %al,(%rax)
    2b15:	00 00                	add    %al,(%rax)
    2b17:	00 14 00             	add    %dl,(%rax,%rax,1)
    2b1a:	00 00                	add    %al,(%rax)
    2b1c:	6c                   	insb   (%dx),%es:(%rdi)
    2b1d:	02 00                	add    (%rax),%al
    2b1f:	00 45 ed             	add    %al,-0x13(%rbp)
    2b22:	ff                   	(bad)  
    2b23:	ff 32                	pushq  (%rdx)
    2b25:	00 00                	add    %al,(%rax)
    2b27:	00 00                	add    %al,(%rax)
    2b29:	44 0e                	rex.R (bad) 
    2b2b:	10 6d 0e             	adc    %ch,0xe(%rbp)
    2b2e:	08 00                	or     %al,(%rax)
    2b30:	24 00                	and    $0x0,%al
    2b32:	00 00                	add    %al,(%rax)
    2b34:	84 02                	test   %al,(%rdx)
    2b36:	00 00                	add    %al,(%rax)
    2b38:	5f                   	pop    %rdi
    2b39:	ed                   	in     (%dx),%eax
    2b3a:	ff                   	(bad)  
    2b3b:	ff                   	(bad)  
    2b3c:	3b 00                	cmp    (%rax),%eax
    2b3e:	00 00                	add    %al,(%rax)
    2b40:	00 41 0e             	add    %al,0xe(%rcx)
    2b43:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    2b49:	83 03 44             	addl   $0x44,(%rbx)
    2b4c:	0e                   	(bad)  
    2b4d:	20 72 0e             	and    %dh,0xe(%rdx)
    2b50:	18 41 0e             	sbb    %al,0xe(%rcx)
    2b53:	10 41 0e             	adc    %al,0xe(%rcx)
    2b56:	08 00                	or     %al,(%rax)
    2b58:	24 00                	and    $0x0,%al
    2b5a:	00 00                	add    %al,(%rax)
    2b5c:	ac                   	lods   %ds:(%rsi),%al
    2b5d:	02 00                	add    (%rax),%al
    2b5f:	00 72 ed             	add    %dh,-0x13(%rdx)
    2b62:	ff                   	(bad)  
    2b63:	ff 4e 00             	decl   0x0(%rsi)
    2b66:	00 00                	add    %al,(%rax)
    2b68:	00 41 0e             	add    %al,0xe(%rcx)
    2b6b:	10 86 02 41 0e 18    	adc    %al,0x180e4102(%rsi)
    2b71:	83 03 44             	addl   $0x44,(%rbx)
    2b74:	0e                   	(bad)  
    2b75:	20 02                	and    %al,(%rdx)
    2b77:	45 0e                	rex.RB (bad) 
    2b79:	18 41 0e             	sbb    %al,0xe(%rcx)
    2b7c:	10 41 0e             	adc    %al,0xe(%rcx)
    2b7f:	08 3c 00             	or     %bh,(%rax,%rax,1)
    2b82:	00 00                	add    %al,(%rax)
    2b84:	d4                   	(bad)  
    2b85:	02 00                	add    (%rax),%al
    2b87:	00 98 ed ff ff 60    	add    %bl,0x60ffffed(%rax)
    2b8d:	00 00                	add    %al,(%rax)
    2b8f:	00 00                	add    %al,(%rax)
    2b91:	42 0e                	rex.X (bad) 
    2b93:	10 8e 02 42 0e 18    	adc    %cl,0x180e4202(%rsi)
    2b99:	8d 03                	lea    (%rbx),%eax
    2b9b:	42 0e                	rex.X (bad) 
    2b9d:	20 8c 04 41 0e 28 86 	and    %cl,-0x79d7f1bf(%rsp,%rax,1)
    2ba4:	05 41 0e 30 83       	add    $0x83300e41,%eax
    2ba9:	06                   	(bad)  
    2baa:	02 47 0a             	add    0xa(%rdi),%al
    2bad:	0e                   	(bad)  
    2bae:	28 41 0e             	sub    %al,0xe(%rcx)
    2bb1:	20 42 0e             	and    %al,0xe(%rdx)
    2bb4:	18 42 0e             	sbb    %al,0xe(%rdx)
    2bb7:	10 42 0e             	adc    %al,0xe(%rdx)
    2bba:	08 41 0b             	or     %al,0xb(%rcx)
    2bbd:	00 00                	add    %al,(%rax)
    2bbf:	00 64 00 00          	add    %ah,0x0(%rax,%rax,1)
    2bc3:	00 14 03             	add    %dl,(%rbx,%rax,1)
    2bc6:	00 00                	add    %al,(%rax)
    2bc8:	b8 ed ff ff 43       	mov    $0x43ffffed,%eax
    2bcd:	03 00                	add    (%rax),%eax
    2bcf:	00 00                	add    %al,(%rax)
    2bd1:	42 0e                	rex.X (bad) 
    2bd3:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    2bd9:	8e 03                	mov    (%rbx),%es
    2bdb:	42 0e                	rex.X (bad) 
    2bdd:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    2be3:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86303a2a <_end+0xffffffff860ffbba>
    2be9:	06                   	(bad)  
    2bea:	41 0e                	rex.B (bad) 
    2bec:	38 83 07 47 0e a0    	cmp    %al,-0x5ff1b8f9(%rbx)
    2bf2:	49 03 2c 01          	add    (%r9,%rax,1),%rbp
    2bf6:	0e                   	(bad)  
    2bf7:	a8 49                	test   $0x49,%al
    2bf9:	47 0e                	rex.RXB (bad) 
    2bfb:	b0 49                	mov    $0x49,%al
    2bfd:	7a 0e                	jp     2c0d <__GNU_EH_FRAME_HDR+0x48d>
    2bff:	a0 49 7a 0e a8 49 41 	movabs 0xb00e4149a80e7a49,%al
    2c06:	0e b0 
    2c08:	49 76 0e             	rex.WB jbe 2c19 <__GNU_EH_FRAME_HDR+0x499>
    2c0b:	a0 49 02 63 0a 0e 38 	movabs 0xe41380e0a630249,%al
    2c12:	41 0e 
    2c14:	30 41 0e             	xor    %al,0xe(%rcx)
    2c17:	28 42 0e             	sub    %al,0xe(%rdx)
    2c1a:	20 42 0e             	and    %al,0xe(%rdx)
    2c1d:	18 42 0e             	sbb    %al,0xe(%rdx)
    2c20:	10 42 0e             	adc    %al,0xe(%rdx)
    2c23:	08 41 0b             	or     %al,0xb(%rcx)
    2c26:	00 00                	add    %al,(%rax)
    2c28:	64 00 00             	add    %al,%fs:(%rax)
    2c2b:	00 7c 03 00          	add    %bh,0x0(%rbx,%rax,1)
    2c2f:	00 93 f0 ff ff 80    	add    %dl,-0x7f000010(%rbx)
    2c35:	02 00                	add    (%rax),%al
    2c37:	00 00                	add    %al,(%rax)
    2c39:	42 0e                	rex.X (bad) 
    2c3b:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    2c41:	8e 03                	mov    (%rbx),%es
    2c43:	42 0e                	rex.X (bad) 
    2c45:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    2c4b:	8c 05 41 0e 30 86    	mov    %es,-0x79cff1bf(%rip)        # ffffffff86303a92 <_end+0xffffffff860ffc22>
    2c51:	06                   	(bad)  
    2c52:	41 0e                	rex.B (bad) 
    2c54:	38 83 07 44 0e a0    	cmp    %al,-0x5ff1bbf9(%rbx)
    2c5a:	01 02                	add    %eax,(%rdx)
    2c5c:	9b                   	fwait
    2c5d:	0e                   	(bad)  
    2c5e:	a8 01                	test   $0x1,%al
    2c60:	47 0e                	rex.RXB (bad) 
    2c62:	b0 01                	mov    $0x1,%al
    2c64:	6a 0e                	pushq  $0xe
    2c66:	a0 01 7d 0e a8 01 41 	movabs 0xb00e4101a80e7d01,%al
    2c6d:	0e b0 
    2c6f:	01 63 0e             	add    %esp,0xe(%rbx)
    2c72:	a0 01 02 87 0a 0e 38 	movabs 0xe41380e0a870201,%al
    2c79:	41 0e 
    2c7b:	30 41 0e             	xor    %al,0xe(%rcx)
    2c7e:	28 42 0e             	sub    %al,0xe(%rdx)
    2c81:	20 42 0e             	and    %al,0xe(%rdx)
    2c84:	18 42 0e             	sbb    %al,0xe(%rdx)
    2c87:	10 42 0e             	adc    %al,0xe(%rdx)
    2c8a:	08 41 0b             	or     %al,0xb(%rcx)
    2c8d:	00 00                	add    %al,(%rax)
    2c8f:	00 14 00             	add    %dl,(%rax,%rax,1)
    2c92:	00 00                	add    %al,(%rax)
    2c94:	e4 03                	in     $0x3,%al
    2c96:	00 00                	add    %al,(%rax)
    2c98:	ab                   	stos   %eax,%es:(%rdi)
    2c99:	f2 ff                	repnz (bad) 
    2c9b:	ff                   	(bad)  
    2c9c:	3c 00                	cmp    $0x0,%al
    2c9e:	00 00                	add    %al,(%rax)
    2ca0:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    2ca4:	00 00                	add    %al,(%rax)
    2ca6:	00 00                	add    %al,(%rax)
    2ca8:	24 00                	and    $0x0,%al
    2caa:	00 00                	add    %al,(%rax)
    2cac:	fc                   	cld    
    2cad:	03 00                	add    (%rax),%eax
    2caf:	00 cf                	add    %cl,%bh
    2cb1:	f2 ff                	repnz (bad) 
    2cb3:	ff 41 00             	incl   0x0(%rcx)
    2cb6:	00 00                	add    %al,(%rax)
    2cb8:	00 44 0e 10          	add    %al,0x10(%rsi,%rcx,1)
    2cbc:	4c 0e                	rex.WR (bad) 
    2cbe:	18 45 0e             	sbb    %al,0xe(%rbp)
    2cc1:	20 5d 0e             	and    %bl,0xe(%rbp)
    2cc4:	10 49 0a             	adc    %cl,0xa(%rcx)
    2cc7:	0e                   	(bad)  
    2cc8:	08 41 0b             	or     %al,0xb(%rcx)
    2ccb:	00 00                	add    %al,(%rax)
    2ccd:	00 00                	add    %al,(%rax)
    2ccf:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2cd2:	00 00                	add    %al,(%rax)
    2cd4:	24 04                	and    $0x4,%al
    2cd6:	00 00                	add    %al,(%rax)
    2cd8:	e8 f2 ff ff 01       	callq  2002ccf <_end+0x1dfee5f>
    2cdd:	01 00                	add    %eax,(%rax)
    2cdf:	00 00                	add    %al,(%rax)
    2ce1:	44 0e                	rex.R (bad) 
    2ce3:	10 02                	adc    %al,(%rdx)
    2ce5:	7d 0a                	jge    2cf1 <__GNU_EH_FRAME_HDR+0x571>
    2ce7:	0e                   	(bad)  
    2ce8:	08 41 0b             	or     %al,0xb(%rcx)
    2ceb:	00 00                	add    %al,(%rax)
    2ced:	00 00                	add    %al,(%rax)
    2cef:	00 1c 00             	add    %bl,(%rax,%rax,1)
    2cf2:	00 00                	add    %al,(%rax)
    2cf4:	44 04 00             	rex.R add $0x0,%al
    2cf7:	00 c9                	add    %cl,%cl
    2cf9:	f3 ff                	repz (bad) 
    2cfb:	ff 96 00 00 00 00    	callq  *0x0(%rsi)
    2d01:	44 0e                	rex.R (bad) 
    2d03:	70 57                	jo     2d5c <__GNU_EH_FRAME_HDR+0x5dc>
    2d05:	0a 0e                	or     (%rsi),%cl
    2d07:	08 41 0b             	or     %al,0xb(%rcx)
    2d0a:	00 00                	add    %al,(%rax)
    2d0c:	00 00                	add    %al,(%rax)
    2d0e:	00 00                	add    %al,(%rax)
    2d10:	44 00 00             	add    %r8b,(%rax)
    2d13:	00 64 04 00          	add    %ah,0x0(%rsp,%rax,1)
    2d17:	00 48 f4             	add    %cl,-0xc(%rax)
    2d1a:	ff                   	(bad)  
    2d1b:	ff 65 00             	jmpq   *0x0(%rbp)
    2d1e:	00 00                	add    %al,(%rax)
    2d20:	00 42 0e             	add    %al,0xe(%rdx)
    2d23:	10 8f 02 42 0e 18    	adc    %cl,0x180e4202(%rdi)
    2d29:	8e 03                	mov    (%rbx),%es
    2d2b:	45 0e                	rex.RB (bad) 
    2d2d:	20 8d 04 42 0e 28    	and    %cl,0x280e4204(%rbp)
    2d33:	8c 05 48 0e 30 86    	mov    %es,-0x79cff1b8(%rip)        # ffffffff86303b81 <_end+0xffffffff860ffd11>
    2d39:	06                   	(bad)  
    2d3a:	48 0e                	rex.W (bad) 
    2d3c:	38 83 07 4d 0e 40    	cmp    %al,0x400e4d07(%rbx)
    2d42:	72 0e                	jb     2d52 <__GNU_EH_FRAME_HDR+0x5d2>
    2d44:	38 41 0e             	cmp    %al,0xe(%rcx)
    2d47:	30 41 0e             	xor    %al,0xe(%rcx)
    2d4a:	28 42 0e             	sub    %al,0xe(%rdx)
    2d4d:	20 42 0e             	and    %al,0xe(%rdx)
    2d50:	18 42 0e             	sbb    %al,0xe(%rdx)
    2d53:	10 42 0e             	adc    %al,0xe(%rdx)
    2d56:	08 00                	or     %al,(%rax)
    2d58:	14 00                	adc    $0x0,%al
    2d5a:	00 00                	add    %al,(%rax)
    2d5c:	ac                   	lods   %ds:(%rsi),%al
    2d5d:	04 00                	add    $0x0,%al
    2d5f:	00 70 f4             	add    %dh,-0xc(%rax)
    2d62:	ff                   	(bad)  
    2d63:	ff 02                	incl   (%rdx)
	...

0000000000002d70 <__FRAME_END__>:
    2d70:	00 00                	add    %al,(%rax)
	...

Disassembly of section .init_array:

0000000000202dd8 <__frame_dummy_init_array_entry>:
  202dd8:	d0 11                	rclb   (%rcx)
  202dda:	00 00                	add    %al,(%rax)
  202ddc:	00 00                	add    %al,(%rax)
	...

Disassembly of section .fini_array:

0000000000202de0 <__do_global_dtors_aux_fini_array_entry>:
  202de0:	90                   	nop
  202de1:	11 00                	adc    %eax,(%rax)
  202de3:	00 00                	add    %al,(%rax)
  202de5:	00 00                	add    %al,(%rax)
	...

Disassembly of section .jcr:

0000000000202de8 <__JCR_END__>:
	...

Disassembly of section .dynamic:

0000000000202df0 <_DYNAMIC>:
  202df0:	01 00                	add    %eax,(%rax)
  202df2:	00 00                	add    %al,(%rax)
  202df4:	00 00                	add    %al,(%rax)
  202df6:	00 00                	add    %al,(%rax)
  202df8:	01 00                	add    %eax,(%rax)
  202dfa:	00 00                	add    %al,(%rax)
  202dfc:	00 00                	add    %al,(%rax)
  202dfe:	00 00                	add    %al,(%rax)
  202e00:	0c 00                	or     $0x0,%al
  202e02:	00 00                	add    %al,(%rax)
  202e04:	00 00                	add    %al,(%rax)
  202e06:	00 00                	add    %al,(%rax)
  202e08:	98                   	cwtl   
  202e09:	0e                   	(bad)  
  202e0a:	00 00                	add    %al,(%rax)
  202e0c:	00 00                	add    %al,(%rax)
  202e0e:	00 00                	add    %al,(%rax)
  202e10:	0d 00 00 00 00       	or     $0x0,%eax
  202e15:	00 00                	add    %al,(%rax)
  202e17:	00 d4                	add    %dl,%ah
  202e19:	21 00                	and    %eax,(%rax)
  202e1b:	00 00                	add    %al,(%rax)
  202e1d:	00 00                	add    %al,(%rax)
  202e1f:	00 19                	add    %bl,(%rcx)
  202e21:	00 00                	add    %al,(%rax)
  202e23:	00 00                	add    %al,(%rax)
  202e25:	00 00                	add    %al,(%rax)
  202e27:	00 d8                	add    %bl,%al
  202e29:	2d 20 00 00 00       	sub    $0x20,%eax
  202e2e:	00 00                	add    %al,(%rax)
  202e30:	1b 00                	sbb    (%rax),%eax
  202e32:	00 00                	add    %al,(%rax)
  202e34:	00 00                	add    %al,(%rax)
  202e36:	00 00                	add    %al,(%rax)
  202e38:	08 00                	or     %al,(%rax)
  202e3a:	00 00                	add    %al,(%rax)
  202e3c:	00 00                	add    %al,(%rax)
  202e3e:	00 00                	add    %al,(%rax)
  202e40:	1a 00                	sbb    (%rax),%al
  202e42:	00 00                	add    %al,(%rax)
  202e44:	00 00                	add    %al,(%rax)
  202e46:	00 00                	add    %al,(%rax)
  202e48:	e0 2d                	loopne 202e77 <_DYNAMIC+0x87>
  202e4a:	20 00                	and    %al,(%rax)
  202e4c:	00 00                	add    %al,(%rax)
  202e4e:	00 00                	add    %al,(%rax)
  202e50:	1c 00                	sbb    $0x0,%al
  202e52:	00 00                	add    %al,(%rax)
  202e54:	00 00                	add    %al,(%rax)
  202e56:	00 00                	add    %al,(%rax)
  202e58:	08 00                	or     %al,(%rax)
  202e5a:	00 00                	add    %al,(%rax)
  202e5c:	00 00                	add    %al,(%rax)
  202e5e:	00 00                	add    %al,(%rax)
  202e60:	f5                   	cmc    
  202e61:	fe                   	(bad)  
  202e62:	ff 6f 00             	ljmp   *0x0(%rdi)
  202e65:	00 00                	add    %al,(%rax)
  202e67:	00 98 02 00 00 00    	add    %bl,0x2(%rax)
  202e6d:	00 00                	add    %al,(%rax)
  202e6f:	00 05 00 00 00 00    	add    %al,0x0(%rip)        # 202e75 <_DYNAMIC+0x85>
  202e75:	00 00                	add    %al,(%rax)
  202e77:	00 98 06 00 00 00    	add    %bl,0x6(%rax)
  202e7d:	00 00                	add    %al,(%rax)
  202e7f:	00 06                	add    %al,(%rsi)
  202e81:	00 00                	add    %al,(%rax)
  202e83:	00 00                	add    %al,(%rax)
  202e85:	00 00                	add    %al,(%rax)
  202e87:	00 c0                	add    %al,%al
  202e89:	02 00                	add    (%rax),%al
  202e8b:	00 00                	add    %al,(%rax)
  202e8d:	00 00                	add    %al,(%rax)
  202e8f:	00 0a                	add    %cl,(%rdx)
  202e91:	00 00                	add    %al,(%rax)
  202e93:	00 00                	add    %al,(%rax)
  202e95:	00 00                	add    %al,(%rax)
  202e97:	00 9a 01 00 00 00    	add    %bl,0x1(%rdx)
  202e9d:	00 00                	add    %al,(%rax)
  202e9f:	00 0b                	add    %cl,(%rbx)
  202ea1:	00 00                	add    %al,(%rax)
  202ea3:	00 00                	add    %al,(%rax)
  202ea5:	00 00                	add    %al,(%rax)
  202ea7:	00 18                	add    %bl,(%rax)
  202ea9:	00 00                	add    %al,(%rax)
  202eab:	00 00                	add    %al,(%rax)
  202ead:	00 00                	add    %al,(%rax)
  202eaf:	00 15 00 00 00 00    	add    %dl,0x0(%rip)        # 202eb5 <_DYNAMIC+0xc5>
	...
  202ebd:	00 00                	add    %al,(%rax)
  202ebf:	00 03                	add    %al,(%rbx)
	...
  202ec9:	30 20                	xor    %ah,(%rax)
  202ecb:	00 00                	add    %al,(%rax)
  202ecd:	00 00                	add    %al,(%rax)
  202ecf:	00 02                	add    %al,(%rdx)
	...
  202ed9:	03 00                	add    (%rax),%eax
  202edb:	00 00                	add    %al,(%rax)
  202edd:	00 00                	add    %al,(%rax)
  202edf:	00 14 00             	add    %dl,(%rax,%rax,1)
  202ee2:	00 00                	add    %al,(%rax)
  202ee4:	00 00                	add    %al,(%rax)
  202ee6:	00 00                	add    %al,(%rax)
  202ee8:	07                   	(bad)  
  202ee9:	00 00                	add    %al,(%rax)
  202eeb:	00 00                	add    %al,(%rax)
  202eed:	00 00                	add    %al,(%rax)
  202eef:	00 17                	add    %dl,(%rdi)
  202ef1:	00 00                	add    %al,(%rax)
  202ef3:	00 00                	add    %al,(%rax)
  202ef5:	00 00                	add    %al,(%rax)
  202ef7:	00 98 0b 00 00 00    	add    %bl,0xb(%rax)
  202efd:	00 00                	add    %al,(%rax)
  202eff:	00 07                	add    %al,(%rdi)
  202f01:	00 00                	add    %al,(%rax)
  202f03:	00 00                	add    %al,(%rax)
  202f05:	00 00                	add    %al,(%rax)
  202f07:	00 c8                	add    %cl,%al
  202f09:	08 00                	or     %al,(%rax)
  202f0b:	00 00                	add    %al,(%rax)
  202f0d:	00 00                	add    %al,(%rax)
  202f0f:	00 08                	add    %cl,(%rax)
  202f11:	00 00                	add    %al,(%rax)
  202f13:	00 00                	add    %al,(%rax)
  202f15:	00 00                	add    %al,(%rax)
  202f17:	00 d0                	add    %dl,%al
  202f19:	02 00                	add    (%rax),%al
  202f1b:	00 00                	add    %al,(%rax)
  202f1d:	00 00                	add    %al,(%rax)
  202f1f:	00 09                	add    %cl,(%rcx)
  202f21:	00 00                	add    %al,(%rax)
  202f23:	00 00                	add    %al,(%rax)
  202f25:	00 00                	add    %al,(%rax)
  202f27:	00 18                	add    %bl,(%rax)
  202f29:	00 00                	add    %al,(%rax)
  202f2b:	00 00                	add    %al,(%rax)
  202f2d:	00 00                	add    %al,(%rax)
  202f2f:	00 fb                	add    %bh,%bl
  202f31:	ff                   	(bad)  
  202f32:	ff 6f 00             	ljmp   *0x0(%rdi)
  202f35:	00 00                	add    %al,(%rax)
  202f37:	00 00                	add    %al,(%rax)
  202f39:	00 00                	add    %al,(%rax)
  202f3b:	08 00                	or     %al,(%rax)
  202f3d:	00 00                	add    %al,(%rax)
  202f3f:	00 fe                	add    %bh,%dh
  202f41:	ff                   	(bad)  
  202f42:	ff 6f 00             	ljmp   *0x0(%rdi)
  202f45:	00 00                	add    %al,(%rax)
  202f47:	00 88 08 00 00 00    	add    %cl,0x8(%rax)
  202f4d:	00 00                	add    %al,(%rax)
  202f4f:	00 ff                	add    %bh,%bh
  202f51:	ff                   	(bad)  
  202f52:	ff 6f 00             	ljmp   *0x0(%rdi)
  202f55:	00 00                	add    %al,(%rax)
  202f57:	00 01                	add    %al,(%rcx)
  202f59:	00 00                	add    %al,(%rax)
  202f5b:	00 00                	add    %al,(%rax)
  202f5d:	00 00                	add    %al,(%rax)
  202f5f:	00 f0                	add    %dh,%al
  202f61:	ff                   	(bad)  
  202f62:	ff 6f 00             	ljmp   *0x0(%rdi)
  202f65:	00 00                	add    %al,(%rax)
  202f67:	00 32                	add    %dh,(%rdx)
  202f69:	08 00                	or     %al,(%rax)
  202f6b:	00 00                	add    %al,(%rax)
  202f6d:	00 00                	add    %al,(%rax)
  202f6f:	00 f9                	add    %bh,%cl
  202f71:	ff                   	(bad)  
  202f72:	ff 6f 00             	ljmp   *0x0(%rdi)
  202f75:	00 00                	add    %al,(%rax)
  202f77:	00 16                	add    %dl,(%rsi)
	...

Disassembly of section .got:

0000000000202fd0 <.got>:
	...

Disassembly of section .got.plt:

0000000000203000 <_GLOBAL_OFFSET_TABLE_>:
  203000:	f0 2d 20 00 00 00    	lock sub $0x20,%eax
	...
  203016:	00 00                	add    %al,(%rax)
  203018:	c6                   	(bad)  
  203019:	0e                   	(bad)  
  20301a:	00 00                	add    %al,(%rax)
  20301c:	00 00                	add    %al,(%rax)
  20301e:	00 00                	add    %al,(%rax)
  203020:	d6                   	(bad)  
  203021:	0e                   	(bad)  
  203022:	00 00                	add    %al,(%rax)
  203024:	00 00                	add    %al,(%rax)
  203026:	00 00                	add    %al,(%rax)
  203028:	e6 0e                	out    %al,$0xe
  20302a:	00 00                	add    %al,(%rax)
  20302c:	00 00                	add    %al,(%rax)
  20302e:	00 00                	add    %al,(%rax)
  203030:	f6 0e 00             	testb  $0x0,(%rsi)
  203033:	00 00                	add    %al,(%rax)
  203035:	00 00                	add    %al,(%rax)
  203037:	00 06                	add    %al,(%rsi)
  203039:	0f 00 00             	sldt   (%rax)
  20303c:	00 00                	add    %al,(%rax)
  20303e:	00 00                	add    %al,(%rax)
  203040:	16                   	(bad)  
  203041:	0f 00 00             	sldt   (%rax)
  203044:	00 00                	add    %al,(%rax)
  203046:	00 00                	add    %al,(%rax)
  203048:	26 0f 00 00          	sldt   %es:(%rax)
  20304c:	00 00                	add    %al,(%rax)
  20304e:	00 00                	add    %al,(%rax)
  203050:	36 0f 00 00          	sldt   %ss:(%rax)
  203054:	00 00                	add    %al,(%rax)
  203056:	00 00                	add    %al,(%rax)
  203058:	46 0f 00 00          	rex.RX sldt (%rax)
  20305c:	00 00                	add    %al,(%rax)
  20305e:	00 00                	add    %al,(%rax)
  203060:	56                   	push   %rsi
  203061:	0f 00 00             	sldt   (%rax)
  203064:	00 00                	add    %al,(%rax)
  203066:	00 00                	add    %al,(%rax)
  203068:	66 0f 00 00          	data16 sldt (%rax)
  20306c:	00 00                	add    %al,(%rax)
  20306e:	00 00                	add    %al,(%rax)
  203070:	76 0f                	jbe    203081 <_GLOBAL_OFFSET_TABLE_+0x81>
  203072:	00 00                	add    %al,(%rax)
  203074:	00 00                	add    %al,(%rax)
  203076:	00 00                	add    %al,(%rax)
  203078:	86 0f                	xchg   %cl,(%rdi)
  20307a:	00 00                	add    %al,(%rax)
  20307c:	00 00                	add    %al,(%rax)
  20307e:	00 00                	add    %al,(%rax)
  203080:	96                   	xchg   %eax,%esi
  203081:	0f 00 00             	sldt   (%rax)
  203084:	00 00                	add    %al,(%rax)
  203086:	00 00                	add    %al,(%rax)
  203088:	a6                   	cmpsb  %es:(%rdi),%ds:(%rsi)
  203089:	0f 00 00             	sldt   (%rax)
  20308c:	00 00                	add    %al,(%rax)
  20308e:	00 00                	add    %al,(%rax)
  203090:	b6 0f                	mov    $0xf,%dh
  203092:	00 00                	add    %al,(%rax)
  203094:	00 00                	add    %al,(%rax)
  203096:	00 00                	add    %al,(%rax)
  203098:	c6                   	(bad)  
  203099:	0f 00 00             	sldt   (%rax)
  20309c:	00 00                	add    %al,(%rax)
  20309e:	00 00                	add    %al,(%rax)
  2030a0:	d6                   	(bad)  
  2030a1:	0f 00 00             	sldt   (%rax)
  2030a4:	00 00                	add    %al,(%rax)
  2030a6:	00 00                	add    %al,(%rax)
  2030a8:	e6 0f                	out    %al,$0xf
  2030aa:	00 00                	add    %al,(%rax)
  2030ac:	00 00                	add    %al,(%rax)
  2030ae:	00 00                	add    %al,(%rax)
  2030b0:	f6 0f 00             	testb  $0x0,(%rdi)
  2030b3:	00 00                	add    %al,(%rax)
  2030b5:	00 00                	add    %al,(%rax)
  2030b7:	00 06                	add    %al,(%rsi)
  2030b9:	10 00                	adc    %al,(%rax)
  2030bb:	00 00                	add    %al,(%rax)
  2030bd:	00 00                	add    %al,(%rax)
  2030bf:	00 16                	add    %dl,(%rsi)
  2030c1:	10 00                	adc    %al,(%rax)
  2030c3:	00 00                	add    %al,(%rax)
  2030c5:	00 00                	add    %al,(%rax)
  2030c7:	00 26                	add    %ah,(%rsi)
  2030c9:	10 00                	adc    %al,(%rax)
  2030cb:	00 00                	add    %al,(%rax)
  2030cd:	00 00                	add    %al,(%rax)
  2030cf:	00 36                	add    %dh,(%rsi)
  2030d1:	10 00                	adc    %al,(%rax)
  2030d3:	00 00                	add    %al,(%rax)
  2030d5:	00 00                	add    %al,(%rax)
  2030d7:	00 46 10             	add    %al,0x10(%rsi)
  2030da:	00 00                	add    %al,(%rax)
  2030dc:	00 00                	add    %al,(%rax)
  2030de:	00 00                	add    %al,(%rax)
  2030e0:	56                   	push   %rsi
  2030e1:	10 00                	adc    %al,(%rax)
  2030e3:	00 00                	add    %al,(%rax)
  2030e5:	00 00                	add    %al,(%rax)
  2030e7:	00 66 10             	add    %ah,0x10(%rsi)
  2030ea:	00 00                	add    %al,(%rax)
  2030ec:	00 00                	add    %al,(%rax)
  2030ee:	00 00                	add    %al,(%rax)
  2030f0:	76 10                	jbe    203102 <_GLOBAL_OFFSET_TABLE_+0x102>
  2030f2:	00 00                	add    %al,(%rax)
  2030f4:	00 00                	add    %al,(%rax)
  2030f6:	00 00                	add    %al,(%rax)
  2030f8:	86 10                	xchg   %dl,(%rax)
  2030fa:	00 00                	add    %al,(%rax)
  2030fc:	00 00                	add    %al,(%rax)
  2030fe:	00 00                	add    %al,(%rax)
  203100:	96                   	xchg   %eax,%esi
  203101:	10 00                	adc    %al,(%rax)
  203103:	00 00                	add    %al,(%rax)
  203105:	00 00                	add    %al,(%rax)
  203107:	00 a6 10 00 00 00    	add    %ah,0x10(%rsi)
  20310d:	00 00                	add    %al,(%rax)
  20310f:	00 b6 10 00 00 00    	add    %dh,0x10(%rsi)
  203115:	00 00                	add    %al,(%rax)
	...

Disassembly of section .data:

0000000000203120 <__data_start>:
	...

0000000000203128 <__dso_handle>:
  203128:	28 31                	sub    %dh,(%rcx)
  20312a:	20 00                	and    %al,(%rax)
	...

0000000000203140 <n45>:
  203140:	28 00                	sub    %al,(%rax)
	...

0000000000203160 <n41>:
  203160:	01 00                	add    %eax,(%rax)
	...

0000000000203180 <n47>:
  203180:	63 00                	movslq (%rax),%eax
	...

00000000002031a0 <n44>:
  2031a0:	23 00                	and    (%rax),%eax
	...

00000000002031c0 <n42>:
  2031c0:	07                   	(bad)  
	...

00000000002031e0 <n43>:
  2031e0:	14 00                	adc    $0x0,%al
	...

0000000000203200 <n46>:
  203200:	2f                   	(bad)  
	...

0000000000203220 <n48>:
  203220:	e9 03 00 00 00       	jmpq   203228 <n48+0x8>
	...

0000000000203240 <node6>:
  203240:	4d 00 00             	rex.WRB add %r8b,(%r8)
  203243:	00 06                	add    %al,(%rsi)
	...

0000000000203260 <lab_id>:
  203260:	53                   	push   %rbx
  203261:	45 31 38             	xor    %r15d,(%r8)
  203264:	32 30                	xor    (%rax),%dh
  203266:	31 39                	xor    %edi,(%rcx)
  203268:	4c 61                	rex.WR (bad) 
  20326a:	62 32                	(bad)  
	...

0000000000203660 <bomb_id>:
  203660:	8b 13                	mov    (%rbx),%edx
  203662:	34 01                	xor    $0x1,%al
	...

0000000000203670 <n1>:
  203670:	24 00                	and    $0x0,%al
  203672:	00 00                	add    %al,(%rax)
  203674:	00 00                	add    %al,(%rax)
  203676:	00 00                	add    %al,(%rax)
  203678:	90                   	nop
  203679:	36 20 00             	and    %al,%ss:(%rax)
  20367c:	00 00                	add    %al,(%rax)
  20367e:	00 00                	add    %al,(%rax)
  203680:	b0 36                	mov    $0x36,%al
  203682:	20 00                	and    %al,(%rax)
	...

0000000000203690 <n21>:
  203690:	08 00                	or     %al,(%rax)
  203692:	00 00                	add    %al,(%rax)
  203694:	00 00                	add    %al,(%rax)
  203696:	00 00                	add    %al,(%rax)
  203698:	10 37                	adc    %dh,(%rdi)
  20369a:	20 00                	and    %al,(%rax)
  20369c:	00 00                	add    %al,(%rax)
  20369e:	00 00                	add    %al,(%rax)
  2036a0:	d0 36                	shlb   (%rsi)
  2036a2:	20 00                	and    %al,(%rax)
	...

00000000002036b0 <n22>:
  2036b0:	32 00                	xor    (%rax),%al
  2036b2:	00 00                	add    %al,(%rax)
  2036b4:	00 00                	add    %al,(%rax)
  2036b6:	00 00                	add    %al,(%rax)
  2036b8:	f0 36 20 00          	lock and %al,%ss:(%rax)
  2036bc:	00 00                	add    %al,(%rax)
  2036be:	00 00                	add    %al,(%rax)
  2036c0:	30 37                	xor    %dh,(%rdi)
  2036c2:	20 00                	and    %al,(%rax)
	...

00000000002036d0 <n32>:
  2036d0:	16                   	(bad)  
  2036d1:	00 00                	add    %al,(%rax)
  2036d3:	00 00                	add    %al,(%rax)
  2036d5:	00 00                	add    %al,(%rax)
  2036d7:	00 e0                	add    %ah,%al
  2036d9:	31 20                	xor    %esp,(%rax)
  2036db:	00 00                	add    %al,(%rax)
  2036dd:	00 00                	add    %al,(%rax)
  2036df:	00 a0 31 20 00 00    	add    %ah,0x2031(%rax)
	...

00000000002036f0 <n33>:
  2036f0:	2d 00 00 00 00       	sub    $0x0,%eax
  2036f5:	00 00                	add    %al,(%rax)
  2036f7:	00 40 31             	add    %al,0x31(%rax)
  2036fa:	20 00                	and    %al,(%rax)
  2036fc:	00 00                	add    %al,(%rax)
  2036fe:	00 00                	add    %al,(%rax)
  203700:	00 32                	add    %dh,(%rdx)
  203702:	20 00                	and    %al,(%rax)
	...

0000000000203710 <n31>:
  203710:	06                   	(bad)  
  203711:	00 00                	add    %al,(%rax)
  203713:	00 00                	add    %al,(%rax)
  203715:	00 00                	add    %al,(%rax)
  203717:	00 60 31             	add    %ah,0x31(%rax)
  20371a:	20 00                	and    %al,(%rax)
  20371c:	00 00                	add    %al,(%rax)
  20371e:	00 00                	add    %al,(%rax)
  203720:	c0 31 20             	shlb   $0x20,(%rcx)
	...

0000000000203730 <n34>:
  203730:	6b 00 00             	imul   $0x0,(%rax),%eax
  203733:	00 00                	add    %al,(%rax)
  203735:	00 00                	add    %al,(%rax)
  203737:	00 80 31 20 00 00    	add    %al,0x2031(%rax)
  20373d:	00 00                	add    %al,(%rax)
  20373f:	00 20                	add    %ah,(%rax)
  203741:	32 20                	xor    (%rax),%ah
	...

0000000000203750 <node1>:
  203750:	3b 03                	cmp    (%rbx),%eax
  203752:	00 00                	add    %al,(%rax)
  203754:	01 00                	add    %eax,(%rax)
  203756:	00 00                	add    %al,(%rax)
  203758:	60                   	(bad)  
  203759:	37                   	(bad)  
  20375a:	20 00                	and    %al,(%rax)
  20375c:	00 00                	add    %al,(%rax)
	...

0000000000203760 <node2>:
  203760:	3f                   	(bad)  
  203761:	02 00                	add    (%rax),%al
  203763:	00 02                	add    %al,(%rdx)
  203765:	00 00                	add    %al,(%rax)
  203767:	00 70 37             	add    %dh,0x37(%rax)
  20376a:	20 00                	and    %al,(%rax)
  20376c:	00 00                	add    %al,(%rax)
	...

0000000000203770 <node3>:
  203770:	10 03                	adc    %al,(%rbx)
  203772:	00 00                	add    %al,(%rax)
  203774:	03 00                	add    (%rax),%eax
  203776:	00 00                	add    %al,(%rax)
  203778:	80 37 20             	xorb   $0x20,(%rdi)
  20377b:	00 00                	add    %al,(%rax)
  20377d:	00 00                	add    %al,(%rax)
	...

0000000000203780 <node4>:
  203780:	8b 01                	mov    (%rcx),%eax
  203782:	00 00                	add    %al,(%rax)
  203784:	04 00                	add    $0x0,%al
  203786:	00 00                	add    %al,(%rax)
  203788:	90                   	nop
  203789:	37                   	(bad)  
  20378a:	20 00                	and    %al,(%rax)
  20378c:	00 00                	add    %al,(%rax)
	...

0000000000203790 <node5>:
  203790:	67 02 00             	add    (%eax),%al
  203793:	00 05 00 00 00 40    	add    %al,0x40000000(%rip)        # 40203799 <_end+0x3ffff929>
  203799:	32 20                	xor    (%rax),%ah
  20379b:	00 00                	add    %al,(%rax)
  20379d:	00 00                	add    %al,(%rax)
	...

Disassembly of section .bss:

00000000002037a0 <stdout@@GLIBC_2.2.5>:
	...

00000000002037b0 <stdin@@GLIBC_2.2.5>:
	...

00000000002037b8 <completed.6972>:
  2037b8:	00 00                	add    %al,(%rax)
	...

00000000002037bc <num_input_strings>:
  2037bc:	00 00                	add    %al,(%rax)
	...

00000000002037c0 <infile>:
	...

00000000002037e0 <input_strings>:
	...

0000000000203e20 <scratch>:
	...

Disassembly of section .comment:

0000000000000000 <.comment>:
   0:	47                   	rex.RXB
   1:	43                   	rex.XB
   2:	43 3a 20             	rex.XB cmp (%r8),%spl
   5:	28 44 65 62          	sub    %al,0x62(%rbp,%riz,2)
   9:	69 61 6e 20 36 2e 33 	imul   $0x332e3620,0x6e(%rcx),%esp
  10:	2e 30 2d 31 38 2b 64 	xor    %ch,%cs:0x642b3831(%rip)        # 642b3848 <_end+0x640af9d8>
  17:	65 62                	gs (bad) 
  19:	39 75 31             	cmp    %esi,0x31(%rbp)
  1c:	29 20                	sub    %esp,(%rax)
  1e:	36 2e 33 2e          	ss xor %cs:(%rsi),%ebp
  22:	30 20                	xor    %ah,(%rax)
  24:	32 30                	xor    (%rax),%dh
  26:	31 37                	xor    %esi,(%rdi)
  28:	30                   	.byte 0x30
  29:	35                   	.byte 0x35
  2a:	31 36                	xor    %esi,(%rsi)
	...

Disassembly of section .debug_aranges:

0000000000000000 <.debug_aranges>:
   0:	2c 00                	sub    $0x0,%al
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 00                	or     %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	00 12                	add    %dl,(%rdx)
  12:	00 00                	add    %al,(%rax)
  14:	00 00                	add    %al,(%rax)
  16:	00 00                	add    %al,(%rax)
  18:	50                   	push   %rax
  19:	01 00                	add    %eax,(%rax)
	...

Disassembly of section .debug_info:

0000000000000000 <.debug_info>:
   0:	b1 06                	mov    $0x6,%cl
   2:	00 00                	add    %al,(%rax)
   4:	04 00                	add    $0x0,%al
   6:	00 00                	add    %al,(%rax)
   8:	00 00                	add    %al,(%rax)
   a:	08 01                	or     %al,(%rcx)
   c:	f2 02 00             	repnz add (%rax),%al
   f:	00 0c 71             	add    %cl,(%rcx,%rsi,2)
  12:	00 00                	add    %al,(%rax)
  14:	00 a2 00 00 00 00    	add    %ah,0x0(%rdx)
  1a:	12 00                	adc    (%rax),%al
  1c:	00 00                	add    %al,(%rax)
  1e:	00 00                	add    %al,(%rax)
  20:	00 50 01             	add    %dl,0x1(%rax)
	...
  2b:	00 00                	add    %al,(%rax)
  2d:	02 4d 00             	add    0x0(%rbp),%cl
  30:	00 00                	add    %al,(%rax)
  32:	02 d8                	add    %al,%bl
  34:	38 00                	cmp    %al,(%rax)
  36:	00 00                	add    %al,(%rax)
  38:	03 08                	add    (%rax),%ecx
  3a:	07                   	(bad)  
  3b:	fd                   	std    
  3c:	01 00                	add    %eax,(%rax)
  3e:	00 03                	add    %al,(%rbx)
  40:	01 08                	add    %ecx,(%rax)
  42:	60                   	(bad)  
  43:	01 00                	add    %eax,(%rax)
  45:	00 03                	add    %al,(%rbx)
  47:	02 07                	add    (%rdi),%al
  49:	bc 01 00 00 03       	mov    $0x3000001,%esp
  4e:	04 07                	add    $0x7,%al
  50:	02 02                	add    (%rdx),%al
  52:	00 00                	add    %al,(%rax)
  54:	03 01                	add    (%rcx),%eax
  56:	06                   	(bad)  
  57:	62 01                	(bad)  
  59:	00 00                	add    %al,(%rax)
  5b:	03 02                	add    (%rdx),%eax
  5d:	05 43 00 00 00       	add    $0x43,%eax
  62:	04 04                	add    $0x4,%al
  64:	05 69 6e 74 00       	add    $0x746e69,%eax
  69:	03 08                	add    (%rax),%ecx
  6b:	05 fa 00 00 00       	add    $0xfa,%eax
  70:	02 3f                	add    (%rdi),%bh
  72:	02 00                	add    (%rax),%al
  74:	00 03                	add    %al,(%rbx)
  76:	83 69 00 00          	subl   $0x0,0x0(%rcx)
  7a:	00 02                	add    %al,(%rdx)
  7c:	35 02 00 00 03       	xor    $0x3000002,%eax
  81:	84 69 00             	test   %ch,0x0(%rcx)
  84:	00 00                	add    %al,(%rax)
  86:	03 08                	add    (%rax),%ecx
  88:	07                   	(bad)  
  89:	5a                   	pop    %rdx
  8a:	00 00                	add    %al,(%rax)
  8c:	00 05 08 06 08 95    	add    %al,-0x6af7f9f8(%rip)        # ffffffff9508069a <_end+0xffffffff94e7c82a>
  92:	00 00                	add    %al,(%rax)
  94:	00 03                	add    %al,(%rbx)
  96:	01 06                	add    %eax,(%rsi)
  98:	69 01 00 00 07 95    	imul   $0x95070000,(%rcx),%eax
  9e:	00 00                	add    %al,(%rax)
  a0:	00 02                	add    %al,(%rdx)
  a2:	5b                   	pop    %rbx
  a3:	01 00                	add    %eax,(%rax)
  a5:	00 04 30             	add    %al,(%rax,%rsi,1)
  a8:	ac                   	lods   %ds:(%rsi),%al
  a9:	00 00                	add    %al,(%rax)
  ab:	00 08                	add    %cl,(%rax)
  ad:	57                   	push   %rdi
  ae:	01 00                	add    %eax,(%rax)
  b0:	00 d8                	add    %bl,%al
  b2:	05 f1 29 02 00       	add    $0x229f1,%eax
  b7:	00 09                	add    %cl,(%rcx)
  b9:	c9                   	leaveq 
  ba:	02 00                	add    (%rax),%al
  bc:	00 05 f2 62 00 00    	add    %al,0x62f2(%rip)        # 63b4 <__FRAME_END__+0x3644>
  c2:	00 00                	add    %al,(%rax)
  c4:	09 af 01 00 00 05    	or     %ebp,0x5000001(%rdi)
  ca:	f7 8f 00 00 00 08 09 	testl  $0x9509,0x8000000(%rdi)
  d1:	95 00 00 
  d4:	00 05 f8 8f 00 00    	add    %al,0x8ff8(%rip)        # 90d2 <__FRAME_END__+0x6362>
  da:	00 10                	add    %dl,(%rax)
  dc:	09 82 02 00 00 05    	or     %eax,0x5000002(%rdx)
  e2:	f9                   	stc    
  e3:	8f 00                	popq   (%rax)
  e5:	00 00                	add    %al,(%rax)
  e7:	18 09                	sbb    %cl,(%rcx)
  e9:	97                   	xchg   %eax,%edi
  ea:	01 00                	add    %eax,(%rax)
  ec:	00 05 fa 8f 00 00    	add    %al,0x8ffa(%rip)        # 90ec <__FRAME_END__+0x637c>
  f2:	00 20                	add    %ah,(%rax)
  f4:	09 63 00             	or     %esp,0x0(%rbx)
  f7:	00 00                	add    %al,(%rax)
  f9:	05 fb 8f 00 00       	add    $0x8ffb,%eax
  fe:	00 28                	add    %ch,(%rax)
 100:	09 1f                	or     %ebx,(%rdi)
 102:	02 00                	add    (%rax),%al
 104:	00 05 fc 8f 00 00    	add    %al,0x8ffc(%rip)        # 9106 <__FRAME_END__+0x6396>
 10a:	00 30                	add    %dh,(%rax)
 10c:	09 78 00             	or     %edi,0x0(%rax)
 10f:	00 00                	add    %al,(%rax)
 111:	05 fd 8f 00 00       	add    $0x8ffd,%eax
 116:	00 38                	add    %bh,(%rax)
 118:	09 00                	or     %eax,(%rax)
 11a:	00 00                	add    %al,(%rax)
 11c:	00 05 fe 8f 00 00    	add    %al,0x8ffe(%rip)        # 9120 <__FRAME_END__+0x63b0>
 122:	00 40 0a             	add    %al,0xa(%rax)
 125:	9f                   	lahf   
 126:	02 00                	add    (%rax),%al
 128:	00 05 00 01 8f 00    	add    %al,0x8f0100(%rip)        # 8f022e <_end+0x6ec3be>
 12e:	00 00                	add    %al,(%rax)
 130:	48 0a 5e 02          	rex.W or 0x2(%rsi),%bl
 134:	00 00                	add    %al,(%rax)
 136:	05 01 01 8f 00       	add    $0x8f0101,%eax
 13b:	00 00                	add    %al,(%rax)
 13d:	50                   	push   %rax
 13e:	0a 36                	or     (%rsi),%dh
 140:	00 00                	add    %al,(%rax)
 142:	00 05 02 01 8f 00    	add    %al,0x8f0102(%rip)        # 8f024a <_end+0x6ec3da>
 148:	00 00                	add    %al,(%rax)
 14a:	58                   	pop    %rax
 14b:	0a 8c 00 00 00 05 04 	or     0x4050000(%rax,%rax,1),%cl
 152:	01 61 02             	add    %esp,0x2(%rcx)
 155:	00 00                	add    %al,(%rax)
 157:	60                   	(bad)  
 158:	0a 47 02             	or     0x2(%rdi),%al
 15b:	00 00                	add    %al,(%rax)
 15d:	05 06 01 67 02       	add    $0x2670106,%eax
 162:	00 00                	add    %al,(%rax)
 164:	68 0a b9 02 00       	pushq  $0x2b90a
 169:	00 05 08 01 62 00    	add    %al,0x620108(%rip)        # 620277 <_end+0x41c407>
 16f:	00 00                	add    %al,(%rax)
 171:	70 0a                	jo     17d <_init-0xd1b>
 173:	74 02                	je     177 <_init-0xd21>
 175:	00 00                	add    %al,(%rax)
 177:	05 0c 01 62 00       	add    $0x62010c,%eax
 17c:	00 00                	add    %al,(%rax)
 17e:	74 0a                	je     18a <_init-0xd0e>
 180:	12 00                	adc    (%rax),%al
 182:	00 00                	add    %al,(%rax)
 184:	05 0e 01 70 00       	add    $0x70010e,%eax
 189:	00 00                	add    %al,(%rax)
 18b:	78 0a                	js     197 <_init-0xd01>
 18d:	18 01                	sbb    %al,(%rcx)
 18f:	00 00                	add    %al,(%rax)
 191:	05 12 01 46 00       	add    $0x460112,%eax
 196:	00 00                	add    %al,(%rax)
 198:	80 0a 90             	orb    $0x90,(%rdx)
 19b:	02 00                	add    (%rax),%al
 19d:	00 05 13 01 54 00    	add    %al,0x540113(%rip)        # 5402b6 <_end+0x33c446>
 1a3:	00 00                	add    %al,(%rax)
 1a5:	82                   	(bad)  
 1a6:	0a 8d 01 00 00 05    	or     0x5000001(%rbp),%cl
 1ac:	14 01                	adc    $0x1,%al
 1ae:	6d                   	insl   (%dx),%es:(%rdi)
 1af:	02 00                	add    (%rax),%al
 1b1:	00 83 0a f4 00 00    	add    %al,0xf40a(%rbx)
 1b7:	00 05 18 01 7d 02    	add    %al,0x27d0118(%rip)        # 27d02d5 <_end+0x25cc465>
 1bd:	00 00                	add    %al,(%rax)
 1bf:	88 0a                	mov    %cl,(%rdx)
 1c1:	16                   	(bad)  
 1c2:	00 00                	add    %al,(%rax)
 1c4:	00 05 21 01 7b 00    	add    %al,0x7b0121(%rip)        # 7b02eb <_end+0x5ac47b>
 1ca:	00 00                	add    %al,(%rax)
 1cc:	90                   	nop
 1cd:	0a da                	or     %dl,%bl
 1cf:	01 00                	add    %eax,(%rax)
 1d1:	00 05 29 01 8d 00    	add    %al,0x8d0129(%rip)        # 8d0300 <_end+0x6cc490>
 1d7:	00 00                	add    %al,(%rax)
 1d9:	98                   	cwtl   
 1da:	0a e1                	or     %cl,%ah
 1dc:	01 00                	add    %eax,(%rax)
 1de:	00 05 2a 01 8d 00    	add    %al,0x8d012a(%rip)        # 8d030e <_end+0x6cc49e>
 1e4:	00 00                	add    %al,(%rax)
 1e6:	a0 0a e8 01 00 00 05 	movabs 0x12b05000001e80a,%al
 1ed:	2b 01 
 1ef:	8d 00                	lea    (%rax),%eax
 1f1:	00 00                	add    %al,(%rax)
 1f3:	a8 0a                	test   $0xa,%al
 1f5:	ef                   	out    %eax,(%dx)
 1f6:	01 00                	add    %eax,(%rax)
 1f8:	00 05 2c 01 8d 00    	add    %al,0x8d012c(%rip)        # 8d032a <_end+0x6cc4ba>
 1fe:	00 00                	add    %al,(%rax)
 200:	b0 0a                	mov    $0xa,%al
 202:	f6 01 00             	testb  $0x0,(%rcx)
 205:	00 05 2e 01 2d 00    	add    %al,0x2d012e(%rip)        # 2d0339 <_end+0xcc4c9>
 20b:	00 00                	add    %al,(%rax)
 20d:	b8 0a 7c 02 00       	mov    $0x27c0a,%eax
 212:	00 05 2f 01 62 00    	add    %al,0x62012f(%rip)        # 620347 <_end+0x41c4d7>
 218:	00 00                	add    %al,(%rax)
 21a:	c0 0a a6             	rorb   $0xa6,(%rdx)
 21d:	01 00                	add    %eax,(%rax)
 21f:	00 05 31 01 83 02    	add    %al,0x2830131(%rip)        # 2830356 <_end+0x262c4e6>
 225:	00 00                	add    %al,(%rax)
 227:	c4                   	(bad)  
 228:	00 0b                	add    %cl,(%rbx)
 22a:	e7 02                	out    %eax,$0x2
 22c:	00 00                	add    %al,(%rax)
 22e:	05 96 08 82 01       	add    $0x1820896,%eax
 233:	00 00                	add    %al,(%rax)
 235:	18 05 9c 61 02 00    	sbb    %al,0x2619c(%rip)        # 263d7 <__FRAME_END__+0x23667>
 23b:	00 09                	add    %cl,(%rcx)
 23d:	d4                   	(bad)  
 23e:	01 00                	add    %eax,(%rax)
 240:	00 05 9d 61 02 00    	add    %al,0x2619d(%rip)        # 263e3 <__FRAME_END__+0x23673>
 246:	00 00                	add    %al,(%rax)
 248:	09 51 01             	or     %edx,0x1(%rcx)
 24b:	00 00                	add    %al,(%rax)
 24d:	05 9e 67 02 00       	add    $0x2679e,%eax
 252:	00 08                	add    %cl,(%rax)
 254:	09 42 01             	or     %eax,0x1(%rdx)
 257:	00 00                	add    %al,(%rax)
 259:	05 a2 62 00 00       	add    $0x62a2,%eax
 25e:	00 10                	add    %dl,(%rax)
 260:	00 06                	add    %al,(%rsi)
 262:	08 30                	or     %dh,(%rax)
 264:	02 00                	add    (%rax),%al
 266:	00 06                	add    %al,(%rsi)
 268:	08 ac 00 00 00 0c 95 	or     %ch,-0x6af40000(%rax,%rax,1)
 26f:	00 00                	add    %al,(%rax)
 271:	00 7d 02             	add    %bh,0x2(%rbp)
 274:	00 00                	add    %al,(%rax)
 276:	0d 86 00 00 00       	or     $0x86,%eax
 27b:	00 00                	add    %al,(%rax)
 27d:	06                   	(bad)  
 27e:	08 29                	or     %ch,(%rcx)
 280:	02 00                	add    (%rax),%al
 282:	00 0c 95 00 00 00 93 	add    %cl,-0x6d000000(,%rdx,4)
 289:	02 00                	add    (%rax),%al
 28b:	00 0d 86 00 00 00    	add    %cl,0x86(%rip)        # 317 <_init-0xb81>
 291:	13 00                	adc    (%rax),%eax
 293:	0e                   	(bad)  
 294:	34 01                	xor    $0x1,%al
 296:	00 00                	add    %al,(%rax)
 298:	0f 73                	(bad)  
 29a:	01 00                	add    %eax,(%rax)
 29c:	00 05 3b 01 93 02    	add    %al,0x293013b(%rip)        # 29303dd <_end+0x272c56d>
 2a2:	00 00                	add    %al,(%rax)
 2a4:	0f d7                	(bad)  
 2a6:	02 00                	add    (%rax),%al
 2a8:	00 05 3c 01 93 02    	add    %al,0x293013c(%rip)        # 29303ea <_end+0x272c57a>
 2ae:	00 00                	add    %al,(%rax)
 2b0:	0f 24                	(bad)  
 2b2:	01 00                	add    %eax,(%rax)
 2b4:	00 05 3d 01 93 02    	add    %al,0x293013d(%rip)        # 29303f7 <_end+0x272c587>
 2ba:	00 00                	add    %al,(%rax)
 2bc:	06                   	(bad)  
 2bd:	08 9c 00 00 00 07 bc 	or     %bl,-0x43f90000(%rax,%rax,1)
 2c4:	02 00                	add    (%rax),%al
 2c6:	00 10                	add    %dl,(%rax)
 2c8:	6e                   	outsb  %ds:(%rsi),(%dx)
 2c9:	02 00                	add    (%rax),%al
 2cb:	00 04 aa             	add    %al,(%rdx,%rbp,4)
 2ce:	67 02 00             	add    (%eax),%al
 2d1:	00 10                	add    %dl,(%rax)
 2d3:	d0 02                	rolb   (%rdx)
 2d5:	00 00                	add    %al,(%rax)
 2d7:	04 ab                	add    $0xab,%al
 2d9:	67 02 00             	add    (%eax),%al
 2dc:	00 10                	add    %dl,(%rax)
 2de:	e5 00                	in     $0x0,%eax
 2e0:	00 00                	add    %al,(%rax)
 2e2:	04 ac                	add    $0xac,%al
 2e4:	67 02 00             	add    (%eax),%al
 2e7:	00 10                	add    %dl,(%rax)
 2e9:	2d 00 00 00 06       	sub    $0x6000000,%eax
 2ee:	1a 62 00             	sbb    0x0(%rdx),%ah
 2f1:	00 00                	add    %al,(%rax)
 2f3:	0c c2                	or     $0xc2,%al
 2f5:	02 00                	add    (%rax),%al
 2f7:	00 fe                	add    %bh,%dh
 2f9:	02 00                	add    (%rax),%al
 2fb:	00 11                	add    %dl,(%rcx)
 2fd:	00 07                	add    %al,(%rdi)
 2ff:	f3 02 00             	repz add (%rax),%al
 302:	00 10                	add    %dl,(%rax)
 304:	ad                   	lods   %ds:(%rsi),%eax
 305:	02 00                	add    (%rax),%al
 307:	00 06                	add    %al,(%rsi)
 309:	1b fe                	sbb    %esi,%edi
 30b:	02 00                	add    (%rax),%al
 30d:	00 12                	add    %dl,(%rdx)
 30f:	85 00                	test   %eax,(%rax)
 311:	00 00                	add    %al,(%rax)
 313:	01 21                	add    %esp,(%rcx)
 315:	23 03                	and    (%rbx),%eax
 317:	00 00                	add    %al,(%rax)
 319:	09 03                	or     %eax,(%rbx)
 31b:	c0 37 20             	shlb   $0x20,(%rdi)
 31e:	00 00                	add    %al,(%rax)
 320:	00 00                	add    %al,(%rax)
 322:	00 06                	add    %al,(%rsi)
 324:	08 a1 00 00 00 13    	or     %ah,0x13000000(%rcx)
 32a:	cf                   	iret   
 32b:	01 00                	add    %eax,(%rax)
 32d:	00 01                	add    %al,(%rcx)
 32f:	23 62 00             	and    0x0(%rdx),%esp
 332:	00 00                	add    %al,(%rax)
 334:	00 12                	add    %dl,(%rdx)
 336:	00 00                	add    %al,(%rax)
 338:	00 00                	add    %al,(%rax)
 33a:	00 00                	add    %al,(%rax)
 33c:	50                   	push   %rax
 33d:	01 00                	add    %eax,(%rax)
 33f:	00 00                	add    %al,(%rax)
 341:	00 00                	add    %al,(%rax)
 343:	00 01                	add    %al,(%rcx)
 345:	9c                   	pushfq 
 346:	19 06                	sbb    %eax,(%rsi)
 348:	00 00                	add    %al,(%rax)
 34a:	14 6e                	adc    $0x6e,%al
 34c:	01 00                	add    %eax,(%rax)
 34e:	00 01                	add    %al,(%rcx)
 350:	23 62 00             	and    0x0(%rdx),%esp
 353:	00 00                	add    %al,(%rax)
 355:	00 00                	add    %al,(%rax)
 357:	00 00                	add    %al,(%rax)
 359:	14 47                	adc    $0x47,%al
 35b:	01 00                	add    %eax,(%rax)
 35d:	00 01                	add    %al,(%rcx)
 35f:	23 19                	and    (%rcx),%ebx
 361:	06                   	(bad)  
 362:	00 00                	add    %al,(%rax)
 364:	8b 00                	mov    (%rax),%eax
 366:	00 00                	add    %al,(%rax)
 368:	15 54 00 00 00       	adc    $0x54,%eax
 36d:	01 25 8f 00 00 00    	add    %esp,0x8f(%rip)        # 402 <_init-0xa96>
 373:	fd                   	std    
 374:	00 00                	add    %al,(%rax)
 376:	00 16                	add    %dl,(%rsi)
 378:	15 13 00 00 00       	adc    $0x13,%eax
 37d:	00 00                	add    %al,(%rax)
 37f:	00 1d 00 00 00 00    	add    %bl,0x0(%rip)        # 385 <_init-0xb13>
 385:	00 00                	add    %al,(%rax)
 387:	00 d0                	add    %dl,%al
 389:	03 00                	add    (%rax),%eax
 38b:	00 17                	add    %dl,(%rdi)
 38d:	4c 01 00             	add    %r8,(%rax)
 390:	00 07                	add    %al,(%rdi)
 392:	00 9d 03 00 00 18    	add    %bl,0x18000003(%rbp)
 398:	62                   	(bad)  
 399:	00 00                	add    %al,(%rax)
 39b:	00 00                	add    %al,(%rax)
 39d:	19 28                	sbb    %ebp,(%rax)
 39f:	13 00                	adc    (%rax),%eax
 3a1:	00 00                	add    %al,(%rax)
 3a3:	00 00                	add    %al,(%rax)
 3a5:	00 1f                	add    %bl,(%rdi)
 3a7:	06                   	(bad)  
 3a8:	00 00                	add    %al,(%rax)
 3aa:	bc 03 00 00 1a       	mov    $0x1a000003,%esp
 3af:	01 55 09             	add    %edx,0x9(%rbp)
 3b2:	03 e4                	add    %esp,%esp
 3b4:	21 00                	and    %eax,(%rax)
 3b6:	00 00                	add    %al,(%rax)
 3b8:	00 00                	add    %al,(%rax)
 3ba:	00 00                	add    %al,(%rax)
 3bc:	1b 32                	sbb    (%rdx),%esi
 3be:	13 00                	adc    (%rax),%eax
 3c0:	00 00                	add    %al,(%rax)
 3c2:	00 00                	add    %al,(%rax)
 3c4:	00 2b                	add    %ch,(%rbx)
 3c6:	06                   	(bad)  
 3c7:	00 00                	add    %al,(%rax)
 3c9:	1a 01                	sbb    (%rcx),%al
 3cb:	55                   	push   %rbp
 3cc:	01 38                	add    %edi,(%rax)
 3ce:	00 00                	add    %al,(%rax)
 3d0:	16                   	(bad)  
 3d1:	32 13                	xor    (%rbx),%dl
 3d3:	00 00                	add    %al,(%rax)
 3d5:	00 00                	add    %al,(%rax)
 3d7:	00 00                	add    %al,(%rax)
 3d9:	1e                   	(bad)  
 3da:	00 00                	add    %al,(%rax)
 3dc:	00 00                	add    %al,(%rax)
 3de:	00 00                	add    %al,(%rax)
 3e0:	00 29                	add    %ch,(%rcx)
 3e2:	04 00                	add    $0x0,%al
 3e4:	00 17                	add    %dl,(%rdi)
 3e6:	4c 01 00             	add    %r8,(%rax)
 3e9:	00 07                	add    %al,(%rdi)
 3eb:	00 f6                	add    %dh,%dh
 3ed:	03 00                	add    (%rax),%eax
 3ef:	00 18                	add    %bl,(%rax)
 3f1:	62                   	(bad)  
 3f2:	00 00                	add    %al,(%rax)
 3f4:	00 00                	add    %al,(%rax)
 3f6:	19 46 13             	sbb    %eax,0x13(%rsi)
 3f9:	00 00                	add    %al,(%rax)
 3fb:	00 00                	add    %al,(%rax)
 3fd:	00 00                	add    %al,(%rax)
 3ff:	1f                   	(bad)  
 400:	06                   	(bad)  
 401:	00 00                	add    %al,(%rax)
 403:	15 04 00 00 1a       	adc    $0x1a000004,%eax
 408:	01 55 09             	add    %edx,0x9(%rbp)
 40b:	03 01                	add    (%rcx),%eax
 40d:	22 00                	and    (%rax),%al
 40f:	00 00                	add    %al,(%rax)
 411:	00 00                	add    %al,(%rax)
 413:	00 00                	add    %al,(%rax)
 415:	1b 50 13             	sbb    0x13(%rax),%edx
 418:	00 00                	add    %al,(%rax)
 41a:	00 00                	add    %al,(%rax)
 41c:	00 00                	add    %al,(%rax)
 41e:	2b 06                	sub    (%rsi),%eax
 420:	00 00                	add    %al,(%rax)
 422:	1a 01                	sbb    (%rcx),%al
 424:	55                   	push   %rbp
 425:	01 38                	add    %edi,(%rax)
 427:	00 00                	add    %al,(%rax)
 429:	19 26                	sbb    %esp,(%rsi)
 42b:	12 00                	adc    (%rax),%al
 42d:	00 00                	add    %al,(%rax)
 42f:	00 00                	add    %al,(%rax)
 431:	00 36                	add    %dh,(%rsi)
 433:	06                   	(bad)  
 434:	00 00                	add    %al,(%rax)
 436:	48 04 00             	rex.W add $0x0,%al
 439:	00 1a                	add    %bl,(%rdx)
 43b:	01 54 09 03          	add    %edx,0x3(%rcx,%rcx,1)
 43f:	1a 26                	sbb    (%rsi),%ah
 441:	00 00                	add    %al,(%rax)
 443:	00 00                	add    %al,(%rax)
 445:	00 00                	add    %al,(%rax)
 447:	00 1c 3b             	add    %bl,(%rbx,%rdi,1)
 44a:	12 00                	adc    (%rax),%al
 44c:	00 00                	add    %al,(%rax)
 44e:	00 00                	add    %al,(%rax)
 450:	00 42 06             	add    %al,0x6(%rdx)
 453:	00 00                	add    %al,(%rax)
 455:	19 47 12             	sbb    %eax,0x12(%rdi)
 458:	00 00                	add    %al,(%rax)
 45a:	00 00                	add    %al,(%rax)
 45c:	00 00                	add    %al,(%rax)
 45e:	4d 06                	rex.WRB (bad) 
 460:	00 00                	add    %al,(%rax)
 462:	74 04                	je     468 <_init-0xa30>
 464:	00 00                	add    %al,(%rax)
 466:	1a 01                	sbb    (%rcx),%al
 468:	55                   	push   %rbp
 469:	09 03                	or     %eax,(%rbx)
 46b:	68 22 00 00 00       	pushq  $0x22
 470:	00 00                	add    %al,(%rax)
 472:	00 00                	add    %al,(%rax)
 474:	19 53 12             	sbb    %edx,0x12(%rbx)
 477:	00 00                	add    %al,(%rax)
 479:	00 00                	add    %al,(%rax)
 47b:	00 00                	add    %al,(%rax)
 47d:	4d 06                	rex.WRB (bad) 
 47f:	00 00                	add    %al,(%rax)
 481:	93                   	xchg   %eax,%ebx
 482:	04 00                	add    $0x0,%al
 484:	00 1a                	add    %bl,(%rdx)
 486:	01 55 09             	add    %edx,0x9(%rbp)
 489:	03 a8 22 00 00 00    	add    0x22(%rax),%ebp
 48f:	00 00                	add    %al,(%rax)
 491:	00 00                	add    %al,(%rax)
 493:	1c 58                	sbb    $0x58,%al
 495:	12 00                	adc    (%rax),%al
 497:	00 00                	add    %al,(%rax)
 499:	00 00                	add    %al,(%rax)
 49b:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 49f:	00 1c 60             	add    %bl,(%rax,%riz,2)
 4a2:	12 00                	adc    (%rax),%al
 4a4:	00 00                	add    %al,(%rax)
 4a6:	00 00                	add    %al,(%rax)
 4a8:	00 67 06             	add    %ah,0x6(%rdi)
 4ab:	00 00                	add    %al,(%rax)
 4ad:	1c 65                	sbb    $0x65,%al
 4af:	12 00                	adc    (%rax),%al
 4b1:	00 00                	add    %al,(%rax)
 4b3:	00 00                	add    %al,(%rax)
 4b5:	00 72 06             	add    %dh,0x6(%rdx)
 4b8:	00 00                	add    %al,(%rax)
 4ba:	19 71 12             	sbb    %esi,0x12(%rcx)
 4bd:	00 00                	add    %al,(%rax)
 4bf:	00 00                	add    %al,(%rax)
 4c1:	00 00                	add    %al,(%rax)
 4c3:	4d 06                	rex.WRB (bad) 
 4c5:	00 00                	add    %al,(%rax)
 4c7:	d9 04 00             	flds   (%rax,%rax,1)
 4ca:	00 1a                	add    %bl,(%rdx)
 4cc:	01 55 09             	add    %edx,0x9(%rbp)
 4cf:	03 d8                	add    %eax,%ebx
 4d1:	22 00                	and    (%rax),%al
 4d3:	00 00                	add    %al,(%rax)
 4d5:	00 00                	add    %al,(%rax)
 4d7:	00 00                	add    %al,(%rax)
 4d9:	1c 76                	sbb    $0x76,%al
 4db:	12 00                	adc    (%rax),%al
 4dd:	00 00                	add    %al,(%rax)
 4df:	00 00                	add    %al,(%rax)
 4e1:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 4e5:	00 1c 7e             	add    %bl,(%rsi,%rdi,2)
 4e8:	12 00                	adc    (%rax),%al
 4ea:	00 00                	add    %al,(%rax)
 4ec:	00 00                	add    %al,(%rax)
 4ee:	00 7d 06             	add    %bh,0x6(%rbp)
 4f1:	00 00                	add    %al,(%rax)
 4f3:	1c 83                	sbb    $0x83,%al
 4f5:	12 00                	adc    (%rax),%al
 4f7:	00 00                	add    %al,(%rax)
 4f9:	00 00                	add    %al,(%rax)
 4fb:	00 72 06             	add    %dh,0x6(%rdx)
 4fe:	00 00                	add    %al,(%rax)
 500:	19 8f 12 00 00 00    	sbb    %ecx,0x12(%rdi)
 506:	00 00                	add    %al,(%rax)
 508:	00 4d 06             	add    %cl,0x6(%rbp)
 50b:	00 00                	add    %al,(%rax)
 50d:	1f                   	(bad)  
 50e:	05 00 00 1a 01       	add    $0x11a0000,%eax
 513:	55                   	push   %rbp
 514:	09 03                	or     %eax,(%rbx)
 516:	1b 22                	sbb    (%rdx),%esp
 518:	00 00                	add    %al,(%rax)
 51a:	00 00                	add    %al,(%rax)
 51c:	00 00                	add    %al,(%rax)
 51e:	00 1c 94             	add    %bl,(%rsp,%rdx,4)
 521:	12 00                	adc    (%rax),%al
 523:	00 00                	add    %al,(%rax)
 525:	00 00                	add    %al,(%rax)
 527:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 52b:	00 1c 9c             	add    %bl,(%rsp,%rbx,4)
 52e:	12 00                	adc    (%rax),%al
 530:	00 00                	add    %al,(%rax)
 532:	00 00                	add    %al,(%rax)
 534:	00 88 06 00 00 1c    	add    %cl,0x1c000006(%rax)
 53a:	a1 12 00 00 00 00 00 	movabs 0x7200000000000012,%eax
 541:	00 72 
 543:	06                   	(bad)  
 544:	00 00                	add    %al,(%rax)
 546:	19 ad 12 00 00 00    	sbb    %ebp,0x12(%rbp)
 54c:	00 00                	add    %al,(%rax)
 54e:	00 4d 06             	add    %cl,0x6(%rbp)
 551:	00 00                	add    %al,(%rax)
 553:	65 05 00 00 1a 01    	gs add $0x11a0000,%eax
 559:	55                   	push   %rbp
 55a:	09 03                	or     %eax,(%rbx)
 55c:	39 22                	cmp    %esp,(%rdx)
 55e:	00 00                	add    %al,(%rax)
 560:	00 00                	add    %al,(%rax)
 562:	00 00                	add    %al,(%rax)
 564:	00 1c b2             	add    %bl,(%rdx,%rsi,4)
 567:	12 00                	adc    (%rax),%al
 569:	00 00                	add    %al,(%rax)
 56b:	00 00                	add    %al,(%rax)
 56d:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 571:	00 1c ba             	add    %bl,(%rdx,%rdi,4)
 574:	12 00                	adc    (%rax),%al
 576:	00 00                	add    %al,(%rax)
 578:	00 00                	add    %al,(%rax)
 57a:	00 93 06 00 00 1c    	add    %dl,0x1c000006(%rbx)
 580:	bf 12 00 00 00       	mov    $0x12,%edi
 585:	00 00                	add    %al,(%rax)
 587:	00 72 06             	add    %dh,0x6(%rdx)
 58a:	00 00                	add    %al,(%rax)
 58c:	19 cb                	sbb    %ecx,%ebx
 58e:	12 00                	adc    (%rax),%al
 590:	00 00                	add    %al,(%rax)
 592:	00 00                	add    %al,(%rax)
 594:	00 4d 06             	add    %cl,0x6(%rbp)
 597:	00 00                	add    %al,(%rax)
 599:	ab                   	stos   %eax,%es:(%rdi)
 59a:	05 00 00 1a 01       	add    $0x11a0000,%eax
 59f:	55                   	push   %rbp
 5a0:	09 03                	or     %eax,(%rbx)
 5a2:	08 23                	or     %ah,(%rbx)
 5a4:	00 00                	add    %al,(%rax)
 5a6:	00 00                	add    %al,(%rax)
 5a8:	00 00                	add    %al,(%rax)
 5aa:	00 1c d0             	add    %bl,(%rax,%rdx,8)
 5ad:	12 00                	adc    (%rax),%al
 5af:	00 00                	add    %al,(%rax)
 5b1:	00 00                	add    %al,(%rax)
 5b3:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 5b7:	00 1c d8             	add    %bl,(%rax,%rbx,8)
 5ba:	12 00                	adc    (%rax),%al
 5bc:	00 00                	add    %al,(%rax)
 5be:	00 00                	add    %al,(%rax)
 5c0:	00 9e 06 00 00 1c    	add    %bl,0x1c000006(%rsi)
 5c6:	dd 12                	fstl   (%rdx)
 5c8:	00 00                	add    %al,(%rax)
 5ca:	00 00                	add    %al,(%rax)
 5cc:	00 00                	add    %al,(%rax)
 5ce:	72 06                	jb     5d6 <_init-0x8c2>
 5d0:	00 00                	add    %al,(%rax)
 5d2:	19 e9                	sbb    %ebp,%ecx
 5d4:	12 00                	adc    (%rax),%al
 5d6:	00 00                	add    %al,(%rax)
 5d8:	00 00                	add    %al,(%rax)
 5da:	00 4d 06             	add    %cl,0x6(%rbp)
 5dd:	00 00                	add    %al,(%rax)
 5df:	f1                   	icebp  
 5e0:	05 00 00 1a 01       	add    $0x11a0000,%eax
 5e5:	55                   	push   %rbp
 5e6:	09 03                	or     %eax,(%rbx)
 5e8:	48 22 00             	rex.W and (%rax),%al
 5eb:	00 00                	add    %al,(%rax)
 5ed:	00 00                	add    %al,(%rax)
 5ef:	00 00                	add    %al,(%rax)
 5f1:	1c ee                	sbb    $0xee,%al
 5f3:	12 00                	adc    (%rax),%al
 5f5:	00 00                	add    %al,(%rax)
 5f7:	00 00                	add    %al,(%rax)
 5f9:	00 5c 06 00          	add    %bl,0x0(%rsi,%rax,1)
 5fd:	00 1c f6             	add    %bl,(%rsi,%rsi,8)
 600:	12 00                	adc    (%rax),%al
 602:	00 00                	add    %al,(%rax)
 604:	00 00                	add    %al,(%rax)
 606:	00 a9 06 00 00 1c    	add    %ch,0x1c000006(%rcx)
 60c:	fb                   	sti    
 60d:	12 00                	adc    (%rax),%al
 60f:	00 00                	add    %al,(%rax)
 611:	00 00                	add    %al,(%rax)
 613:	00 72 06             	add    %dh,0x6(%rdx)
 616:	00 00                	add    %al,(%rax)
 618:	00 06                	add    %al,(%rsi)
 61a:	08 8f 00 00 00 1d    	or     %cl,0x1d000000(%rdi)
 620:	11 01                	adc    %eax,(%rcx)
 622:	00 00                	add    %al,(%rax)
 624:	11 01                	adc    %eax,(%rcx)
 626:	00 00                	add    %al,(%rax)
 628:	04 6c                	add    $0x6c,%al
 62a:	01 1e                	add    %ebx,(%rsi)
 62c:	4c 01 00             	add    %r8,(%rax)
 62f:	00 4c 01 00          	add    %cl,0x0(%rcx,%rax,1)
 633:	00 07                	add    %al,(%rdi)
 635:	00 1d 0c 00 00 00    	add    %bl,0xc(%rip)        # 647 <_init-0x851>
 63b:	0c 00                	or     $0x0,%al
 63d:	00 00                	add    %al,(%rax)
 63f:	04 12                	add    $0x12,%al
 641:	01 1e                	add    %ebx,(%rsi)
 643:	4e 02 00             	rex.WRX add (%rax),%r8b
 646:	00 4e 02             	add    %cl,0x2(%rsi)
 649:	00 00                	add    %al,(%rax)
 64b:	08 09                	or     %cl,(%rcx)
 64d:	1f                   	(bad)  
 64e:	28 00                	sub    %al,(%rax)
 650:	00 00                	add    %al,(%rax)
 652:	1e                   	(bad)  
 653:	00 00                	add    %al,(%rax)
 655:	00 07                	add    %al,(%rdi)
 657:	00 28                	add    %ch,(%rax)
 659:	00 00                	add    %al,(%rax)
 65b:	00 1e                	add    %bl,(%rsi)
 65d:	d3 00                	roll   %cl,(%rax)
 65f:	00 00                	add    %al,(%rax)
 661:	d3 00                	roll   %cl,(%rax)
 663:	00 00                	add    %al,(%rax)
 665:	08 08                	or     %cl,(%rax)
 667:	1e                   	(bad)  
 668:	dd 00                	fldl   (%rax)
 66a:	00 00                	add    %al,(%rax)
 66c:	dd 00                	fldl   (%rax)
 66e:	00 00                	add    %al,(%rax)
 670:	09 04 1e             	or     %eax,(%rsi,%rbx,1)
 673:	03 01                	add    (%rcx),%eax
 675:	00 00                	add    %al,(%rax)
 677:	03 01                	add    (%rcx),%eax
 679:	00 00                	add    %al,(%rax)
 67b:	08 0b                	or     %cl,(%rbx)
 67d:	1e                   	(bad)  
 67e:	0f 02 00             	lar    (%rax),%eax
 681:	00 0f                	add    %cl,(%rdi)
 683:	02 00                	add    (%rax),%al
 685:	00 09                	add    %cl,(%rcx)
 687:	05 1e 17 02 00       	add    $0x2171e,%eax
 68c:	00 17                	add    %dl,(%rdi)
 68e:	02 00                	add    (%rax),%al
 690:	00 09                	add    %cl,(%rcx)
 692:	06                   	(bad)  
 693:	1e                   	(bad)  
 694:	ec                   	in     (%dx),%al
 695:	00 00                	add    %al,(%rax)
 697:	00 ec                	add    %ch,%ah
 699:	00 00                	add    %al,(%rax)
 69b:	00 09                	add    %cl,(%rcx)
 69d:	07                   	(bad)  
 69e:	1e                   	(bad)  
 69f:	2d 02 00 00 2d       	sub    $0x2d000002,%eax
 6a4:	02 00                	add    (%rax),%al
 6a6:	00 09                	add    %cl,(%rcx)
 6a8:	08 1e                	or     %bl,(%rsi)
 6aa:	c1 02 00             	roll   $0x0,(%rdx)
 6ad:	00 c1                	add    %al,%cl
 6af:	02 00                	add    (%rax),%al
 6b1:	00 09                	add    %cl,(%rcx)
 6b3:	09 00                	or     %eax,(%rax)

Disassembly of section .debug_abbrev:

0000000000000000 <.debug_abbrev>:
   0:	01 11                	add    %edx,(%rcx)
   2:	01 25 0e 13 0b 03    	add    %esp,0x30b130e(%rip)        # 30b1316 <_end+0x2ead4a6>
   8:	0e                   	(bad)  
   9:	1b 0e                	sbb    (%rsi),%ecx
   b:	11 01                	adc    %eax,(%rcx)
   d:	12 07                	adc    (%rdi),%al
   f:	10 17                	adc    %dl,(%rdi)
  11:	00 00                	add    %al,(%rax)
  13:	02 16                	add    (%rsi),%dl
  15:	00 03                	add    %al,(%rbx)
  17:	0e                   	(bad)  
  18:	3a 0b                	cmp    (%rbx),%cl
  1a:	3b 0b                	cmp    (%rbx),%ecx
  1c:	49 13 00             	adc    (%r8),%rax
  1f:	00 03                	add    %al,(%rbx)
  21:	24 00                	and    $0x0,%al
  23:	0b 0b                	or     (%rbx),%ecx
  25:	3e 0b 03             	or     %ds:(%rbx),%eax
  28:	0e                   	(bad)  
  29:	00 00                	add    %al,(%rax)
  2b:	04 24                	add    $0x24,%al
  2d:	00 0b                	add    %cl,(%rbx)
  2f:	0b 3e                	or     (%rsi),%edi
  31:	0b 03                	or     (%rbx),%eax
  33:	08 00                	or     %al,(%rax)
  35:	00 05 0f 00 0b 0b    	add    %al,0xb0b000f(%rip)        # b0b004a <_end+0xaeac1da>
  3b:	00 00                	add    %al,(%rax)
  3d:	06                   	(bad)  
  3e:	0f 00 0b             	str    (%rbx)
  41:	0b 49 13             	or     0x13(%rcx),%ecx
  44:	00 00                	add    %al,(%rax)
  46:	07                   	(bad)  
  47:	26 00 49 13          	add    %cl,%es:0x13(%rcx)
  4b:	00 00                	add    %al,(%rax)
  4d:	08 13                	or     %dl,(%rbx)
  4f:	01 03                	add    %eax,(%rbx)
  51:	0e                   	(bad)  
  52:	0b 0b                	or     (%rbx),%ecx
  54:	3a 0b                	cmp    (%rbx),%cl
  56:	3b 0b                	cmp    (%rbx),%ecx
  58:	01 13                	add    %edx,(%rbx)
  5a:	00 00                	add    %al,(%rax)
  5c:	09 0d 00 03 0e 3a    	or     %ecx,0x3a0e0300(%rip)        # 3a0e0362 <_end+0x39edc4f2>
  62:	0b 3b                	or     (%rbx),%edi
  64:	0b 49 13             	or     0x13(%rcx),%ecx
  67:	38 0b                	cmp    %cl,(%rbx)
  69:	00 00                	add    %al,(%rax)
  6b:	0a 0d 00 03 0e 3a    	or     0x3a0e0300(%rip),%cl        # 3a0e0371 <_end+0x39edc501>
  71:	0b 3b                	or     (%rbx),%edi
  73:	05 49 13 38 0b       	add    $0xb381349,%eax
  78:	00 00                	add    %al,(%rax)
  7a:	0b 16                	or     (%rsi),%edx
  7c:	00 03                	add    %al,(%rbx)
  7e:	0e                   	(bad)  
  7f:	3a 0b                	cmp    (%rbx),%cl
  81:	3b 0b                	cmp    (%rbx),%ecx
  83:	00 00                	add    %al,(%rax)
  85:	0c 01                	or     $0x1,%al
  87:	01 49 13             	add    %ecx,0x13(%rcx)
  8a:	01 13                	add    %edx,(%rbx)
  8c:	00 00                	add    %al,(%rax)
  8e:	0d 21 00 49 13       	or     $0x13490021,%eax
  93:	2f                   	(bad)  
  94:	0b 00                	or     (%rax),%eax
  96:	00 0e                	add    %cl,(%rsi)
  98:	13 00                	adc    (%rax),%eax
  9a:	03 0e                	add    (%rsi),%ecx
  9c:	3c 19                	cmp    $0x19,%al
  9e:	00 00                	add    %al,(%rax)
  a0:	0f 34                	sysenter 
  a2:	00 03                	add    %al,(%rbx)
  a4:	0e                   	(bad)  
  a5:	3a 0b                	cmp    (%rbx),%cl
  a7:	3b 05 49 13 3f 19    	cmp    0x193f1349(%rip),%eax        # 193f13f6 <_end+0x191ed586>
  ad:	3c 19                	cmp    $0x19,%al
  af:	00 00                	add    %al,(%rax)
  b1:	10 34 00             	adc    %dh,(%rax,%rax,1)
  b4:	03 0e                	add    (%rsi),%ecx
  b6:	3a 0b                	cmp    (%rbx),%cl
  b8:	3b 0b                	cmp    (%rbx),%ecx
  ba:	49 13 3f             	adc    (%r15),%rdi
  bd:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
  c0:	00 00                	add    %al,(%rax)
  c2:	11 21                	adc    %esp,(%rcx)
  c4:	00 00                	add    %al,(%rax)
  c6:	00 12                	add    %dl,(%rdx)
  c8:	34 00                	xor    $0x0,%al
  ca:	03 0e                	add    (%rsi),%ecx
  cc:	3a 0b                	cmp    (%rbx),%cl
  ce:	3b 0b                	cmp    (%rbx),%ecx
  d0:	49 13 3f             	adc    (%r15),%rdi
  d3:	19 02                	sbb    %eax,(%rdx)
  d5:	18 00                	sbb    %al,(%rax)
  d7:	00 13                	add    %dl,(%rbx)
  d9:	2e 01 3f             	add    %edi,%cs:(%rdi)
  dc:	19 03                	sbb    %eax,(%rbx)
  de:	0e                   	(bad)  
  df:	3a 0b                	cmp    (%rbx),%cl
  e1:	3b 0b                	cmp    (%rbx),%ecx
  e3:	27                   	(bad)  
  e4:	19 49 13             	sbb    %ecx,0x13(%rcx)
  e7:	11 01                	adc    %eax,(%rcx)
  e9:	12 07                	adc    (%rdi),%al
  eb:	40 18 97 42 19 01 13 	sbb    %dl,0x13011942(%rdi)
  f2:	00 00                	add    %al,(%rax)
  f4:	14 05                	adc    $0x5,%al
  f6:	00 03                	add    %al,(%rbx)
  f8:	0e                   	(bad)  
  f9:	3a 0b                	cmp    (%rbx),%cl
  fb:	3b 0b                	cmp    (%rbx),%ecx
  fd:	49 13 02             	adc    (%r10),%rax
 100:	17                   	(bad)  
 101:	00 00                	add    %al,(%rax)
 103:	15 34 00 03 0e       	adc    $0xe030034,%eax
 108:	3a 0b                	cmp    (%rbx),%cl
 10a:	3b 0b                	cmp    (%rbx),%ecx
 10c:	49 13 02             	adc    (%r10),%rax
 10f:	17                   	(bad)  
 110:	00 00                	add    %al,(%rax)
 112:	16                   	(bad)  
 113:	0b 01                	or     (%rcx),%eax
 115:	11 01                	adc    %eax,(%rcx)
 117:	12 07                	adc    (%rdi),%al
 119:	01 13                	add    %edx,(%rbx)
 11b:	00 00                	add    %al,(%rax)
 11d:	17                   	(bad)  
 11e:	2e 01 3f             	add    %edi,%cs:(%rdi)
 121:	19 03                	sbb    %eax,(%rbx)
 123:	0e                   	(bad)  
 124:	3a 0b                	cmp    (%rbx),%cl
 126:	3b 0b                	cmp    (%rbx),%ecx
 128:	27                   	(bad)  
 129:	19 87 01 19 3c 19    	sbb    %eax,0x193c1901(%rdi)
 12f:	01 13                	add    %edx,(%rbx)
 131:	00 00                	add    %al,(%rax)
 133:	18 05 00 49 13 00    	sbb    %al,0x134900(%rip)        # 134a39 <__FRAME_END__+0x131cc9>
 139:	00 19                	add    %bl,(%rcx)
 13b:	89 82 01 01 11 01    	mov    %eax,0x1110101(%rdx)
 141:	31 13                	xor    %edx,(%rbx)
 143:	01 13                	add    %edx,(%rbx)
 145:	00 00                	add    %al,(%rax)
 147:	1a 8a 82 01 00 02    	sbb    0x2000182(%rdx),%cl
 14d:	18 91 42 18 00 00    	sbb    %dl,0x1842(%rcx)
 153:	1b 89 82 01 01 11    	sbb    0x11010182(%rcx),%ecx
 159:	01 31                	add    %esi,(%rcx)
 15b:	13 00                	adc    (%rax),%eax
 15d:	00 1c 89             	add    %bl,(%rcx,%rcx,4)
 160:	82                   	(bad)  
 161:	01 00                	add    %eax,(%rax)
 163:	11 01                	adc    %eax,(%rcx)
 165:	31 13                	xor    %edx,(%rbx)
 167:	00 00                	add    %al,(%rax)
 169:	1d 2e 00 3f 19       	sbb    $0x193f002e,%eax
 16e:	3c 19                	cmp    $0x19,%al
 170:	6e                   	outsb  %ds:(%rsi),(%dx)
 171:	0e                   	(bad)  
 172:	03 0e                	add    (%rsi),%ecx
 174:	3a 0b                	cmp    (%rbx),%cl
 176:	3b 05 00 00 1e 2e    	cmp    0x2e1e0000(%rip),%eax        # 2e1e017c <_end+0x2dfdc30c>
 17c:	00 3f                	add    %bh,(%rdi)
 17e:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 181:	6e                   	outsb  %ds:(%rsi),(%dx)
 182:	0e                   	(bad)  
 183:	03 0e                	add    (%rsi),%ecx
 185:	3a 0b                	cmp    (%rbx),%cl
 187:	3b 0b                	cmp    (%rbx),%ecx
 189:	00 00                	add    %al,(%rax)
 18b:	1f                   	(bad)  
 18c:	2e 00 3f             	add    %bh,%cs:(%rdi)
 18f:	19 3c 19             	sbb    %edi,(%rcx,%rbx,1)
 192:	6e                   	outsb  %ds:(%rsi),(%dx)
 193:	0e                   	(bad)  
 194:	03 0e                	add    (%rsi),%ecx
 196:	3a 0b                	cmp    (%rbx),%cl
 198:	3b 0b                	cmp    (%rbx),%ecx
 19a:	6e                   	outsb  %ds:(%rsi),(%dx)
 19b:	0e                   	(bad)  
 19c:	00 00                	add    %al,(%rax)
	...

Disassembly of section .debug_line:

0000000000000000 <.debug_line>:
   0:	21 01                	and    %eax,(%rcx)
   2:	00 00                	add    %al,(%rax)
   4:	02 00                	add    (%rax),%al
   6:	da 00                	fiaddl (%rax)
   8:	00 00                	add    %al,(%rax)
   a:	01 01                	add    %eax,(%rcx)
   c:	fb                   	sti    
   d:	0e                   	(bad)  
   e:	0d 00 01 01 01       	or     $0x1010100,%eax
  13:	01 00                	add    %eax,(%rax)
  15:	00 00                	add    %al,(%rax)
  17:	01 00                	add    %eax,(%rax)
  19:	00 01                	add    %al,(%rcx)
  1b:	2f                   	(bad)  
  1c:	75 73                	jne    91 <_init-0xe07>
  1e:	72 2f                	jb     4f <_init-0xe49>
  20:	6c                   	insb   (%dx),%es:(%rdi)
  21:	69 62 2f 67 63 63 2f 	imul   $0x2f636367,0x2f(%rdx),%esp
  28:	78 38                	js     62 <_init-0xe36>
  2a:	36 5f                	ss pop %rdi
  2c:	36 34 2d             	ss xor $0x2d,%al
  2f:	6c                   	insb   (%dx),%es:(%rdi)
  30:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  37:	75 2f                	jne    68 <_init-0xe30>
  39:	36 2f                	ss (bad) 
  3b:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  42:	00 2f                	add    %ch,(%rdi)
  44:	75 73                	jne    b9 <_init-0xddf>
  46:	72 2f                	jb     77 <_init-0xe21>
  48:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  4f:	2f                   	(bad)  
  50:	78 38                	js     8a <_init-0xe0e>
  52:	36 5f                	ss pop %rdi
  54:	36 34 2d             	ss xor $0x2d,%al
  57:	6c                   	insb   (%dx),%es:(%rdi)
  58:	69 6e 75 78 2d 67 6e 	imul   $0x6e672d78,0x75(%rsi),%ebp
  5f:	75 2f                	jne    90 <_init-0xe08>
  61:	62                   	(bad)  
  62:	69 74 73 00 2f 75 73 	imul   $0x7273752f,0x0(%rbx,%rsi,2),%esi
  69:	72 
  6a:	2f                   	(bad)  
  6b:	69 6e 63 6c 75 64 65 	imul   $0x6564756c,0x63(%rsi),%ebp
  72:	00 00                	add    %al,(%rax)
  74:	62                   	(bad)  
  75:	6f                   	outsl  %ds:(%rsi),(%dx)
  76:	6d                   	insl   (%dx),%es:(%rdi)
  77:	62                   	(bad)  
  78:	2e 63 00             	movslq %cs:(%rax),%eax
  7b:	00 00                	add    %al,(%rax)
  7d:	00 73 74             	add    %dh,0x74(%rbx)
  80:	64 64 65 66 2e 68 00 	fs fs gs cs pushw $0x100
  87:	01 
  88:	00 00                	add    %al,(%rax)
  8a:	74 79                	je     105 <_init-0xd93>
  8c:	70 65                	jo     f3 <_init-0xda5>
  8e:	73 2e                	jae    be <_init-0xdda>
  90:	68 00 02 00 00       	pushq  $0x200
  95:	73 74                	jae    10b <_init-0xd8d>
  97:	64 69 6f 2e 68 00 03 	imul   $0x30068,%fs:0x2e(%rdi),%ebp
  9e:	00 
  9f:	00 6c 69 62          	add    %ch,0x62(%rcx,%rbp,2)
  a3:	69 6f 2e 68 00 03 00 	imul   $0x30068,0x2e(%rdi),%ebp
  aa:	00 73 79             	add    %dh,0x79(%rbx)
  ad:	73 5f                	jae    10e <_init-0xd8a>
  af:	65 72 72             	gs jb  124 <_init-0xd74>
  b2:	6c                   	insb   (%dx),%es:(%rdi)
  b3:	69 73 74 2e 68 00 02 	imul   $0x200682e,0x74(%rbx),%esi
  ba:	00 00                	add    %al,(%rax)
  bc:	3c 62                	cmp    $0x62,%al
  be:	75 69                	jne    129 <_init-0xd6f>
  c0:	6c                   	insb   (%dx),%es:(%rdi)
  c1:	74 2d                	je     f0 <_init-0xda8>
  c3:	69 6e 3e 00 00 00 00 	imul   $0x0,0x3e(%rsi),%ebp
  ca:	73 75                	jae    141 <_init-0xd57>
  cc:	70 70                	jo     13e <_init-0xd5a>
  ce:	6f                   	outsl  %ds:(%rsi),(%dx)
  cf:	72 74                	jb     145 <_init-0xd53>
  d1:	2e 68 00 00 00 00    	cs pushq $0x0
  d7:	70 68                	jo     141 <_init-0xd57>
  d9:	61                   	(bad)  
  da:	73 65                	jae    141 <_init-0xd57>
  dc:	73 2e                	jae    10c <_init-0xd8c>
  de:	68 00 00 00 00       	pushq  $0x0
  e3:	00 00                	add    %al,(%rax)
  e5:	09 02                	or     %eax,(%rdx)
  e7:	00 12                	add    %dl,(%rdx)
  e9:	00 00                	add    %al,(%rax)
  eb:	00 00                	add    %al,(%rax)
  ed:	00 00                	add    %al,(%rax)
  ef:	03 23                	add    (%rbx),%esp
  f1:	01 28                	add    %ebp,(%rax)
  f3:	c2 91 03             	retq   $0x391
  f6:	0d 08 e4 5a bb       	or     $0xbb5ae408,%eax
  fb:	bd 59 83 5a be       	mov    $0xbe5a8359,%ebp
 100:	59                   	pop    %rcx
 101:	83 59 be 59          	sbbl   $0x59,-0x42(%rcx)
 105:	83 59 bd 59          	sbbl   $0x59,-0x43(%rcx)
 109:	83 59 bd 59          	sbbl   $0x59,-0x43(%rcx)
 10d:	83 59 be 59          	sbbl   $0x59,-0x42(%rcx)
 111:	83 5e 03 bb          	sbbl   $0xffffffbb,0x3(%rsi)
 115:	7f 74                	jg     18b <_init-0xd0d>
 117:	03 09                	add    (%rcx),%ecx
 119:	08 2e                	or     %ch,(%rsi)
 11b:	08 2f                	or     %ch,(%rdi)
 11d:	a4                   	movsb  %ds:(%rsi),%es:(%rdi)
 11e:	08 3d 02 0a 00 01    	or     %bh,0x1000a02(%rip)        # 1000b26 <_end+0xdfccb6>
 124:	01                   	.byte 0x1

Disassembly of section .debug_str:

0000000000000000 <.debug_str>:
   0:	5f                   	pop    %rdi
   1:	49                   	rex.WB
   2:	4f 5f                	rex.WRXB pop %r15
   4:	62                   	(bad)  
   5:	75 66                	jne    6d <_init-0xe2b>
   7:	5f                   	pop    %rdi
   8:	65 6e                	outsb  %gs:(%rsi),(%dx)
   a:	64 00 66 6f          	add    %ah,%fs:0x6f(%rsi)
   e:	70 65                	jo     75 <_init-0xe23>
  10:	6e                   	outsb  %ds:(%rsi),(%dx)
  11:	00 5f 6f             	add    %bl,0x6f(%rdi)
  14:	6c                   	insb   (%dx),%es:(%rdi)
  15:	64 5f                	fs pop %rdi
  17:	6f                   	outsl  %ds:(%rsi),(%dx)
  18:	66 66 73 65          	data16 data16 jae 81 <_init-0xe17>
  1c:	74 00                	je     1e <_init-0xe7a>
  1e:	5f                   	pop    %rdi
  1f:	5f                   	pop    %rdi
  20:	62                   	(bad)  
  21:	75 69                	jne    8c <_init-0xe0c>
  23:	6c                   	insb   (%dx),%es:(%rdi)
  24:	74 69                	je     8f <_init-0xe09>
  26:	6e                   	outsb  %ds:(%rsi),(%dx)
  27:	5f                   	pop    %rdi
  28:	70 75                	jo     9f <_init-0xdf9>
  2a:	74 73                	je     9f <_init-0xdf9>
  2c:	00 73 79             	add    %dh,0x79(%rbx)
  2f:	73 5f                	jae    90 <_init-0xe08>
  31:	6e                   	outsb  %ds:(%rsi),(%dx)
  32:	65 72 72             	gs jb  a7 <_init-0xdf1>
  35:	00 5f 49             	add    %bl,0x49(%rdi)
  38:	4f 5f                	rex.WRXB pop %r15
  3a:	73 61                	jae    9d <_init-0xdfb>
  3c:	76 65                	jbe    a3 <_init-0xdf5>
  3e:	5f                   	pop    %rdi
  3f:	65 6e                	outsb  %gs:(%rsi),(%dx)
  41:	64 00 73 68          	add    %dh,%fs:0x68(%rbx)
  45:	6f                   	outsl  %ds:(%rsi),(%dx)
  46:	72 74                	jb     bc <_init-0xddc>
  48:	20 69 6e             	and    %ch,0x6e(%rcx)
  4b:	74 00                	je     4d <_init-0xe4b>
  4d:	73 69                	jae    b8 <_init-0xde0>
  4f:	7a 65                	jp     b6 <_init-0xde2>
  51:	5f                   	pop    %rdi
  52:	74 00                	je     54 <_init-0xe44>
  54:	69 6e 70 75 74 00 73 	imul   $0x73007475,0x70(%rsi),%ebp
  5b:	69 7a 65 74 79 70 65 	imul   $0x65707974,0x65(%rdx),%edi
  62:	00 5f 49             	add    %bl,0x49(%rdi)
  65:	4f 5f                	rex.WRXB pop %r15
  67:	77 72                	ja     db <_init-0xdbd>
  69:	69 74 65 5f 70 74 72 	imul   $0x727470,0x5f(%rbp,%riz,2),%esi
  70:	00 
  71:	62                   	(bad)  
  72:	6f                   	outsl  %ds:(%rsi),(%dx)
  73:	6d                   	insl   (%dx),%es:(%rdi)
  74:	62                   	(bad)  
  75:	2e 63 00             	movslq %cs:(%rax),%eax
  78:	5f                   	pop    %rdi
  79:	49                   	rex.WB
  7a:	4f 5f                	rex.WRXB pop %r15
  7c:	62                   	(bad)  
  7d:	75 66                	jne    e5 <_init-0xdb3>
  7f:	5f                   	pop    %rdi
  80:	62 61                	(bad)  
  82:	73 65                	jae    e9 <_init-0xdaf>
  84:	00 69 6e             	add    %ch,0x6e(%rcx)
  87:	66 69 6c 65 00 5f 6d 	imul   $0x6d5f,0x0(%rbp,%riz,2),%bp
  8e:	61                   	(bad)  
  8f:	72 6b                	jb     fc <_init-0xd9c>
  91:	65 72 73             	gs jb  107 <_init-0xd91>
  94:	00 5f 49             	add    %bl,0x49(%rdi)
  97:	4f 5f                	rex.WRXB pop %r15
  99:	72 65                	jb     100 <_init-0xd98>
  9b:	61                   	(bad)  
  9c:	64 5f                	fs pop %rdi
  9e:	65 6e                	outsb  %gs:(%rsi),(%dx)
  a0:	64 00 2f             	add    %ch,%fs:(%rdi)
  a3:	68 6f 6d 65 2f       	pushq  $0x2f656d6f
  a8:	73 6a                	jae    114 <_init-0xd84>
  aa:	74 75                	je     121 <_init-0xd77>
  ac:	2d 69 63 73 2d       	sub    $0x2d736369,%eax
  b1:	73 76                	jae    129 <_init-0xd6f>
  b3:	6e                   	outsb  %ds:(%rsi),(%dx)
  b4:	2f                   	(bad)  
  b5:	61                   	(bad)  
  b6:	72 63                	jb     11b <_init-0xd7d>
  b8:	68 76 69 65 2f       	pushq  $0x2f656976
  bd:	53                   	push   %rbx
  be:	45 31 38             	xor    %r15d,(%r8)
  c1:	2d 6c 61 62 32       	sub    $0x3262616c,%eax
  c6:	2f                   	(bad)  
  c7:	62                   	(bad)  
  c8:	6f                   	outsl  %ds:(%rsi),(%dx)
  c9:	6d                   	insl   (%dx),%es:(%rdi)
  ca:	62                   	(bad)  
  cb:	6c                   	insb   (%dx),%es:(%rdi)
  cc:	61                   	(bad)  
  cd:	62                   	(bad)  
  ce:	2f                   	(bad)  
  cf:	73 72                	jae    143 <_init-0xd55>
  d1:	63 00                	movslq (%rax),%eax
  d3:	72 65                	jb     13a <_init-0xd5e>
  d5:	61                   	(bad)  
  d6:	64 5f                	fs pop %rdi
  d8:	6c                   	insb   (%dx),%es:(%rdi)
  d9:	69 6e 65 00 70 68 61 	imul   $0x61687000,0x65(%rsi),%ebp
  e0:	73 65                	jae    147 <_init-0xd51>
  e2:	5f                   	pop    %rdi
  e3:	31 00                	xor    %eax,(%rax)
  e5:	73 74                	jae    15b <_init-0xd3d>
  e7:	64 65 72 72          	fs gs jb 15d <_init-0xd3b>
  eb:	00 70 68             	add    %dh,0x68(%rax)
  ee:	61                   	(bad)  
  ef:	73 65                	jae    156 <_init-0xd42>
  f1:	5f                   	pop    %rdi
  f2:	34 00                	xor    $0x0,%al
  f4:	5f                   	pop    %rdi
  f5:	6c                   	insb   (%dx),%es:(%rdi)
  f6:	6f                   	outsl  %ds:(%rsi),(%dx)
  f7:	63 6b 00             	movslq 0x0(%rbx),%ebp
  fa:	6c                   	insb   (%dx),%es:(%rdi)
  fb:	6f                   	outsl  %ds:(%rsi),(%dx)
  fc:	6e                   	outsb  %ds:(%rsi),(%dx)
  fd:	67 20 69 6e          	and    %ch,0x6e(%ecx)
 101:	74 00                	je     103 <_init-0xd95>
 103:	70 68                	jo     16d <_init-0xd2b>
 105:	61                   	(bad)  
 106:	73 65                	jae    16d <_init-0xd2b>
 108:	5f                   	pop    %rdi
 109:	64 65 66 75 73       	fs gs data16 jne 181 <_init-0xd17>
 10e:	65 64 00 70 72       	gs add %dh,%fs:0x72(%rax)
 113:	69 6e 74 66 00 5f 63 	imul   $0x635f0066,0x74(%rsi),%ebp
 11a:	75 72                	jne    18e <_init-0xd0a>
 11c:	5f                   	pop    %rdi
 11d:	63 6f 6c             	movslq 0x6c(%rdi),%ebp
 120:	75 6d                	jne    18f <_init-0xd09>
 122:	6e                   	outsb  %ds:(%rsi),(%dx)
 123:	00 5f 49             	add    %bl,0x49(%rdi)
 126:	4f 5f                	rex.WRXB pop %r15
 128:	32 5f 31             	xor    0x31(%rdi),%bl
 12b:	5f                   	pop    %rdi
 12c:	73 74                	jae    1a2 <_init-0xcf6>
 12e:	64 65 72 72          	fs gs jb 1a4 <_init-0xcf4>
 132:	5f                   	pop    %rdi
 133:	00 5f 49             	add    %bl,0x49(%rdi)
 136:	4f 5f                	rex.WRXB pop %r15
 138:	46                   	rex.RX
 139:	49                   	rex.WB
 13a:	4c                   	rex.WR
 13b:	45 5f                	rex.RB pop %r15
 13d:	70 6c                	jo     1ab <_init-0xced>
 13f:	75 73                	jne    1b4 <_init-0xce4>
 141:	00 5f 70             	add    %bl,0x70(%rdi)
 144:	6f                   	outsl  %ds:(%rsi),(%dx)
 145:	73 00                	jae    147 <_init-0xd51>
 147:	61                   	(bad)  
 148:	72 67                	jb     1b1 <_init-0xce7>
 14a:	76 00                	jbe    14c <_init-0xd4c>
 14c:	65 78 69             	gs js  1b8 <_init-0xce0>
 14f:	74 00                	je     151 <_init-0xd47>
 151:	5f                   	pop    %rdi
 152:	73 62                	jae    1b6 <_init-0xce2>
 154:	75 66                	jne    1bc <_init-0xcdc>
 156:	00 5f 49             	add    %bl,0x49(%rdi)
 159:	4f 5f                	rex.WRXB pop %r15
 15b:	46                   	rex.RX
 15c:	49                   	rex.WB
 15d:	4c                   	rex.WR
 15e:	45 00 75 6e          	add    %r14b,0x6e(%r13)
 162:	73 69                	jae    1cd <_init-0xccb>
 164:	67 6e                	outsb  %ds:(%esi),(%dx)
 166:	65 64 20 63 68       	gs and %ah,%fs:0x68(%rbx)
 16b:	61                   	(bad)  
 16c:	72 00                	jb     16e <_init-0xd2a>
 16e:	61                   	(bad)  
 16f:	72 67                	jb     1d8 <_init-0xcc0>
 171:	63 00                	movslq (%rax),%eax
 173:	5f                   	pop    %rdi
 174:	49                   	rex.WB
 175:	4f 5f                	rex.WRXB pop %r15
 177:	32 5f 31             	xor    0x31(%rdi),%bl
 17a:	5f                   	pop    %rdi
 17b:	73 74                	jae    1f1 <_init-0xca7>
 17d:	64 69 6e 5f 00 5f 49 	imul   $0x4f495f00,%fs:0x5f(%rsi),%ebp
 184:	4f 
 185:	5f                   	pop    %rdi
 186:	6d                   	insl   (%dx),%es:(%rdi)
 187:	61                   	(bad)  
 188:	72 6b                	jb     1f5 <_init-0xca3>
 18a:	65 72 00             	gs jb  18d <_init-0xd0b>
 18d:	5f                   	pop    %rdi
 18e:	73 68                	jae    1f8 <_init-0xca0>
 190:	6f                   	outsl  %ds:(%rsi),(%dx)
 191:	72 74                	jb     207 <_init-0xc91>
 193:	62                   	(bad)  
 194:	75 66                	jne    1fc <_init-0xc9c>
 196:	00 5f 49             	add    %bl,0x49(%rdi)
 199:	4f 5f                	rex.WRXB pop %r15
 19b:	77 72                	ja     20f <_init-0xc89>
 19d:	69 74 65 5f 62 61 73 	imul   $0x65736162,0x5f(%rbp,%riz,2),%esi
 1a4:	65 
 1a5:	00 5f 75             	add    %bl,0x75(%rdi)
 1a8:	6e                   	outsb  %ds:(%rsi),(%dx)
 1a9:	75 73                	jne    21e <_init-0xc7a>
 1ab:	65 64 32 00          	gs xor %fs:(%rax),%al
 1af:	5f                   	pop    %rdi
 1b0:	49                   	rex.WB
 1b1:	4f 5f                	rex.WRXB pop %r15
 1b3:	72 65                	jb     21a <_init-0xc7e>
 1b5:	61                   	(bad)  
 1b6:	64 5f                	fs pop %rdi
 1b8:	70 74                	jo     22e <_init-0xc6a>
 1ba:	72 00                	jb     1bc <_init-0xcdc>
 1bc:	73 68                	jae    226 <_init-0xc72>
 1be:	6f                   	outsl  %ds:(%rsi),(%dx)
 1bf:	72 74                	jb     235 <_init-0xc63>
 1c1:	20 75 6e             	and    %dh,0x6e(%rbp)
 1c4:	73 69                	jae    22f <_init-0xc69>
 1c6:	67 6e                	outsb  %ds:(%esi),(%dx)
 1c8:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 1cd:	74 00                	je     1cf <_init-0xcc9>
 1cf:	6d                   	insl   (%dx),%es:(%rdi)
 1d0:	61                   	(bad)  
 1d1:	69 6e 00 5f 6e 65 78 	imul   $0x78656e5f,0x0(%rsi),%ebp
 1d8:	74 00                	je     1da <_init-0xcbe>
 1da:	5f                   	pop    %rdi
 1db:	5f                   	pop    %rdi
 1dc:	70 61                	jo     23f <_init-0xc59>
 1de:	64 31 00             	xor    %eax,%fs:(%rax)
 1e1:	5f                   	pop    %rdi
 1e2:	5f                   	pop    %rdi
 1e3:	70 61                	jo     246 <_init-0xc52>
 1e5:	64 32 00             	xor    %fs:(%rax),%al
 1e8:	5f                   	pop    %rdi
 1e9:	5f                   	pop    %rdi
 1ea:	70 61                	jo     24d <_init-0xc4b>
 1ec:	64 33 00             	xor    %fs:(%rax),%eax
 1ef:	5f                   	pop    %rdi
 1f0:	5f                   	pop    %rdi
 1f1:	70 61                	jo     254 <_init-0xc44>
 1f3:	64 34 00             	fs xor $0x0,%al
 1f6:	5f                   	pop    %rdi
 1f7:	5f                   	pop    %rdi
 1f8:	70 61                	jo     25b <_init-0xc3d>
 1fa:	64 35 00 6c 6f 6e    	fs xor $0x6e6f6c00,%eax
 200:	67 20 75 6e          	and    %dh,0x6e(%ebp)
 204:	73 69                	jae    26f <_init-0xc29>
 206:	67 6e                	outsb  %ds:(%esi),(%dx)
 208:	65 64 20 69 6e       	gs and %ch,%fs:0x6e(%rcx)
 20d:	74 00                	je     20f <_init-0xc89>
 20f:	70 68                	jo     279 <_init-0xc1f>
 211:	61                   	(bad)  
 212:	73 65                	jae    279 <_init-0xc1f>
 214:	5f                   	pop    %rdi
 215:	32 00                	xor    (%rax),%al
 217:	70 68                	jo     281 <_init-0xc17>
 219:	61                   	(bad)  
 21a:	73 65                	jae    281 <_init-0xc17>
 21c:	5f                   	pop    %rdi
 21d:	33 00                	xor    (%rax),%eax
 21f:	5f                   	pop    %rdi
 220:	49                   	rex.WB
 221:	4f 5f                	rex.WRXB pop %r15
 223:	77 72                	ja     297 <_init-0xc01>
 225:	69 74 65 5f 65 6e 64 	imul   $0x646e65,0x5f(%rbp,%riz,2),%esi
 22c:	00 
 22d:	70 68                	jo     297 <_init-0xc01>
 22f:	61                   	(bad)  
 230:	73 65                	jae    297 <_init-0xc01>
 232:	5f                   	pop    %rdi
 233:	35 00 5f 5f 6f       	xor    $0x6f5f5f00,%eax
 238:	66 66 36 34 5f       	data16 data16 ss xor $0x5f,%al
 23d:	74 00                	je     23f <_init-0xc59>
 23f:	5f                   	pop    %rdi
 240:	5f                   	pop    %rdi
 241:	6f                   	outsl  %ds:(%rsi),(%dx)
 242:	66 66 5f             	data16 pop %di
 245:	74 00                	je     247 <_init-0xc51>
 247:	5f                   	pop    %rdi
 248:	63 68 61             	movslq 0x61(%rax),%ebp
 24b:	69 6e 00 69 6e 69 74 	imul   $0x74696e69,0x0(%rsi),%ebp
 252:	69 61 6c 69 7a 65 5f 	imul   $0x5f657a69,0x6c(%rcx),%esp
 259:	62                   	(bad)  
 25a:	6f                   	outsl  %ds:(%rsi),(%dx)
 25b:	6d                   	insl   (%dx),%es:(%rdi)
 25c:	62                   	(bad)  
 25d:	00 5f 49             	add    %bl,0x49(%rdi)
 260:	4f 5f                	rex.WRXB pop %r15
 262:	62 61                	(bad)  
 264:	63 6b 75             	movslq 0x75(%rbx),%ebp
 267:	70 5f                	jo     2c8 <_init-0xbd0>
 269:	62 61                	(bad)  
 26b:	73 65                	jae    2d2 <_init-0xbc6>
 26d:	00 73 74             	add    %dh,0x74(%rbx)
 270:	64 69 6e 00 5f 66 6c 	imul   $0x616c665f,%fs:0x0(%rsi),%ebp
 277:	61 
 278:	67 73 32             	addr32 jae 2ad <_init-0xbeb>
 27b:	00 5f 6d             	add    %bl,0x6d(%rdi)
 27e:	6f                   	outsl  %ds:(%rsi),(%dx)
 27f:	64 65 00 5f 49       	fs add %bl,%gs:0x49(%rdi)
 284:	4f 5f                	rex.WRXB pop %r15
 286:	72 65                	jb     2ed <_init-0xbab>
 288:	61                   	(bad)  
 289:	64 5f                	fs pop %rdi
 28b:	62 61                	(bad)  
 28d:	73 65                	jae    2f4 <_init-0xba4>
 28f:	00 5f 76             	add    %bl,0x76(%rdi)
 292:	74 61                	je     2f5 <_init-0xba3>
 294:	62                   	(bad)  
 295:	6c                   	insb   (%dx),%es:(%rdi)
 296:	65 5f                	gs pop %rdi
 298:	6f                   	outsl  %ds:(%rsi),(%dx)
 299:	66 66 73 65          	data16 data16 jae 302 <_init-0xb96>
 29d:	74 00                	je     29f <_init-0xbf9>
 29f:	5f                   	pop    %rdi
 2a0:	49                   	rex.WB
 2a1:	4f 5f                	rex.WRXB pop %r15
 2a3:	73 61                	jae    306 <_init-0xb92>
 2a5:	76 65                	jbe    30c <_init-0xb8c>
 2a7:	5f                   	pop    %rdi
 2a8:	62 61                	(bad)  
 2aa:	73 65                	jae    311 <_init-0xb87>
 2ac:	00 73 79             	add    %dh,0x79(%rbx)
 2af:	73 5f                	jae    310 <_init-0xb88>
 2b1:	65 72 72             	gs jb  326 <_init-0xb72>
 2b4:	6c                   	insb   (%dx),%es:(%rdi)
 2b5:	69 73 74 00 5f 66 69 	imul   $0x69665f00,0x74(%rbx),%esi
 2bc:	6c                   	insb   (%dx),%es:(%rdi)
 2bd:	65 6e                	outsb  %gs:(%rsi),(%dx)
 2bf:	6f                   	outsl  %ds:(%rsi),(%dx)
 2c0:	00 70 68             	add    %dh,0x68(%rax)
 2c3:	61                   	(bad)  
 2c4:	73 65                	jae    32b <_init-0xb6d>
 2c6:	5f                   	pop    %rdi
 2c7:	36 00 5f 66          	add    %bl,%ss:0x66(%rdi)
 2cb:	6c                   	insb   (%dx),%es:(%rdi)
 2cc:	61                   	(bad)  
 2cd:	67 73 00             	addr32 jae 2d0 <_init-0xbc8>
 2d0:	73 74                	jae    346 <_init-0xb52>
 2d2:	64 6f                	outsl  %fs:(%rsi),(%dx)
 2d4:	75 74                	jne    34a <_init-0xb4e>
 2d6:	00 5f 49             	add    %bl,0x49(%rdi)
 2d9:	4f 5f                	rex.WRXB pop %r15
 2db:	32 5f 31             	xor    0x31(%rdi),%bl
 2de:	5f                   	pop    %rdi
 2df:	73 74                	jae    355 <_init-0xb43>
 2e1:	64 6f                	outsl  %fs:(%rsi),(%dx)
 2e3:	75 74                	jne    359 <_init-0xb3f>
 2e5:	5f                   	pop    %rdi
 2e6:	00 5f 49             	add    %bl,0x49(%rdi)
 2e9:	4f 5f                	rex.WRXB pop %r15
 2eb:	6c                   	insb   (%dx),%es:(%rdi)
 2ec:	6f                   	outsl  %ds:(%rsi),(%dx)
 2ed:	63 6b 5f             	movslq 0x5f(%rbx),%ebp
 2f0:	74 00                	je     2f2 <_init-0xba6>
 2f2:	47                   	rex.RXB
 2f3:	4e 55                	rex.WRX push %rbp
 2f5:	20 43 31             	and    %al,0x31(%rbx)
 2f8:	31 20                	xor    %esp,(%rax)
 2fa:	36 2e 33 2e          	ss xor %cs:(%rsi),%ebp
 2fe:	30 20                	xor    %ah,(%rax)
 300:	32 30                	xor    (%rax),%dh
 302:	31 37                	xor    %esi,(%rdi)
 304:	30 35 31 36 20 2d    	xor    %dh,0x2d203631(%rip)        # 2d20393b <_end+0x2cfffacb>
 30a:	6d                   	insl   (%dx),%es:(%rdi)
 30b:	74 75                	je     382 <_init-0xb16>
 30d:	6e                   	outsb  %ds:(%rsi),(%dx)
 30e:	65 3d 67 65 6e 65    	gs cmp $0x656e6567,%eax
 314:	72 69                	jb     37f <_init-0xb19>
 316:	63 20                	movslq (%rax),%esp
 318:	2d 6d 61 72 63       	sub    $0x6372616d,%eax
 31d:	68 3d 78 38 36       	pushq  $0x3638783d
 322:	2d 36 34 20 2d       	sub    $0x2d203436,%eax
 327:	67 67 64 62          	addr32 addr32 fs (bad) 
 32b:	20                   	.byte 0x20
 32c:	2d                   	.byte 0x2d
 32d:	4f                   	rex.WRXB
	...

Disassembly of section .debug_loc:

0000000000000000 <.debug_loc>:
	...
   8:	1a 00                	sbb    (%rax),%al
   a:	00 00                	add    %al,(%rax)
   c:	00 00                	add    %al,(%rax)
   e:	00 00                	add    %al,(%rax)
  10:	01 00                	add    %eax,(%rax)
  12:	55                   	push   %rbp
  13:	1a 00                	sbb    (%rax),%al
  15:	00 00                	add    %al,(%rax)
  17:	00 00                	add    %al,(%rax)
  19:	00 00                	add    %al,(%rax)
  1b:	02 01                	add    (%rcx),%al
  1d:	00 00                	add    %al,(%rax)
  1f:	00 00                	add    %al,(%rax)
  21:	00 00                	add    %al,(%rax)
  23:	04 00                	add    $0x0,%al
  25:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
  29:	02 01                	add    (%rcx),%al
  2b:	00 00                	add    %al,(%rax)
  2d:	00 00                	add    %al,(%rax)
  2f:	00 00                	add    %al,(%rax)
  31:	15 01 00 00 00       	adc    $0x1,%eax
  36:	00 00                	add    %al,(%rax)
  38:	00 01                	add    %al,(%rcx)
  3a:	00 55 15             	add    %dl,0x15(%rbp)
  3d:	01 00                	add    %eax,(%rax)
  3f:	00 00                	add    %al,(%rax)
  41:	00 00                	add    %al,(%rax)
  43:	00 32                	add    %dh,(%rdx)
  45:	01 00                	add    %eax,(%rax)
  47:	00 00                	add    %al,(%rax)
  49:	00 00                	add    %al,(%rax)
  4b:	00 04 00             	add    %al,(%rax,%rax,1)
  4e:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
  52:	32 01                	xor    (%rcx),%al
  54:	00 00                	add    %al,(%rax)
  56:	00 00                	add    %al,(%rax)
  58:	00 00                	add    %al,(%rax)
  5a:	3c 01                	cmp    $0x1,%al
  5c:	00 00                	add    %al,(%rax)
  5e:	00 00                	add    %al,(%rax)
  60:	00 00                	add    %al,(%rax)
  62:	01 00                	add    %eax,(%rax)
  64:	55                   	push   %rbp
  65:	3c 01                	cmp    $0x1,%al
  67:	00 00                	add    %al,(%rax)
  69:	00 00                	add    %al,(%rax)
  6b:	00 00                	add    %al,(%rax)
  6d:	50                   	push   %rax
  6e:	01 00                	add    %eax,(%rax)
  70:	00 00                	add    %al,(%rax)
  72:	00 00                	add    %al,(%rax)
  74:	00 04 00             	add    %al,(%rax,%rax,1)
  77:	f3 01 55 9f          	repz add %edx,-0x61(%rbp)
	...
  93:	21 00                	and    %eax,(%rax)
  95:	00 00                	add    %al,(%rax)
  97:	00 00                	add    %al,(%rax)
  99:	00 00                	add    %al,(%rax)
  9b:	01 00                	add    %eax,(%rax)
  9d:	54                   	push   %rsp
  9e:	21 00                	and    %eax,(%rax)
  a0:	00 00                	add    %al,(%rax)
  a2:	00 00                	add    %al,(%rax)
  a4:	00 00                	add    %al,(%rax)
  a6:	36 00 00             	add    %al,%ss:(%rax)
  a9:	00 00                	add    %al,(%rax)
  ab:	00 00                	add    %al,(%rax)
  ad:	00 01                	add    %al,(%rcx)
  af:	00 53 36             	add    %dl,0x36(%rbx)
  b2:	00 00                	add    %al,(%rax)
  b4:	00 00                	add    %al,(%rax)
  b6:	00 00                	add    %al,(%rax)
  b8:	00 02                	add    %al,(%rdx)
  ba:	01 00                	add    %eax,(%rax)
  bc:	00 00                	add    %al,(%rax)
  be:	00 00                	add    %al,(%rax)
  c0:	00 04 00             	add    %al,(%rax,%rax,1)
  c3:	f3 01 54 9f 02       	repz add %edx,0x2(%rdi,%rbx,4)
  c8:	01 00                	add    %eax,(%rax)
  ca:	00 00                	add    %al,(%rax)
  cc:	00 00                	add    %al,(%rax)
  ce:	00 15 01 00 00 00    	add    %dl,0x1(%rip)        # d5 <_init-0xdc3>
  d4:	00 00                	add    %al,(%rax)
  d6:	00 01                	add    %al,(%rcx)
  d8:	00 54 15 01          	add    %dl,0x1(%rbp,%rdx,1)
  dc:	00 00                	add    %al,(%rax)
  de:	00 00                	add    %al,(%rax)
  e0:	00 00                	add    %al,(%rax)
  e2:	50                   	push   %rax
  e3:	01 00                	add    %eax,(%rax)
  e5:	00 00                	add    %al,(%rax)
  e7:	00 00                	add    %al,(%rax)
  e9:	00 01                	add    %al,(%rcx)
  eb:	00 53 00             	add    %dl,0x0(%rbx)
	...
  fa:	00 00                	add    %al,(%rax)
  fc:	00 58 00             	add    %bl,0x0(%rax)
  ff:	00 00                	add    %al,(%rax)
 101:	00 00                	add    %al,(%rax)
 103:	00 00                	add    %al,(%rax)
 105:	5f                   	pop    %rdi
 106:	00 00                	add    %al,(%rax)
 108:	00 00                	add    %al,(%rax)
 10a:	00 00                	add    %al,(%rax)
 10c:	00 01                	add    %al,(%rcx)
 10e:	00 50 76             	add    %dl,0x76(%rax)
 111:	00 00                	add    %al,(%rax)
 113:	00 00                	add    %al,(%rax)
 115:	00 00                	add    %al,(%rax)
 117:	00 7d 00             	add    %bh,0x0(%rbp)
 11a:	00 00                	add    %al,(%rax)
 11c:	00 00                	add    %al,(%rax)
 11e:	00 00                	add    %al,(%rax)
 120:	01 00                	add    %eax,(%rax)
 122:	50                   	push   %rax
 123:	94                   	xchg   %eax,%esp
 124:	00 00                	add    %al,(%rax)
 126:	00 00                	add    %al,(%rax)
 128:	00 00                	add    %al,(%rax)
 12a:	00 9b 00 00 00 00    	add    %bl,0x0(%rbx)
 130:	00 00                	add    %al,(%rax)
 132:	00 01                	add    %al,(%rcx)
 134:	00 50 b2             	add    %dl,-0x4e(%rax)
 137:	00 00                	add    %al,(%rax)
 139:	00 00                	add    %al,(%rax)
 13b:	00 00                	add    %al,(%rax)
 13d:	00 b9 00 00 00 00    	add    %bh,0x0(%rcx)
 143:	00 00                	add    %al,(%rax)
 145:	00 01                	add    %al,(%rcx)
 147:	00 50 d0             	add    %dl,-0x30(%rax)
 14a:	00 00                	add    %al,(%rax)
 14c:	00 00                	add    %al,(%rax)
 14e:	00 00                	add    %al,(%rax)
 150:	00 d7                	add    %dl,%bh
 152:	00 00                	add    %al,(%rax)
 154:	00 00                	add    %al,(%rax)
 156:	00 00                	add    %al,(%rax)
 158:	00 01                	add    %al,(%rcx)
 15a:	00 50 ee             	add    %dl,-0x12(%rax)
 15d:	00 00                	add    %al,(%rax)
 15f:	00 00                	add    %al,(%rax)
 161:	00 00                	add    %al,(%rax)
 163:	00 f5                	add    %dh,%ch
 165:	00 00                	add    %al,(%rax)
 167:	00 00                	add    %al,(%rax)
 169:	00 00                	add    %al,(%rax)
 16b:	00 01                	add    %al,(%rcx)
 16d:	00 50 00             	add    %dl,0x0(%rax)
	...
