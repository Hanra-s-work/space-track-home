# Specify the name of your source file (without .c extension)
SRC = ./test

# Specify the directory where your CSFML library is installed
CSFML_DIR = /usr/local

# Specify the directory where your Emscripten SDK is installed
EMSDK_DIR = /home/emscripten/emsdk

# Specify the name of your output file
OUT = out

# Specify the flags to pass to the compiler
CFLAGS = -Wall -Wextra -Wpedantic -O2

# Specify the libraries to link against
LIBS = -lcsfml-system -lcsfml-graphics -lcsfml-audio -lcsfml-window

# Specify the path to your Emscripten SDK
EMSDK_PATH = $(EMSDK_DIR)/upstream/emscripten

# Specify the path to the emcc compiler
EMCC = $(EMSDK_PATH)/emcc

# Specify the path to the CSFML header files
INCLUDE = -I$(CSFML_DIR)/include

# Specify the path to the CSFML library files
LIBRARY = -L$(CSFML_DIR)/lib

EMCC_OPTS = -s "WASM=1" -s "MODULARIZE=1" -s "EXPORTED_RUNTIME_METHODS=['ccall', 'cwrap']" -s "ERROR_ON_UNDEFINED_SYMBOLS=0" --no-entry

# Define the object files to build
OBJ = $(SRC).o

# The default target to build
all: $(OUT).js $(OUT).wasm

# The rule to build the Wasm file
$(OUT).wasm: $(OBJ)
	$(EMCC) $(LIBRARY) $(LIBS) $(OBJ) -o $(OUT).wasm  $(EMCC_OPTS)

# The rule to build the JS file
$(OUT).js: $(OBJ)
	$(EMCC) $(LIBRARY) $(LIBS) $(OBJ) -o $(OUT).js  $(EMCC_OPTS)

# The rule to build the object file
$(OBJ): $(SRC).c
	$(EMCC) $(CFLAGS) $(INCLUDE) -c $(SRC).c -o $(OBJ)

# The rule to clean up the build artifacts
clean:
	rm -f $(OBJ) $(OUT).js $(OUT).wasm
