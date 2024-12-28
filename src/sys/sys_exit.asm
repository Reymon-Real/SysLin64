;; SPDX-License: GPL-2

;; -----------------------------------------
;; |=======================================|
;; |=== @author: Eduardo Pozos Huerta	===|
;; |=== @file: sys_exit.asm		===|
;; |=== @date: 27/12/2024		===|
;; |=======================================|
;; -----------------------------------------

;; -------------------------------------------------
;; |===============================================|
;; |=== Indicamos que es un programa de 64 bits	===|
;; |=== 	por seguridad y legibilidad	===|
;; |===============================================|
;; -------------------------------------------------

bits 64

;; -------------------------------------------------
;; |===============================================|
;; |=== Indicamos que la etiqueta es visible	===|
;; |=== 	y su tipo de dato		===|
;; |===============================================|
;; -------------------------------------------------

global sys_exit: function

;; ---------------------------
;; |=========================|
;; |=== Sección de código ===|
;; |=========================|
;; ---------------------------

section .text
	sys_exit:		;; Indicamos el nombre de nuestro procedimiento
		mov eax, 0x3C	;; Indicamos el syscall (exit)
		mov edi, 0x00	;; Indicamos que terminamos con exito
		syscall		;; Llamamos al kernel Linux
		ret		;; Retornamos a donde fue llamada el procedimiento
	.pic: dq $ - sys_exit	;; Hacemos el código PIC
