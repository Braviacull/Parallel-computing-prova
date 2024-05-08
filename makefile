MPICC = mpicc #The wrapper for the compiler
CFLAGS += -g #Useful for debug symbols
all: helloworld
helloworld: helloworld.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@
clean:
	rm -f helloworld
