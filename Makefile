# CC=g++
# CFLAGS=-I.
# prgo:
# 	./prog

# make: main.cpp
#      $(CC) g++ main.cpp -I/opt/homebrew/Cellar/sfml/2.5.1_2/include -o prog -L/opt/homebrew/Cellar/sfml/2.5.1_2/lib/ -lsfml-graphics -lsfml-window -lsfml-system

# main.cpp: 
# 	touch main.cpp

# clean:
# 	rm -f main.cpp

# Makefile for Writing Make Files Example
 
# *****************************************************
# Variables to control Makefile operation
 
CC = g++
CFLAGS = -Wall -g
 
# ****************************************************
# Targets needed to bring the executable up to date
 
main: main.o Point.o Square.o
    $(CC) $(CFLAGS) -o main main.o Point.o Square.o
 
# The main.o target can be written more simply
 
main.o: main.cpp Point.h Square.h
    $(CC) $(CFLAGS) -c main.cpp
 
Point.o: Point.h
 
Square.o: Square.h Point.h