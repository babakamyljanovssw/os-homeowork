# Define the target binary file
TARGET = boot.bin

# Default target to build the binary
all: $(TARGET)

# Rule to build the binary from the assembly source
$(TARGET): boot.asm
	nasm -f bin boot.asm -o $(TARGET)

# Clean target to remove the binary file
clean:
	rm -f $(TARGET)