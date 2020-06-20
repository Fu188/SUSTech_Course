SRC_DIR =./Lab8
SOURCE = $(wildcard $(SRC_DIR)/*.c) $(wildcard $(SRC_DIR)/*.cpp)
OBJS = $(patsubst %.c,%.o,$(patsubst %.cpp,%.o,$(SOURCE)))
TARGET = main
# I am a comment, and I want to say that the variable CC will be
# the compiler to use. gcc for C program, define as g++ for C++
CC = g++
LIBS = -lm
LDFLAGS =
INCLUDE = -I./inc
# Hey!, I am comment number 2. I want to say that CFLAGS will be the
# options I'll pass to the compiler.
# -c says to generate the object file.
# -g adds debugging information to the executable file
#-o0: no optimizations
#-o1: default optimization
#-o2: represents the second-level optimization
#-o3: represents the highest level optimization
#-os: equivalent to -o2.5 optimization, but with no visible code size
# -Wall turns on most, but not all, compiler warnings
CFLAGS = -g -Wall -O3 $(DEFINES) $(INCLUDE)
CXXFLAGS = $(CFLAGS) -DHAVE_CONFIG_H
$(TARGET) : $(OBJS)
	$(CC) $(CXXFLAGS) -o $@ $(OBJS) $(LDFLAGS) $(LIBS)
.PHONY: clean
clean:
	rm -f $(SRC_DIR)/*.o $(TARGET)
