# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ggasset- <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2024/09/18 16:36:30 by ggasset-          #+#    #+#              #
#    Updated: 2024/10/02 12:40:06 by ggasset-         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #




c_files = ft_atoi.c   ft_calloc.c   ft_isalpha.c	ft_isdigit.c  ft_itoa.c    ft_memcmp.c	ft_memmove.c  ft_putchar_fd.c  ft_putnbr_fd.c  ft_split.c   ft_strdup.c    ft_strjoin.c  ft_strlcpy.c  ft_strmapi.c  ft_strnstr.c  ft_strtrim.c  ft_tolower.c ft_bzero.c  ft_isalnum.c  ft_isascii.c	ft_isprint.c  ft_memchr.c  ft_memcpy.c	ft_memset.c   ft_putendl_fd.c  ft_putstr_fd.c  ft_strchr.c  ft_striteri.c  ft_strlcat.c  ft_strlen.c   ft_strncmp.c  ft_strrchr.c  ft_substr.c	 ft_toupper.c

o_files = $(patsubst %.c, %.o, ${c_files})

bonus_c_files = ft_lstadd_back_bonus.c ft_lstadd_front_bonus.c ft_lstclear_bonus.c ft_lstdelone_bonus.c ft_lstiter_bonus.c ft_lstlast_bonus.c ft_lstmap_bonus.c ft_lstnew_bonus.c ft_lstsize_bonus.c

bonus_o_files = ${patsubst %.c, %.o, ${bonus_c_files}}

NAME = libft.a

CC_FLAGS = -c -Wall -Wextra -Werror
AR_COMM = ar -rsc ${NAME}

all: ${NAME}


re:
	make fclean
	make all

fclean:
	-rm ${NAME}
	make clean

clean:
	-rm ${o_files} ${bonus_o_files}

bonus: ${bonus_o_files} ${o_files}
	${AR_COMM} $?

${NAME}: ${o_files}
	${AR_COMM} $?

%.o : %.c 
	cc ${CC_FLAGS} $?

clean-test:
	-rm test
test:
	gcc -g -DTEST -Wall -Wextra -Werror -o test ${c_files}
rtest:
	-make clean-test
	make test

.PHONY: all re fclean clean bonus
