.global _start

.section .text

_start:
  mov x19, #100
  mov x20, #200

  stp x19, x20, [sp, #-16]!

  mov x19, #999
  mov x20, #100
  
  ldp x19, x20, [sp], #16

  mov x0, #0
  mov x8, #93
  svc #0
