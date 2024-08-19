    .text
    .globl _start

_start:
    j _start2

_start2:
    call main
