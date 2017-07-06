CXX = g++
CXXFLAGS = -Wall -Wextra -pedantic -std=c++14 -I include
SRC = src/*.cc
HEAD = include/*.hh
EXE = cppa

all: $(EXE)
	./$(EXE)

$(EXE): $(SRC) $(HEAD)
	$(CXX) `sdl-config --cflags` -lSDL_gfx $(CXXFLAGS) $(SRC) -o $@ 
debug:CXXFLAGS+=-g
debug:$(EXE)

clean:
	rm -f src/*.o
	rm -f $(EXE)
