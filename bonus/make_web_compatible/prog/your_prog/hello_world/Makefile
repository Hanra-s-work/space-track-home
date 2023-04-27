##
## EPITECH PROJECT, 2023
## Makefile
## File description:
## jitter jitter
##

SRC	=	./main.c	\

SILENT	=	@

CC	=	$(SILENT)emcc

CFLAGS	=	-Wall -Wextra

CPPFLAGS	=	-iquote./include

OBJ	=	$(SRC:.c=.o)

NAME	=	my_comp.html

all:	$(NAME)

$(NAME):	$(OBJ)
	$(CC) -o $(NAME) $(OBJ)

clean:
	$(SILENT)rm -f $(OBJ)

fclean: clean
	$(SILENT)rm -f $(NAME)

re: fclean all clean

.PHONY: fclean all clean re

