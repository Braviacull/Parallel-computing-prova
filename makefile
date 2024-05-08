MPICC = mpicc #The wrapper for the compiler
CFLAGS += -g #Useful for debug symbols
all: helloworld easysendrecv
helloworld: helloworld.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@

easysendrecv: easysendrecv.c
	$(MPICC) $(CFLAGS) $(LDFLAGS) $? $(LDLIBS) -o $@

clean:
	rm -f helloworld easysendrecv
