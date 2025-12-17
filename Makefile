NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

LIBFT_DIR  = ./libft

SRCS = ft_printf.c \
       ft_puthex.c \
       ft_putunbr.c \
      ft_format.c

OBJS = $(SRCS:.c=.o)
HEADER = libftprintf.h

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c $(HEADER)
	# Qui dici al compilatore dove trovare gli header
	$(CC) $(CFLAGS) -I$(LIBFT_DIR) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
