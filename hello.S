; cara assembling dan jalankan
; aarch64-linux-gnu-as hello.S -o hello.o
; aarch64-linux-gnu-ld hello.o -o hello

; intel x86_64 jalan dengan qemu
; qemu-aarch64 ./hello

.section .data

wello_string:
  .ascii "wello cik belajar asm arm64\n"
  
wello_panjang = . - wello_string

.section .text

.global _start

_start:
  mov x0, #1
  ldr x1, =wello_string
  mov x2, #wello_panjang

  mov x8, #64

  svc #0

  mov x0, #0

  mov x8, #93

  svc #0
