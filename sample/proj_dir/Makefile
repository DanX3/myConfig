CC = g++
SRCS = $(shell find src/ -name "*.cpp")
OBJS = $(patsubst src/%, build/%, $(SRCS:.cpp=.o))
TARGET = a.out
MAIN = main.cpp

all: $(TARGET)

run: $(TARGET)
	./$(TARGET)

$(TARGET): $(OBJS) $(MAIN)
	$(CC) $^ -Iinclude -o $@

$(OBJS): $(SRCS)
	$(CC) -c $< -Iinclude -o $@

clean:
	rm -f $(TARGET)
	rm -f build/*.o

print:
	@echo "TARGET = $(TARGET)"
	@echo "OBJS = $(OBJS)"
	@echo "SRCS = $(SRCS)"
