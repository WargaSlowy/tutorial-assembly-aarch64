.section .rodata

format:
  .asciz "hasilnya = %ld\n"

.text
.global main
.extern printf

main:
  mov x1, #150
  mov x2, #20
  sub x1, x1, x2

  adr x0, format
  bl printf

  mov x0, #0
  ret
