CC=g++
CFLAGS=-c -Wall
LDFLAGS=
SOURCES=main.cpp
        point.h
        trapez.h
        figure.h
        rectangle.h
        square.h
        document.h
        factory.h
        command.h
        editor.h
OBJECTS=$(SOURCES:.cpp=.o)
EXECUTABLE=lab7

all: $(SOURCES) $(EXECUTABLE)
	
$(EXECUTABLE): $(OBJECTS) 
	$(CC) $(LDFLAGS) $(OBJECTS) -o $@

.cpp.o:
	$(CC) $(CFLAGS) $< -o $@
