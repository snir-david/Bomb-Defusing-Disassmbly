00000000004010d2 <phase_4>:
4010d2:       48 83 ec 18             sub    $0x18,%rsp
4010d6:       48 8d 4c 24 0c          lea    0xc(%rsp),%rcx #%rcx = 64?
4010db:       48 8d 54 24 08          lea    0x8(%rsp),%rdx #rdx = 
4010e0:       be 8a 24 40 00          mov    $0x40248a,%esi #esi = %d %d
4010e5:       b8 00 00 00 00          mov    $0x0,%eax
4010ea:       e8 d9 f9 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
4010ef:       83 f8 02                cmp    $0x2,%eax # checking input is more than 2 numbers
4010f2:       75 0e                   jne    401102 <phase_4+0x30>
4010f4:       8b 44 24 0c             mov    0xc(%rsp),%eax #eax = second input
4010f8:       83 f8 01                cmp    $0x1,%eax #eax > 1
4010fb:       7e 05                   jle    401102 <phase_4+0x30>
4010fd:       83 f8 04                cmp    $0x4,%eax #eax < 4
401100:       7e 05                   jle    401107 <phase_4+0x35>
401102:       e8 a8 02 00 00          callq  4013af <explode_bomb>
401107:       8b 74 24 0c             mov    0xc(%rsp),%esi
40110b:       bf 05 00 00 00          mov    $0x5,%edi
401110:       e8 5b fd ff ff          callq  400e70 <func4>
401115:       3b 44 24 08             cmp    0x8(%rsp),%eax #first input = rax - return from func4
401119:       74 05                   je     401120 <phase_4+0x4e>
40111b:       e8 8f 02 00 00          callq  4013af <explode_bomb>
401120:       48 83 c4 18             add    $0x18,%rsp
401124:       c3                      retq

0000000000400e70 <func4>:
400e70:       48 89 5c 24 e8          mov    %rbx,-0x18(%rsp)
400e75:       48 89 6c 24 f0          mov    %rbp,-0x10(%rsp)
400e7a:       4c 89 64 24 f8          mov    %r12,-0x8(%rsp)
400e7f:       48 83 ec 18             sub    $0x18,%rsp
400e83:       89 fb                   mov    %edi,%ebx
400e85:       89 f5                   mov    %esi,%ebp
400e87:       85 ff                   test   %edi,%edi
400e89:       7f 07                   jg     400e92 <func4+0x22>
400e8b:       bd 00 00 00 00          mov    $0x0,%ebp
400e90:       eb 20                   jmp    400eb2 <func4+0x42>
400e92:       83 ff 01                cmp    $0x1,%edi
400e95:       74 1b                   je     400eb2 <func4+0x42>
400e97:       8d 7b ff                lea    -0x1(%rbx),%edi
400e9a:       e8 d1 ff ff ff          callq  400e70 <func4>
400e9f:       41 89 c4                mov    %eax,%r12d
400ea2:       8d 7b fe                lea    -0x2(%rbx),%edi
400ea5:       89 ee                   mov    %ebp,%esi
400ea7:       e8 c4 ff ff ff          callq  400e70 <func4>
400eac:       41 01 c4                add    %eax,%r12d
400eaf:       44 01 e5                add    %r12d,%ebp
400eb2:       89 e8                   mov    %ebp,%eax
400eb4:       48 8b 1c 24             mov    (%rsp),%rbx
400eb8:       48 8b 6c 24 08          mov    0x8(%rsp),%rbp
400ebd:       4c 8b 64 24 10          mov    0x10(%rsp),%r12
400ec2:       48 83 c4 18             add    $0x18,%rsp
400ec6:       c3                      retq
