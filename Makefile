# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: edessain <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2019/11/27 15:24:23 by edessain          #+#    #+#              #
#    Updated: 2019/11/27 15:24:25 by edessain         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #

SRCS_CH = ./srcs_ch/main.c \
		./srcs_ch/ft_cmd.c \
		./srcs_ch/ft_cmd_2.c \
		./srcs_ch/ft_cmd_3.c \
		./srcs_ch/check_cmd.c \
		./srcs_ch/parsing.c \
		./srcs_ch/quick_sort.c \
		./srcs_ch/utils.c \
		./srcs_ch/ft_free.c \
		./srcs_ch/check_error.c \

SRCS_PS = ./srcs_ps/main.c \
		./srcs_ch/parsing.c \
		./srcs_ch/ft_cmd.c \
		./srcs_ch/ft_cmd_2.c \
		./srcs_ch/ft_cmd_3.c \
		./srcs_ps/sort_small_batch.c \
		./srcs_ch/quick_sort.c \
		./srcs_ps/ft_algo_ps.c \
		./srcs_ps/sort_stack_b.c \
		./srcs_ch/utils.c \
		./srcs_ch/ft_free.c \
		./srcs_ch/check_error.c \


OBJS_CH	=	$(SRCS_CH:%.c=%.o)
OBJS_PS	=	$(SRCS_PS:%.c=%.o)

LIBFT	=	libft/libft.a

NAME_CH	=	checker
NAME_PS =	push_swap
 
CFLAGS	=	-Wall -Wextra -Werror -g

all:		$(NAME_CH) $(NAME_PS)

$(NAME_CH):	$(OBJS_CH) $(LIBFT)
			gcc $(CFLAGS) -o $(NAME_CH) $(OBJS_CH) $(LIBFT)
$(NAME_PS):	$(OBJS_PS) $(LIBFT)
			gcc $(CFLAGS) -o $(NAME_PS) $(OBJS_PS) $(LIBFT)

clean:		
			rm -rf $(OBJS_CH)
			rm -rf $(OBJS_PS)
			cd libft/ && make $@

fclean:		clean
			rm -rf $(NAME_CH)
			rm -rf $(NAME_PS)
			rm -rf $(LIBFT)

re:			fclean all

$(LIBFT):
			make -C ./libft