000000000040104e <phase_2>:
40104e:       55                      push   %rbp
40104f:       53                      push   %rbx
401050:       48 83 ec 28             sub    $0x28,%rsp #rsp = rbp+40 (0x28) = \340\340\377\377\377\177
401054:       48 89 e6                mov    %rsp,%rsi #pointer - rsi = rsp  - allocating 40 bytes = \340\340\377\377\377\177
401057:       e8 89 03 00 00          callq  4013e5 <read_six_numbers>
40105c:       83 3c 24 00             cmpl   $0x0,(%rsp) #rsp = ?
401060:       79 05                   jns    401067 <phase_2+0x19>
401062:       e8 48 03 00 00          callq  4013af <explode_bomb>
401067:       48 8d 5c 24 04          lea    0x4(%rsp),%rbx # rbx = 4(rsp) = last user input
40106c:       bd 01 00 00 00          mov    $0x1,%ebp # i = 1
401071:       89 e8                   mov    %ebp,%eax # eax = i
401073:       03 43 fc                add    -0x4(%rbx),%eax  # eax = i + perv int stringqi 
401076:       39 03                   cmp    %eax,(%rbx)
401078:       74 05                   je     40107f <phase_2+0x31>
40107a:       e8 30 03 00 00          callq  4013af <explode_bomb>
40107f:       83 c5 01                add    $0x1,%ebp  # i++
401082:       48 83 c3 04             add    $0x4,%rbx  # moving next int
401086:       83 fd 06                cmp    $0x6,%ebp  # i < 6
401089:       75 e6                   jne    401071 <phase_2+0x23>
40108b:       48 83 c4 28             add    $0x28,%rsp
40108f:       5b                      pop    %rbx
401090:       5d                      pop    %rbp
401091:       c3                      retq

00000000004013e5 <read_six_numbers>:
4013e5:       48 83 ec 18             sub    $0x18,%rsp #rsp = (rbp + 40) + 30
4013e9:       48 89 f2                mov    %rsi,%rdx #rdx = rbp + 40 (old rspstepi) #three args
4013ec:       48 8d 4e 04             lea    0x4(%rsi),%rcx # rcx = rsp + 4 = 377\177 #four args
4013f0:       48 8d 46 14             lea    0x14(%rsi),%rax #rax = 20(rsp) = 377\177
4013f4:       48 89 44 24 08          mov    %rax,0x8(%rsp) #rsp + 40 + 10 = 14(rsp) = 264\377\377\377\377\177
4013f9:       48 8d 46 10             lea    0x10(%rsi),%rax #rax = 10(rsp) = \330\340\377\377\377\177
4013fd:       48 89 04 24             mov    %rax,(%rsp)    #rsp = rax = 10(rsp) = 260\377\377\377\377\177
401401:       4c 8d 4e 0c             lea    0xc(%rsi),%r9  #r9 = 14(rsp) = #five args
401405:       4c 8d 46 08             lea    0x8(%rsi),%r8  #r8 = 8(rsp) #six argsstep
401409:       be 7e 24 40 00          mov    $0x40247e,%esi #nescanformat - 6 digits ("%d %d...%d")
40140e:       b8 00 00 00 00          mov    $0x0,%eax
401413:       e8 b0 f6 ff ff          callq  400ac8 <__isoc99_sscanf@plt>
401418:       83 f8 05                cmp    $0x5,%eax  #checking if there at least six numbers
40141b:       7f 05                   jg     401422 <read_six_numbers+0x3d> #if there is ret to phase_2
40141d:       e8 8d ff ff ff          callq  4013af <explode_bomb>
401422:       48 83 c4 18             add    $0x18,%rsp
401426:       c3                      retq
