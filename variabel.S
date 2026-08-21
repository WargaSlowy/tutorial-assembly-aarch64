.data

umur:
  .word 21

.nilai:
  .quad 150

.huruf:
  .byte 'C'

.pesan:
  .asciz "wello cik lagi belajar assembly"

.global _start

_start:
  adr x0, nilai
  ldr x1, [x0]
  
  mov x0, #0
  mov x8, #93
  svc #0

