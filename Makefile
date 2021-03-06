CFLAGS = -g -Wall -ansi -std=c89 -pedantic
CC = gcc

EXES = c_oop_test

all: $(EXES)

player/player.o: player/player.c player/player.h
	$(CC) $(CFLAGS) -c -o player/player.o player/player.c

animal/animal.o: animal/animal.c animal/animal_private.h
	$(CC) $(CFLAGS) -c -o animal/animal.o animal/animal.c

main.o: main.c player/player.h animal/animal.h
	$(CC) $(CFLAGS) -c -o main.o main.c

$(EXES): main.o player/player.o animal/animal.o
	$(CC) -o $(EXES) main.o player/player.o animal/animal.o
