CC=gcc
CFLAGS=-g
BINS=server
OBJS=server.o myqueue.o

all: $(BINS) client.o

server: $(OBJS)
	$(CC) $(CFLAGS) -o $@ $^  -lpthread

client.o: client.c
	$(CC) $(CFLAGS) client.c -o client -lpthread

%.o: %.c
	$(CC) $(CFLAGS) -c -o $@ $^

clean:
	rm -f *.dSYM $(BINS) client *.o