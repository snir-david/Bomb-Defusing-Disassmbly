00000000004011d0 <string_length>:
4011d0:       48 89 fa                mov    %rdi,%rdx #rdx = rdi = user string
4011d3:       b8 00 00 00 00          mov    $0x0,%eax
4011d8:       80 3f 00                cmpb   $0x0,(%rdi) #if user string is empty
4011db:       74 0d                   je     4011ea <string_length+0x1a> #if eq to 0 - end func
4011dd:       48 83 c2 01             add    $0x1,%rdx  #if not - add 1 - go next byte in user string
4011e1:       89 d0                   mov    %edx,%eax  #eax = edx = next char in user string
4011e3:       29 f8                   sub    %edi,%eax  #eax = eax - edi -> first place in string - current place in char
4011e5:       80 3a 00                cmpb   $0x0,(%rdx)
4011e8:       75 f3                   jne    4011dd <string_length+0xd>
4011ea:       f3 c3                   repz retq

00000000004011ec <strings_not_equal>:
4011ec:       41 54                   push   %r12
4011ee:       55                      push   %rbp
4011ef:       53                      push   %rbx
4011f0:       48 89 fb                mov    %rdi,%rbx # rbx = rdi = user string
4011f3:       48 89 f5                mov    %rsi,%rbp  #rbp = rsi = $0x4203368 =Houses will...
4011f6:       e8 d5 ff ff ff          callq  4011d0 <string_length>
4011fb:       41 89 c4                mov    %eax,%r12d #r12d = user string len
4011fe:       48 89 ef                mov    %rbp,%rdi #rdi = right string
401201:       e8 ca ff ff ff          callq  4011d0 <string_length>
401206:       41 39 c4                cmp    %eax,%r12d #checking user string len compare to right string len
401209:       75 26                   jne    401231 <strings_not_equal+0x45>
40120b:       0f b6 13                movzbl (%rbx),%edx
40120e:       84 d2                   test   %dl,%dl
401210:       74 26                   je     401238 <strings_not_equal+0x4c>
401212:       48 89 e8                mov    %rbp,%rax
401215:       3a 55 00                cmp    0x0(%rbp),%dl
401218:       74 0a                   je     401224 <strings_not_equal+0x38>
40121a:       eb 15                   jmp    401231 <strings_not_equal+0x45>
40121c:       48 83 c0 01             add    $0x1,%rax
401220:       3a 10                   cmp    (%rax),%dl
401222:       75 0d                   jne    401231 <strings_not_equal+0x45>
401224:       48 83 c3 01             add    $0x1,%rbx
401228:       0f b6 13                movzbl (%rbx),%edx
40122b:       84 d2                   test   %dl,%dl
40122d:       75 ed                   jne    40121c <strings_not_equal+0x30>
40122f:       eb 07                   jmp    401238 <strings_not_equal+0x4c>
401231:       b8 01 00 00 00          mov    $0x1,%eax #if lenght of strings not equal - eax =1
401236:       eb 05                   jmp    40123d <strings_not_equal+0x51> # jump to finish func
401238:       b8 00 00 00 00          mov    $0x0,%eax
40123d:       5b                      pop    %rbx
40123e:       5d                      pop    %rbp
40123f:       41 5c                   pop    %r12
401241:       c3                      retq
