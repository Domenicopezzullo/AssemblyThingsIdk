COMPILER=nasm
COMPILER_FLAGS=-felf64
LINKER=ld
LINKER_FLAGS=
OUTPUT=main

all main.S:
	@mkdir -p dep
	@mkdir -p build
	@$(COMPILER) $(COMPILER_FLAGS) -o dep/main.o main.S
	@$(LINKER) -o build/$(OUTPUT) $(LINKER_FLAGS) dep/main.o
	@./build/main
	@rm -rf dep
