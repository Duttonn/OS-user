CC = gcc
CFLAGS = -Wall -g

UNAME_S := $(shell uname -s)

ifeq ($(UNAME_S), Darwin)
	SDL_CFLAGS = -I/opt/homebrew/include/SDL2
	SDL_LDFLAGS = -L/opt/homebrew/lib -lSDL2 -lSDL2_image -lSDL2_ttf
else  
	SDL_CFLAGS = $(shell sdl2-config --cflags)
	SDL_LDFLAGS = $(shell sdl2-config --libs) -lSDL2_image -lSDL2_ttf
endif

all: server sh13

server: server.c
	$(CC) $(CFLAGS) -o server server.c

sh13: sh13.c
	$(CC) $(CFLAGS) $(SDL_CFLAGS) -o sh13 sh13.c $(SDL_LDFLAGS) -lpthread

clean:
	rm -f server sh13
