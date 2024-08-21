OUTPUT_ARCH("riscv")
ENTRY("_start")

MEMORY {
    MEM(rwx) : ORIGIN = 0x00000000, LENGTH = 512M
}

SECTIONS {
    .text : ALIGN(4) {
        *(.text .text.*)
    } > MEM

    _end = .;
}
