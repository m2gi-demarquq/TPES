CC = gcc
CFLAGS = -Wall --std=c99 -g
EXEC = test



%.o: %.c
	$(CC) -o $@ -c $< $(CFLAGS)
	
ES.o:
	gcc -o ES.o -c ES.c $(CFLAGS)


test.o:
	gcc -o test.o -c test.c $(CFLAGS)


test: test.o ES.o
	gcc -o test test.o ES.o $(CFLAGS)

fecriref : test_fecriref.o ES.o
	$(CC) -o fecriref test_fecriref.o ES.o $(CFLAGS)

run:
	./test src.txt dest.txt
runf:
	./fecriref

clean:
	rm -rf *.o
	rm -rf test
	rm -rf fecrire
	rm -rf dest.txt
	touch dest.txt
