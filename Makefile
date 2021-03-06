#******************************************************************************#
#                                                                              #
#                                                         :::      ::::::::    #
#    Makefile                                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: sperkhun <marvin@42.fr>                    +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2018/06/20 14:04:55 by sperkhun          #+#    #+#              #
#    Updated: 2018/06/20 14:04:55 by sperkhun         ###   ########.fr        #
#                                                                              #
#******************************************************************************#

NAME = ft_retro

FLAGS = -Wall -Wextra -Werror 

SRC = main.cpp Game.cpp Player.cpp Enemies.cpp Weapon.cpp SpaceObject.cpp Boss.cpp

OBJ = $(SRC:.cpp=.o) 

all: $(NAME)

$(NAME): $(OBJ)
	clang++ $(FLAGS) -o $(NAME) $(OBJ) -lncurses

%.o : %.cpp Game.hpp Player.hpp Enemies.hpp Weapon.hpp SpaceObject.hpp
	clang++ $(FLAGS) -o $@ -c $< 

clean:
	rm -f $(OBJ)

fclean: clean
	rm -f $(NAME)

re: fclean all