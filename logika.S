.section .rodata

pesan:
  .asciz "hasil AND logic = %ld\n"

.text
.global main
.extern printf

main:
  mov x0, #13
  mov x1, #10

  and x1, x0, x1

  adr x0, pesan
  bl printf

  mov x0, #0
  ret
