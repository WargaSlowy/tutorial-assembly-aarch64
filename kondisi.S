.section .rodata

equal_pesan:
  .asciz "nilainya sama cik\n"

not_equal_pesan:
  .asciz "nilainya gk sama cik\n"

.text
.global main
.extern printf

main:
  mov x0, #5
  mov x1, #5

  cmp x0, x1
  b.ne not_equal

equal:
  adr x0, equal_pesan
  bl printf
  b done

not_equal:
  adr x0, not_equal_pesan
  bl printf
  b done

done:
  mov x0, #0
  ret
