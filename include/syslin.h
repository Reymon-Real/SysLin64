// SPDX-License: GPL-2

/**
 *
 * @author: Eduardo Pozos Huerta
 * @file: syslin.h
 * @date: 27/12/2024
 *
 * /

#ifndef __SYSLIN__H__
#define __SYSLIN__H__

// Funciones para salida y entrada de datos
extern void sys_write(const char* msg, unsigned long length);	// Optimizada para ser más rápida que puts

// FUnciones para archivos
extern void sys_open(const char* filename, int flags, int mode);	// Optimizada para alto rendimiento
extern void sys_close(const char* filename);				// Optimizado para alto rendimiento

// Funciones para procesos
extern void sys_exit(void); // Optimizada para salir de forma rápida de un proceso

#endif
