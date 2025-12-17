NAME = libftprintf.a
CC = gcc
CFLAGS = -Wall -Wextra -Werror

PRINTF_DIR = ./printf
LIBFT_DIR  = ./libft

SRCS = $(PRINTF_DIR)/ft_printf.c \
       $(PRINTF_DIR)/ft_puthex.c \
       $(PRINTF_DIR)/ft_putunbr.c \
       $(PRINTF_DIR)/ft_format.c

OBJS = $(SRCS:.c=.o)
HEADER = $(PRINTF_DIR)/libftprintf.h

all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)

%.o: %.c $(HEADER)
	# Qui dici al compilatore dove trovare gli header
	$(CC) $(CFLAGS) -I$(PRINTF_DIR) -I$(LIBFT_DIR) -c $< -o $@

clean:
	rm -f $(OBJS)

fclean: clean
	rm -f $(NAME)

re: fclean all
