# SPDX-License

# Busqueda de archivos
SOURCE := $(shell find src -name '*.asm')
HEADER := $(shell find include -name '*.inc')
OBJECT := $(patsubst src/%.asm,bin/%.o,$(SOURCE))

# Archivos especiales
EPX := bin/main.epx
SPX := lib/libsyslin64.so
LDS := linker/syslin64.ld

# Herramientas
LD 		:= ld
NASM 	:= nasm

# Flags de las herramientas
LDFLAGS 	:= -I /bin/ld.so -L lib -T $(LDS)
NASMFLAGS 	:= -Iinclude -felf64

# Reglas

all: $(SPX) $(EPX)

run: $(EPX)
	@./$<

$(EPX): bin/main.o
	$(LD) $(LDFLAGS) -o $@ $< -lsyslin64 -rpath=lib

$(SPX): $(filter-out bin/main.o,$(OBJECT))
	$(LD) -shared -soname=libsyslin64.so -o $@ $^

bin/%.o: src/%.asm $(HEADER)
	@mkdir -p $(dir $@)
	$(NASM) $(NASMFLAGS) $< -o $@

# Reglas .PHONY

.PHONY: clean run all $(LD) $(NASM) $(LDFLAGS) $(NASMFLAGS)

clean:
	$(RM) $(OBJECT) $(SPX) $(EPX)