./bin/d: ./obj/main.o ./obj/d.o ./bin
	gcc ./obj/main.o ./obj/d.o -o ./bin/d

./obj/main.o: ./src/main.c ./obj
	gcc -c ./src/main.c -o ./obj/main.o -Wall

./obj/d.o: ./src/d.c ./obj
	gcc -c ./src/d.c -o ./obj/d.o -Wall

./bin:  
	mkdir bin

./obj: 
	mkdir obj

.PHONY: clean
clean:
	rm -f -r bin/ obj/
