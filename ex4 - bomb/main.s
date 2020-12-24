0000000000400d34 <main>:
400d34:       55                      push   %rbp
400d35:       53                      push   %rbx
400d36:       48 83 ec 08             sub    $0x8,%rsp  #allocating 8 bytes for stack
400d3a:       48 89 f3                mov    %rsi,%rbx  #getting second arg (file name) into %rbx
400d3d:       83 ff 01                cmp    $0x1,%edi  #checking if argc ==1 only file name
400d40:       75 10                   jne    400d52 <main+0x1e>
400d42:       48 8b 05 f7 2a 20 00    mov    0x202af7(%rip),%rax        # 603840 <__bss_start>
400d49:       48 89 05 20 2b 20 00    mov    %rax,0x202b20(%rip)        # 603870 <infile>
400d50:       eb 5a                   jmp    400dac <main+0x78>
400d52:       83 ff 02                cmp    $0x2,%edi #checking if argc == 2 only file name
400d55:       75 39                   jne    400d90 <main+0x5c> # if equal open file and read it
400d57:       48 8d 6e 08             lea    0x8(%rsi),%rbp
400d5b:       be f0 21 40 00          mov    $0x4021f0,%esi
400d60:       48 8b 7d 00             mov    0x0(%rbp),%rdi
400d64:       e8 9f fd ff ff          callq  400b08 <fopen@plt>
400d69:       48 89 05 00 2b 20 00    mov    %rax,0x202b00(%rip)        # 603870 <infile>
400d70:       48 85 c0                test   %rax,%rax
400d73:       75 37                   jne    400dac <main+0x78>
400d75:       48 8b 55 00             mov    0x0(%rbp),%rdx
400d79:       48 8b 33                mov    (%rbx),%rsi
400d7c:       bf f2 21 40 00          mov    $0x4021f2,%edi
400d81:       e8 02 fd ff ff          callq  400a88 <printf@plt>
400d86:       bf 08 00 00 00          mov    $0x8,%edi
400d8b:       e8 48 fd ff ff          callq  400ad8 <exit@plt>
400d90:       48 8b 36                mov    (%rsi),%rsi
400d93:       bf 0f 22 40 00          mov    $0x40220f,%edi
400d98:       b8 00 00 00 00          mov    $0x0,%eax
400d9d:       e8 e6 fc ff ff          callq  400a88 <printf@plt>
400da2:       bf 08 00 00 00          mov    $0x8,%edi
400da7:       e8 2c fd ff ff          callq  400ad8 <exit@plt>
400dac:       e8 2f 08 00 00          callq  4015e0 <initialize_bomb>
400db1:       bf 78 22 40 00          mov    $0x402278,%edi
400db6:       e8 fd fc ff ff          callq  400ab8 <puts@plt>
400dbb:       bf b8 22 40 00          mov    $0x4022b8,%edi
400dc0:       e8 f3 fc ff ff          callq  400ab8 <puts@plt>
400dc5:       e8 db 06 00 00          callq  4014a5 <read_line>
400dca:       48 89 c7                mov    %rax,%rdi
400dcd:       e8 de 03 00 00          callq  4011b0 <phase_1>
400dd2:       e8 4f 05 00 00          callq  401326 <phase_defused>
400dd7:       bf e8 22 40 00          mov    $0x4022e8,%edi
400ddc:       e8 d7 fc ff ff          callq  400ab8 <puts@plt>
400de1:       e8 bf 06 00 00          callq  4014a5 <read_line>
400de6:       48 89 c7                mov    %rax,%rdi  #rdi = rax =string user
400de9:       e8 60 02 00 00          callq  40104e <phase_2>
400dee:       e8 33 05 00 00          callq  401326 <phase_defused>
400df3:       bf 29 22 40 00          mov    $0x402229,%edi
400df8:       e8 bb fc ff ff          callq  400ab8 <puts@plt>
400dfd:       e8 a3 06 00 00          callq  4014a5 <read_line>
400e02:       48 89 c7                mov    %rax,%rdi
400e05:       e8 1b 03 00 00          callq  401125 <phase_3>
400e0a:       e8 17 05 00 00          callq  401326 <phase_defused>
400e0f:       bf 47 22 40 00          mov    $0x402247,%edi
400e14:       e8 9f fc ff ff          callq  400ab8 <puts@plt>
400e19:       e8 87 06 00 00          callq  4014a5 <read_line>
400e1e:       48 89 c7                mov    %rax,%rdi
400e21:       e8 ac 02 00 00          callq  4010d2 <phase_4>
400e26:       e8 fb 04 00 00          callq  401326 <phase_defused>
400e2b:       bf 18 23 40 00          mov    $0x402318,%edi
400e30:       e8 83 fc ff ff          callq  400ab8 <puts@plt>
400e35:       e8 6b 06 00 00          callq  4014a5 <read_line>
400e3a:       48 89 c7                mov    %rax,%rdi
400e3d:       e8 50 02 00 00          callq  401092 <phase_5>
400e42:       e8 df 04 00 00          callq  401326 <phase_defused>
400e47:       bf 56 22 40 00          mov    $0x402256,%edi
400e4c:       e8 67 fc ff ff          callq  400ab8 <puts@plt>
400e51:       e8 4f 06 00 00          callq  4014a5 <read_line>
400e56:       48 89 c7                mov    %rax,%rdi
400e59:       e8 f5 00 00 00          callq  400f53 <phase_6>
400e5e:       e8 c3 04 00 00          callq  401326 <phase_defused>
400e63:       b8 00 00 00 00          mov    $0x0,%eax
400e68:       48 83 c4 08             add    $0x8,%rsp
400e6c:       5b                      pop    %rbx
400e6d:       5d                      pop    %rbp
400e6e:       c3                      retq
400e6f:       90                      nop
