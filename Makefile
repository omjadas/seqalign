SRCDIR = ./src
BINDIR = ./bin

default: $(SRCDIR)/seqalign.cpp BinDir
	g++ -O3 -fopenmp -o $(BINDIR)/seqalign $(SRCDIR)/seqalign.cpp

BinDir:
	mkdir -p $(BINDIR)

clean:
	rm -rf $(BINDIR)
