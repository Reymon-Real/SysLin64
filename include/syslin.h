#ifndef __SYSLIN__H__
#define __SYSLIN__H__

extern void sys_write(const char* msg, unsigned long length); // Optimizada para ser más rápida que puts
extern void sys_open(const char* file_name, int flags, int mode); // Optimizada para alto rendimiento
extern void sys_exit(void); // Optimizada para salir de forma rápida de un proceso

#endif