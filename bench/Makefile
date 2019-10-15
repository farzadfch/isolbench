CC=riscv64-unknown-linux-gnu-gcc
CXX=riscv64-unknown-linux-gnu-g++
PGMS=latency latency-mlp bandwidth pagetype bandwidth-rt

CFLAGS=-O2 -Wall -g
CXXFLAGS=$(CFLAGS)
LDFLAGS=-Wl,--no-as-needed -lrt -static

all: $(PGMS)

latency: latency.o
latency-mlp: latency-mlp.o
	$(CXX) $(CFLAGS) $(LDFLAGS) $< -o $@
bandwidth: bandwidth.o
bandwidth-rt: bandwidth-rt.o
	$(CC) $(CFLAGS) $(LDFLAGS) $< -o $@ -lrt -lpthread
pagetype: pagetype.o

clean:
	rm *.o *~ $(PGMS)
