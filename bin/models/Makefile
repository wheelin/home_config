NAME=app
CFLAGS=-Wall -Wextra -g -O0 -std=c11
SRCS=$(wildcard *.c)
OBJS=$(SRCS:.c=.o)
CC=gcc
LD=gcc
 
all: $(SRCS) $(NAME)
 
$(NAME): $(OBJS)
	$(CC) $(CFLAGS) -o $@ $(OBJS)

.c.o:
	$(CC) -c $(CFLAGS) $< -o $@
 
clean:
	@rm -f $(OBJS)
	@rm -f *.d *~

clean_all: clean
	@rm -f $(NAME)
