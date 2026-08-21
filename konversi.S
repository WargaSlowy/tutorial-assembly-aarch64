/*
.section .data

input:
  .asciz "123"

.section .text
.global _start

_start:
  adr x0, input
  mov x1, #0

loop:
  ldrb x2, [x0]

  cmp x2, #0
  beq done

  sub x2, x2, #'0'

  mov x3, #10
  mul x1, x1, x3

  add x1, x1, x2


  add x0, x0, #1

  b loop

done:
  mov x8, #93
  mov x0, #0
  svc #0
*/

.section .bss

buffer:
  .skip 32

.section .text

.global _start

_start:
  mov x0, #123

  adr x1, buffer

  mov x2, x1

konversi:
  mov x4, #10
  udiv x5, x0, x4

  sub x3, x5, x4, x0

  add x3, x3, #'0'

  strb w3, [x1]

  mov x0, x5

  add x1, x1, #1

  cmp x0, #0
  bne konversi

  mov x8, #93
  mov x0, #0
  svc #0

  123 % 10 = 3
  123 / 10 = 12

  12 % 10 = 2
  12 / 10 = 1

  1 % 10 = 1
