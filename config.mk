# st version
VERSION = 0.3

# Customize below to fit your system

# paths
PREFIX = /usr/local
MANPREFIX = ${PREFIX}/share/man

# includes and libs
INCS = -I. -I/usr/include
LIBS = -L/usr/lib -lc -lutil

# flags
CPPFLAGS = -DVERSION=\"${VERSION}\"
CFLAGS += -g -std=c99 -w -Os ${INCS} ${CPPFLAGS} `sdl2-config --cflags`
LDFLAGS += -g ${LIBS} `sdl2-config --libs` -lSDL2_ttf

# compiler and linker
CC ?= cc
