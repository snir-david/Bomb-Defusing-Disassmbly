0000000000400f03 <secret_phase>:
400f03:       53                      push   %rbx
400f04:       e8 9c 05 00 00          callq  4014a5 <read_line>
400f09:       ba 0a 00 00 00          mov    $0xa,%edx
400f0e:       be 00 00 00 00          mov    $0x0,%esi
400f13:       48 89 c7                mov    %rax,%rdi
400f16:       e8 5d fc ff ff          callq  400b78 <strtol@plt>
400f1b:       89 c3                   mov    %eax,%ebx
400f1d:       8d 43 ff                lea    -0x1(%rbx),%eax
400f20:       3d e8 03 00 00          cmp    $0x3e8,%eax
400f25:       76 05                   jbe    400f2c <secret_phase+0x29>
400f27:       e8 83 04 00 00          callq  4013af <explode_bomb>
400f2c:       89 de                   mov    %ebx,%esi
400f2e:       bf 20 34 60 00          mov    $0x603420,%edi
400f33:       e8 8f ff ff ff          callq  400ec7 <fun7>
400f38:       83 f8 04                cmp    $0x4,%eax
400f3b:       74 05                   je     400f42 <secret_phase+0x3f>
400f3d:       e8 6d 04 00 00          callq  4013af <explode_bomb>
400f42:       bf 40 23 40 00          mov    $0x402340,%edi
400f47:       e8 6c fb ff ff          callq  400ab8 <puts@plt>
400f4c:       e8 d5 03 00 00          callq  401326 <phase_defused>
400f51:       5b                      pop    %rbx
400f52:       c3                      retq
