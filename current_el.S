; cara assembling dan jalankan
; aarch64-linux-gnu-as current_el.S -o current_el.o
; aarch64-linux-gnu-ld current_el.o -o current_el

; intel x86_64 jalan dengan qemu
; qemu-aarch64 ./current_el

.section .text

.global _start

_start:
  mrs x0, CurrentEL

  mov x0, #0
  mov x8, #93
  svc #0
