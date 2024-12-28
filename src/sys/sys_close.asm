;; SPDX-License: GPL-2

;; -----------------------------------------
;; |=======================================|
;; |=== @author: Eduardo Pozos Huerta	===|
;; |=== @file: sys_close.asm		===|
;; |=== @date: 27/12/2024		===|
;; |=======================================|
;; -----------------------------------------

;; -------------------------------------------------
;; |===============================================|
;; |=== Indicamos que es programa de 64 bits	===|
;; |=== 	por seguridad y legibilidad	===|
;; |===============================================|
;; -------------------------------------------------

bits 64

;; |================================================|
;; |=== Indicamos que la etiqueta es visible	===|
;; |=== 	y su tipo de dato		===|
;; |================================================|

global sys_close: function

;; ---------------------------
;; |=========================|
;; |=== Sección de código ===|
;; |=========================|
;; ---------------------------

section .text
	sys_close:		;; Indicamos el nombre del procedimiento
		mov rax, 3	;; Indicamos el syscall (close)
		syscall		;; Llamamos al kernel Linux
		ret		;; Retornamos a donde fue llamada la etiqueta
	.pic: dq $ - sys_close	;; Hacemos el código PIC
