/*
.section .bss

buffer:
  .skip 64

.section .text
.global _start

_start:
  mov x0, #0
  adr x1, buffer
  mov x2, #64
  mov x8, #63
  svc #0

  mov x3, x0
  mov x0, #1
  adr x1, buffer
  mov x2, x3
  mov x8, #64
  svc #0

  mov x0, #0
  mov x8, #93
  svc #0
*/

.section .rodata

printing:
  .asciz "%ld"

.section .bss

angka:
  .skip 8

.text
.global main
.extern scanf

main:
  adr x0, printing
  adr x1, angka
  bl scanf

  mov x0, #0
  ret
