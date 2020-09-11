CC = g++
CFLAGS = -O3 -fopenmp -Wall -Wextra
SRCDIR = ./src
BINDIR = ./bin

default: compile

compile: $(SRCDIR)/seqalign.cpp BinDir
	$(CC) $(CFLAGS) -o $(BINDIR)/seqalign $(SRCDIR)/seqalign.cpp

debug: CFLAGS += -DDEBUG
debug: compile

BinDir:
	mkdir -p $(BINDIR)

clean:
	rm -rf $(BINDIR)
