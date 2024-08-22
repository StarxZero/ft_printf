CFLAGS = -Wall -Werror -Wextra

SRC = $(shell find . -name "*.c" )

OBJ = $(SRC:.c=.o)

NAME = libftprintf.a

.PHONY : all clean fclean re

all : $(NAME)

$(NAME) : $(OBJ) ft_printf.h
	ar -rc $(NAME) $^
	ranlib $(NAME)

clean :
	rm -f $(OBJ)

fclean : clean
	rm -f $(NAME)

re : fclean all
