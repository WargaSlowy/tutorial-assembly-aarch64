.equ BUFFER_SIZE, 64
.equ SYS_EXIT, 93

.text
.global _start

_start:
  sub sp, sp, #BUFFER_SIZE

  add sp, sp, #BUFFER_SIZE

  mov x0, #0
  mov x8, #SYS_EXIT
  svc #0
