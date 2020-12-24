000000000040104e <phase_2>:
40104e:       55                      push   %rbp
40104f:       53                      push   %rbx
401050:       48 83 ec 28             sub    $0x28,%rsp
401054:       48 89 e6                mov    %rsp,%rsi
401057:       e8 89 03 00 00          callq  4013e5 <read_six_numbers>
40105c:       83 3c 24 00             cmpl   $0x0,(%rsp)
401060:       79 05                   jns    401067 <phase_2+0x19>
401062:       e8 48 03 00 00          callq  4013af <explode_bomb>
401067:       48 8d 5c 24 04          lea    0x4(%rsp),%rbx
40106c:       bd 01 00 00 00          mov    $0x1,%ebp
401071:       89 e8                   mov    %ebp,%eax
401073:       03 43 fc                add    -0x4(%rbx),%eax
401076:       39 03                   cmp    %eax,(%rbx)
401078:       74 05                   je     40107f <phase_2+0x31>
40107a:       e8 30 03 00 00          callq  4013af <explode_bomb>
40107f:       83 c5 01                add    $0x1,%ebp
401082:       48 83 c3 04             add    $0x4,%rbx
401086:       83 fd 06                cmp    $0x6,%ebp
401089:       75 e6                   jne    401071 <phase_2+0x23>
40108b:       48 83 c4 28             add    $0x28,%rsp
40108f:       5b                      pop    %rbx
401090:       5d                      pop    %rbp
401091:       c3                      retq
