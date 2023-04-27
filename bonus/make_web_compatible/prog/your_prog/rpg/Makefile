# Specify the name of your source file (without .c extension)
SRC = ./src/main 							\
			./src/free_struct						\
\
			./src/windows/menu/main_window		\
			./src/windows/menu/credit/credit_window	\
			./src/windows/game/game_window		\
			./src/windows/game/setting/setting_window		\
			./src/windows/game/inventory_window		\
			./src/windows/introduction/intro_window		\
			./src/windows/create_win				\
			./src/windows/create_win2	\
\
			./src/actions/action_menu_page		\
			./src/actions/action_game_page		\
			./src/actions/action_intro_page		\
			./src/actions/action_setting_page		\
\
			./src/sprites/sprite_menu_page		\
			./src/sprites/sprite_credit_page 	\
			./src/sprites/sprite_intro	\
			./src/text/intro_text	\
\
			./src/buttons/create_button			\
			./src/buttons/create_button_2			\
			./src/buttons/draw_buttons			\
\
			./src/init_elements/init_button		\
			./src/init_elements/init_sprite	\
\
		./src/parsing/get_buffer 	\
		./src/parsing/fill_stat_struct 	\
		./src/parsing/map_management/set_direction 	\
		./src/parsing/map_management/set_map 	\
		./src/parsing/map_management/set_move 	\
		./src/parsing/map_management/get_index 	\
\
		./src/inventory/add_end_list	\
		./src/inventory/disp_inv	\
		./src/inventory/set_pos	\
		./src/inventory/the_inv	\
		./lib/my/my_getnbr	\
			./lib/my/my_put_nbr	\
			./lib/my/my_putchar	\
			./lib/my/my_putstr	\
			./lib/my/my_str_to_word_array	\
			./lib/my/my_strcat	\
			./lib/my/my_strcmp	\
			./lib/my/my_strcpy	\
			./lib/my/my_strdup	\
			./lib/my/my_strlen	\
			./lib/my/my_strncpy	\
			./lib/my/free_tab	\

# Specify the directory where your CSFML library is installed
CSFML_DIR = /usr/local/

# Specify the directory where your Emscripten SDK is installed
EMSDK_DIR = /home/emscripten/emsdk

# Specify the name of your output file
OUT = out.html

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

# Define the object files to build
OBJ = $(SRCS:%=%.o)

# The default target to build
all: $(OUT)

# The rule to build the output file
$(OUT): $(OBJ)
	$(EMCC) $(LIBRARY) $(LIBS) $(OBJ) -o $(OUT)

# The rule to build the object files
$(OBJ): $(SRC).c
	$(EMCC) $(CFLAGS) $(INCLUDE) -c $(SRC).c -o $(OBJ)

# The rule to clean up the build artifacts
clean:
	rm -f $(OBJ) $(OUT)
