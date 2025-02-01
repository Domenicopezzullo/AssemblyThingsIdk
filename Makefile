COMPILER=nasm
COMPILER_FLAGS=-felf64
LINKER=ld
LINKER_FLAGS=
OUTPUT=main

all: main.asm
	@mkdir -p dep
	@mkdir -p build
	@$(COMPILER) $(COMPILER_FLAGS) -o dep/main.o main.asm
	@$(LINKER) -o build/$(OUTPUT) $(LINKER_FLAGS) dep/main.o
	@./build/$(OUTPUT)
	@rm -rf dep
