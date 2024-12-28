;; SPDX-License: GPL-2

;; -----------------------------------------
;; |=======================================|
;; |=== @author: Eduardo Pozos Huerta	===|
;; |=== @file: syslin.inc		===|
;; |=== @date: 27/12/2024		===|
;; |=======================================|
;; -----------------------------------------

%ifndef __SYSLIN__INC__
%define __SYSLIN__INC__ 1

;; Etiquetas de ingreo y salida de datos
extern sys_write: function

;; Etiquetas de archivos
extern sys_open: function
extern sys_close: function|

;; Etiquetas de procesos
extern sys_exit: function

%endif
