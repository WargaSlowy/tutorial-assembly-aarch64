.global _start

.macro tambahkan_register hasil, kiri, kanan
  add \hasil, \kiri, \kanan
.endm

.text

_start:
  mov x1, #10
  mov x2, #20

  tambahkan_register x0, x1, x2

  mov x8, #93
  mov x0, #0
  svc #0
