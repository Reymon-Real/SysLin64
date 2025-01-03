;; SPDX-License: GPL-2

;; -----------------------------------------
;; |=======================================|
;; |=== @author: Eduardo Pozos Huerta	===|
;; |=== @file: sys_open.asm		===|
;; |=== @date: 27/12/2024		===|
;; |=======================================|
;; -----------------------------------------

;; -------------------------------------------------
;; |===============================================|
;; |=== Indicamos que es un programa de 64 bits	===|
;; |=== 	por legibilidad y seguridad	===|
;; |===============================================|
;; -------------------------------------------------

bits 64

;; -------------------------------------------------
;; |===============================================|
;; |=== Indicamos que la etiqueta es visible	===|
;; |=== 	y su tipo de dato		===|
;; |===============================================|
;; -------------------------------------------------

global sys_open: function

;; ---------------------------
;; |=========================|
;; |=== Sección de código ===|
;; |=========================|
;; ---------------------------

section .text
	sys_open:		;; Indicamos el nombre del procedimiento
		mov eax, 2	;; Indicamos el syscall (open)
		syscall		;; Llamamos al kernel Linux
		ret		;; Retornamos a donde fue llamada la etiqueta
	.pic: dq $ - sys_open	;; Hacemos PIC el código
