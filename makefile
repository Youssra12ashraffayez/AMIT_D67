frontend: main.c
	gcc -E main.c -o main.i	
middleend: main.c
	gcc -S main.c -o main.s
backend: main.c
	gcc -c main.c -o main.o
linker: main.c
	gcc -o main main.c
build: main.c
	make frontend
	make middleend
	make backend
	make linker
run: main.c
	./main.exe
build_run: main.c
	make build
	make run
