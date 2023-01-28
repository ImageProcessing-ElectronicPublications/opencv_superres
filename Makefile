TARGET = opencv_superres
CXX = g++
CXXFLAGS = -std=c++11 -g `pkg-config --cflags opencv4` 
LIBS = `pkg-config --libs opencv4`
RM = rm -f

SOURCES = opencv_superres.cpp
OBJECTS = $(SOURCES:.cpp=.o)

.SUFFIXES: .cpp .o
.PHONY: all clean

all: $(TARGET)

$(TARGET): $(OBJECTS)
	$(CXX) $^ $(LIBS) -o $@

.cpp.o:
	$(CXX) -c $(CXXFLAGS) $< -o $@

clean:
	$(RM) $(OBJECTS) $(TARGET) 
