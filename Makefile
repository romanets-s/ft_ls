NAME = ft_sl
SRC = main.c
SRCO = $(SRC:.c=.o)
INCLUDES = ft_ls.h
#FLAGS = -Wall -Wextra -Werror
LIBFT = libft/libft.a
PRINTF = libft/ft_printf/libftprintf.a

all: $(NAME)

$(NAME): $(SRCO)
	@make -C libft
	@make -C libft/ft_printf
	@gcc $(FLAGS) -o $(NAME) $(SRCO) $(LIBFT) $(PRINTF)
	@echo "\033[32;1m<ft_ls>    | done"

.c.o:
	@gcc $(FLAGS) -c $< -o $@

clean:
	@rm -f $(SRCO)
	@make clean -C libft
	@make clean -C libft/ft_printf
	@echo "\033[32;1m<ft_ls>    | clean succes"

fclean: clean
	@rm -f $(NAME)
	@make fclean -C libft
	@make fclean -C libft/ft_printf
	@echo "\033[32;1m<ft_ls>    | fclean succes"

re: fclean all
	@echo "\033[32;1m<ft_ls>    | re succes"
