ID3=/home/sasl/shared/main3/env/tools
CC=g++
CFLAGS=-Wall
LDLIBS=$ID3/lib
CLIBS=$ID3/include
MOI=~/TP_solo
SRC=/EnvDev/src/tp-solo-paolaallegrini/id3v2-0.1.11/src/

all: id3v2

%.o: %.cpp
	$(CC) -I $(CLIBS) -DVERSION="\"${VERSION}\"" -c -o $@ $<

id3v2: convert.o list.o id3v2.o genre.o
	$(CC) -L $(LDLIBS) $(CFLAGS) -o id3v2 convert.o list.o id3v2.o genre.o -lid3 -lz

install: id3v2
	cp id3v2 $(MOI)/bin

clean: rm -f *.o id3v2
