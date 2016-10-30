CC = clang
CFLAGS = -g -Wall -pedantic -ansi
PROGDIR = out/
PROG = out
SRC = main.c
OBJ = $(patsubst %.c,%.o,$(SRC))

.PHONY: all
all: $(PROG)

# Create dependency lists
depend: .depend
.depend: $(SRC)
	-rm -f ./.depend
	$(CC) $(CFLAGS) -MM $^ -MF ./.depend;

include .depend

# Build the program
$(PROG): $(OBJ) depend
	mkdir -p $(PROGDIR)
	$(CC) $(OBJ) -o $(PROGDIR)$(PROG)

# Clean intermediate and generated files
clean: 
	-rm -rf $(PROGDIR)
	-rm -rf *.o
