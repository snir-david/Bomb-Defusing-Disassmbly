0000000000400f53 <phase_6>:
400f53:       41 54                   push   %r12
400f55:       55                      push   %rbp
400f56:       53                      push   %rbx
400f57:       48 83 ec 50             sub    $0x50,%rsp
400f5b:       48 8d 6c 24 30          lea    0x30(%rsp),%rbp
400f60:       48 89 ee                mov    %rbp,%rsi
400f63:       e8 7d 04 00 00          callq  4013e5 <read_six_numbers>
400f68:       41 bc 00 00 00 00       mov    $0x0,%r12d
400f6e:       8b 45 00                mov    0x0(%rbp),%eax
400f71:       83 e8 01                sub    $0x1,%eax
400f74:       83 f8 05                cmp    $0x5,%eax
400f77:       76 05                   jbe    400f7e <phase_6+0x2b>
400f79:       e8 31 04 00 00          callq  4013af <explode_bomb>
400f7e:       41 83 c4 01             add    $0x1,%r12d
400f82:       41 83 fc 06             cmp    $0x6,%r12d
400f86:       74 22                   je     400faa <phase_6+0x57>
400f88:       44 89 e3                mov    %r12d,%ebx
400f8b:       48 63 c3                movslq %ebx,%rax
400f8e:       8b 55 00                mov    0x0(%rbp),%edx
400f91:       3b 54 84 30             cmp    0x30(%rsp,%rax,4),%edx
400f95:       75 05                   jne    400f9c <phase_6+0x49>
400f97:       e8 13 04 00 00          callq  4013af <explode_bomb>
400f9c:       83 c3 01                add    $0x1,%ebx
400f9f:       83 fb 05                cmp    $0x5,%ebx
400fa2:       7e e7                   jle    400f8b <phase_6+0x38>
400fa4:       48 83 c5 04             add    $0x4,%rbp
400fa8:       eb c4                   jmp    400f6e <phase_6+0x1b>
400faa:       bb 00 00 00 00          mov    $0x0,%ebx
400faf:       4c 8d 44 24 30          lea    0x30(%rsp),%r8
400fb4:       bd 01 00 00 00          mov    $0x1,%ebp
400fb9:       be 50 32 60 00          mov    $0x603250,%esi
400fbe:       48 89 e7                mov    %rsp,%rdi
400fc1:       eb 19                   jmp    400fdc <phase_6+0x89>
400fc3:       48 8b 52 08             mov    0x8(%rdx),%rdx
400fc7:       83 c0 01                add    $0x1,%eax
400fca:       39 c8                   cmp    %ecx,%eax
400fcc:       75 f5                   jne    400fc3 <phase_6+0x70>
400fce:       48 89 14 5f             mov    %rdx,(%rdi,%rbx,2)
400fd2:       48 83 c3 04             add    $0x4,%rbx
400fd6:       48 83 fb 18             cmp    $0x18,%rbx
400fda:       74 10                   je     400fec <phase_6+0x99>
400fdc:       41 8b 0c 18             mov    (%r8,%rbx,1),%ecx
400fe0:       89 e8                   mov    %ebp,%eax
400fe2:       48 89 f2                mov    %rsi,%rdx
400fe5:       83 f9 01                cmp    $0x1,%ecx
400fe8:       7f d9                   jg     400fc3 <phase_6+0x70>
400fea:       eb e2                   jmp    400fce <phase_6+0x7b>
400fec:       48 8b 1c 24             mov    (%rsp),%rbx
400ff0:       48 8b 44 24 08          mov    0x8(%rsp),%rax
400ff5:       48 89 43 08             mov    %rax,0x8(%rbx)
400ff9:       48 8b 54 24 10          mov    0x10(%rsp),%rdx
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
401030:       3b 10                   cmp    (%rax),%edx
401032:       7e 05                   jle    401039 <phase_6+0xe6>
401034:       e8 76 03 00 00          callq  4013af <explode_bomb>
401039:       48 8b 5b 08             mov    0x8(%rbx),%rbx
40103d:       83 c5 01                add    $0x1,%ebp
401040:       83 fd 05                cmp    $0x5,%ebp
401043:       75 e5                   jne    40102a <phase_6+0xd7>
401045:       48 83 c4 50             add    $0x50,%rsp
401049:       5b                      pop    %rbx
40104a:       5d                      pop    %rbp
40104b:       41 5c                   pop    %r12
40104d:       c3                      retq
