#████████╗██╗  ██╗███████╗██████╗  ██████╗ ███████╗██╗███╗   ██╗████████╗███████╗ ██████╗██╗  ██╗
#╚══██╔══╝██║  ██║██╔════╝██╔══██╗██╔═══██╗██╔════╝██║████╗  ██║╚══██╔══╝██╔════╝██╔════╝██║  ██║
#   ██║   ███████║█████╗  ██████╔╝██║   ██║███████╗██║██╔██╗ ██║   ██║   █████╗  ██║     ███████║
#   ██║   ██╔══██║██╔══╝  ██╔═══╝ ██║   ██║╚════██║██║██║╚██╗██║   ██║   ██╔══╝  ██║     ██╔══██║
#   ██║   ██║  ██║███████╗██║     ╚██████╔╝███████║██║██║ ╚████║   ██║   ███████╗╚██████╗██║  ██║
#   ╚═╝   ╚═╝  ╚═╝╚══════╝╚═╝      ╚═════╝ ╚══════╝╚═╝╚═╝  ╚═══╝   ╚═╝   ╚══════╝ ╚═════╝╚═╝  ╚═╝
#   Makefile Template - Adaptable to Any C/C++ Project
# --------------------------------------------------------------
# This Makefile is a generic template that can be adapted 
# to any C or C++ project. Simply modify the directory and 
# file variables according to your structure.
# --------------------------------------------------------------

# Compiler and flags configuration
CC          = gcc  # You can change this to clang or another compiler
CFLAGS      = -Wall -Wextra -Werror -I include/  # Compilation options

# Directories (Modify according to your project)
SRC_DIR     = src      # Directory containing source files
INCLUDE_DIR = include  # Directory containing header files
BUILD_DIR   = build    # Directory where compiled files will be stored
BIN         = app      # Name of the generated executable

# Source files (Modify according to your file structure)
SRC         = # Put all your .c files routes here
OBJ         = # Converts .c to .o

# Main rule
all: $(BIN)

# Compile the executable
$(BIN): $(OBJ)
	@mkdir -p $(BUILD_DIR)
	$(CC) $(OBJ) -o $(BIN)

# Rule to compile .c files to .o inside build/
$(BUILD_DIR)/%.o: $(SRC_DIR)/%.c
	@mkdir -p $(BUILD_DIR)
	$(CC) $(CFLAGS) -c $< -o $@

# Clean compiled files
clean:
	rm -rf $(OBJ) $(BIN) $(BUILD_DIR)

# Clean and recompile everything
re: clean all

# Usage:
# - Run `make` to compile the project.
# - Use `make clean` to remove compiled files.
# - Use `make re` to clean and recompile from scratch.
#
# Customize the variables according to your project and enjoy efficient compilation 🚀

