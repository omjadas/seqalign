CC = g++
CFLAGS = -O3 -Wall -Wextra
SRCDIR = ./src
BINDIR = ./bin

default: omp mpi

omp: $(SRCDIR)/seqalignomp.cpp BinDir
	$(CC) $(CFLAGS) -fopenmp -o $(BINDIR)/seqalignomp $(SRCDIR)/seqalignomp.cpp

mpi: $(SRCDIR)/seqalignmpi.cpp BinDir
	mpicc $(CFLAGS) -o $(BINDIR)/seqalignmpi $(SCRCIR)/seqalignmpi.cpp

debug: CFLAGS += -DDEBUG
debug: default

BinDir:
	mkdir -p $(BINDIR)

clean:
	rm -rf $(BINDIR)
