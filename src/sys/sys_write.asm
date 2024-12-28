;; SPDX-License: GPL-2

;; -------------------------------------------------
;; |===============================================|
;; |=== @author: Eduardo Pozos Huerta		===|
;; |=== @file: sys_write.asm			===|
;; |=== @date: 27/12/2024			===|
;; |===============================================|
;; -------------------------------------------------

;; -------------------------------------------------
;; |===============================================|
;; |=== Indicamos que es un programa de 64 bits	===|
;; |=== 	por legibilidad y seguridad	===|
;; |===============================================|
;; -------------------------------------------------

bits 64

;; -------------------------------------------------
;; |===============================================|
;; |=== Indicamos que etiqueta es visible	===|
;; |=== 	y su tipo de dato		===|
;; |===============================================|
;; -------------------------------------------------

global sys_write: function

;; ---------------------------
;; |=========================|
;; |=== Sección de código ===|
;; |=========================|
;; ---------------------------

section .text
	sys_write:		;; Indicamos el nombre del proceso (etiqueta)
		mov rdx, rsi	;; Pasamos la longitud
		mov rsi, rdi	;; Pasamos el puntero
		mov edi, 1	;; Indicamos la salida de los datos
		mov eax, 1	;; Indicamos el syscall (write)
		syscall		;; Llamamos al kernel Linux
		ret		;; Retornamos a donde fue llamada la etiqueta
	.pic: dq $ - sys_write	;; Hacemos PIC el código
