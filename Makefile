all: clean build run

clean: 
	rm -rf ./target/*.out

./src/main/snake.c:
	gcc -o ./target/snake.o ./src/main/snake.c

build: ./target/snake.o
	gcc -o ./build/snake ./target/snake.o

run:
	./build/snake
	
./target/snake.o: ./src/main/snake.c
	gcc -c ./src/main/snake.c -o ./target/snake.o