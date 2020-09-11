SRCDIR = ./src
BINDIR = ./bin

default: $(SRCDIR)/seqalign.cpp BinDir
	g++-10 -O3 -fopenmp -o $(BINDIR)/seqalign $(SRCDIR)/seqalign.cpp

debug: $(SRCDIR)/seqalign.cpp BinDir
	g++-10 -O3 -fopenmp -D DEBUG -o $(BINDIR)/seqalign $(SRCDIR)/seqalign.cpp

BinDir:
	mkdir -p $(BINDIR)

clean:
	rm -rf $(BINDIR)
