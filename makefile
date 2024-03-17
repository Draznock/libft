# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: afoinqui <afoinqui@student.42madrid.com>   +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/03/17 22:31:45 by afoinqui          #+#    #+#              #
#    Updated: 2024/03/17 22:31:48 by afoinqui         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

NAME = libft.a
CCFLAGS = -Wall -Wextra -Werror
RM = rm -f
HEADER = libft.h
SRC = ft_isalpha.c

OBJS =	$(SRC:.c=.o)
all: $(NAME)

$(NAME): $(OBJS)
	ar rcs $(NAME) $(OBJS)
clean:
	$(RM) $(OBJS)

fclean: clean
	$(RM) $(NAME)

re: fclean all

.PHONY:		all clean fclean re bonus