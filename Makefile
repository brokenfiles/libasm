SRCS		=	ft_strlen.s\
				ft_write.s\
				ft_read.s\
				ft_strcpy.s\
				ft_strdup.s\
				ft_strcmp.s
OBJS		= $(SRCS:%.s=%.o)
NAME		= libasm.a
NAME_OBJ	= libasm.out
CC			= nasm -f macho64

.s.o:		${OBJS}
			@${CC} $< -o ${<:.s=.o}
			@echo "\033[1;32m> Generated \033[1;33m${<:.s=.o}\033[0;0m"

all:		$(NAME)

$(NAME):	$(OBJS)
			@ar rc ${NAME} ${OBJS}
			@echo "\033[1;32m┌─┐┬ ┬┌─┐┌─┐┌─┐┌─┐┌─┐"
			@echo "└─┐│ ││  │  ├┤ └─┐└─┐"
			@echo "└─┘└─┘└─┘└─┘└─┘└─┘└─┘"
			@echo "\033[1;32m> \033[1;33m${NAME}\033[1;32m generated.\033[0;0m"

clean:
			@rm -f ${OBJS}
			@echo "\033[1;31m> Removing ${OBJS}\033[0;0m"

fclean:		clean
			@rm -f ${NAME} ${NAME_OBJ}
			@echo "\033[1;34m> Removing ${NAME}\033[0;0m"

re:			fclean all

run:		all
			@gcc main.c libasm.a -o ${NAME_OBJ}
			@echo "\033[1;35m> Running ${NAME_OBJ}\033[0;0m"
			@./${NAME_OBJ}
