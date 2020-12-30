0000000000400f53 <phase_6>:
400f53:       41 54                   push   %r12
400f55:       55                      push   %rbp
400f56:       53                      push   %rbx
400f57:       48 83 ec 50             sub    $0x50,%rsp #allocating 80 bytes on stack
400f5b:       48 8d 6c 24 30          lea    0x30(%rsp),%rbp #rbp = 30rsp #user six numbers input
400f60:       48 89 ee                mov    %rbp,%rsi #rsi = rbp
400f63:       e8 7d 04 00 00          callq  4013e5 <read_six_numbers>
400f68:       41 bc 00 00 00 00       mov    $0x0,%r12d # int i = 0 / r12 = 0
                                      #starting loop - check if there is number bigger than 6 in user string
400f6e:       8b 45 00                mov    0x0(%rbp),%eax #eax = rbp = current number in user input
400f71:       83 e8 01                sub    $0x1,%eax #eax-=1
400f74:       83 f8 05                cmp    $0x5,%eax  #5 => eax jump explode
400f77:       76 05                   jbe    400f7e <phase_6+0x2b> #jump over explode bomb

400f79:       e8 31 04 00 00          callq  4013af <explode_bomb>

400f7e:       41 83 c4 01             add    $0x1,%r12d #r12+=1 #
400f82:       41 83 fc 06             cmp    $0x6,%r12d #r12 = 6 - jump
400f86:       74 22                   je     400faa <phase_6+0x57> #jumping to second loop
400f88:       44 89 e3                mov    %r12d,%ebx #rbx = r12 = i < 6
                                      #third loops
400f8b:       48 63 c3                movslq %ebx,%rax  #rax = rbx
400f8e:       8b 55 00                mov    0x0(%rbp),%edx #rdx = rbp = rax = first num
400f91:       3b 54 84 30             cmp    0x30(%rsp,%rax,4),%edx #rdx ? 30 + rsp + 4rax - checking there is no two eq num?
400f95:       75 05                   jne    400f9c <phase_6+0x49> #jumping over explode bomb

400f97:       e8 13 04 00 00          callq  4013af <explode_bomb>

400f9c:       83 c3 01                add    $0x1,%ebx #rbx+=1
400f9f:       83 fb 05                cmp    $0x5,%ebx  #rbx ? 5 - if rbx <= 5 jump
400fa2:       7e e7                   jle    400f8b <phase_6+0x38> #third loop - increasing rbx bigger 5
400fa4:       48 83 c5 04             add    $0x4,%rbp  #rbp+=4 - next number
400fa8:       eb c4                   jmp    400f6e <phase_6+0x1b> # jump to start loop
                                      #loop - after r12 = 6 - moving on all number in user input
400faa:       bb 00 00 00 00          mov    $0x0,%ebx  #rbx = 0
400faf:       4c 8d 44 24 30          lea    0x30(%rsp),%r8 #r8 = first number in user input
400fb4:       bd 01 00 00 00          mov    $0x1,%ebp  #ebp = 1
400fb9:       be 50 32 60 00          mov    $0x603250,%esi #esi = 6304336 ?
400fbe:       48 89 e7                mov    %rsp,%rdi  #rdi = rsp = first number in user input
400fc1:       eb 19                   jmp    400fdc <phase_6+0x89>
                                      #loop
400fc3:       48 8b 52 08             mov    0x8(%rdx),%rdx #
400fc7:       83 c0 01                add    $0x1,%eax  #rax+=1 ?
400fca:       39 c8                   cmp    %ecx,%eax  #ecx ? eax
400fcc:       75 f5                   jne    400fc3 <phase_6+0x70>
                                      #loop
400fce:       48 89 14 5f             mov    %rdx,(%rdi,%rbx,2) #?
400fd2:       48 83 c3 04             add    $0x4,%rbx  #rbx+=4
400fd6:       48 83 fb 18             cmp    $0x18,%rbx #24? rbx
400fda:       74 10                   je     400fec <phase_6+0x99> # 24=rbx
                                      #jumping from -
400fdc:       41 8b 0c 18             mov    (%r8,%rbx,1),%ecx #ecx = rbx+r8= rbx + first number
400fe0:       89 e8                   mov    %ebp,%eax  #eax = ebp  = first number
400fe2:       48 89 f2                mov    %rsi,%rdx  #rdx = rsi ?= 6304336
400fe5:       83 f9 01                cmp    $0x1,%ecx  #1 ? ecx
400fe8:       7f d9                   jg     400fc3 <phase_6+0x70>  #1 < ecx
400fea:       eb e2                   jmp    400fce <phase_6+0x7b> #else
                                      #loop jump - when rbx = 24
400fec:       48 8b 1c 24             mov    (%rsp),%rbx #rbx = rsp = " 2'"
400ff0:       48 8b 44 24 08          mov    0x8(%rsp),%rax  #rax = last number?
400ff5:       48 89 43 08             mov    %rax,0x8(%rbx) #rbx+8 = rax
400ff9:       48 8b 54 24 10          mov    0x10(%rsp),%rdx  #rdx = '
400ffe:       48 89 50 08             mov    %rdx,0x8(%rax)
401002:       48 8b 44 24 18          mov    0x18(%rsp),%rax
401007:       48 89 42 08             mov    %rax,0x8(%rdx)
40100b:       48 8b 54 24 20          mov    0x20(%rsp),%rdx
401010:       48 89 50 08             mov    %rdx,0x8(%rax)
401014:       48 8b 44 24 28          mov    0x28(%rsp),%rax
401019:       48 89 42 08             mov    %rax,0x8(%rdx)
40101d:       48 c7 40 08 00 00 00    movq   $0x0,0x8(%rax)
401024:       00
401025:       bd 00 00 00 00          mov    $0x0,%ebp
40102a:       48 8b 43 08             mov    0x8(%rbx),%rax
40102e:       8b 13                   mov    (%rbx),%edx
401030:       3b 10                   cmp    (%rax),%edx #rax ? edx - if rax <= rdx
401032:       7e 05                   jle    401039 <phase_6+0xe6>#skiping bomb

401034:       e8 76 03 00 00          callq  4013af <explode_bomb>

401039:       48 8b 5b 08             mov    0x8(%rbx),%rbx
40103d:       83 c5 01                add    $0x1,%ebp #rbp+=1
401040:       83 fd 05                cmp    $0x5,%ebp #rbp = 5
401043:       75 e5                   jne    40102a <phase_6+0xd7>
401045:       48 83 c4 50             add    $0x50,%rsp
401049:       5b                      pop    %rbx
40104a:       5d                      pop    %rbp
40104b:       41 5c                   pop    %r12
40104d:       c3                      retq
