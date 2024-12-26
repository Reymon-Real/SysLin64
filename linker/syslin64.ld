ENTRY(start)

MEMORY {
    TEXT    (rx) : ORIGIN = 40M + 000K, LENGTH = 64K
    DATA    (rw) : ORIGIN = 40M + 064K, LENGTH = 64K
    BSS     (rw) : ORIGIN = 40M + 128K, LENGTH = 64K
    RODATA  (r)  : ORIGIN = 40M + 192K, LENGTH = 64K
}

SECTIONS {

    . = 40M;
    start = .;

    .text : {
        *(.text)
        *(.code)
        *(_TEXT)
        *(_CODE)
    } > TEXT

    .data : {
        *(.data)
        *(_DATA)
    } > DATA

    .bss : {
        *(.bss)
        *(_BSS)
    } > BSS

    .rodata : {
        *(.rodata)
        *(_RODATA)
    } > RODATA

}