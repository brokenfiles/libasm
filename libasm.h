/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   libasm.h                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: llaurent <llaurent@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/27 10:48:34 by llaurent          #+#    #+#             */
/*   Updated: 2020/01/27 10:49:06 by llaurent         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LIBASM_H
# define LIBASM_H
# include <libc.h>
# define RED "\033[0;31m"
# define BOLD_RED "\033[1;31m"
# define GREEN "\033[0;32m"
# define BOLD_GREEN "\033[1;32m"
# define YELLOW "\033[0;33m"
# define BOLD_YELLOW "\033[1;33m"
# define BLUE "\033[0;34m"
# define BOLD_BLUE "\033[1;34m"
# define MAGENTA "\033[0;35m"
# define BOLD_MAGENTA "\033[1;35m"
# define CYAN "\033[0;36m"
# define BOLD_CYAN "\033[1;36m"
# define RESET "\033[0;0m"

unsigned long	ft_strlen(char *str);
int				ft_write(int fildes, const void *buf, size_t nbyte);
int				ft_read(int fildes, const void *buf, size_t nbyte);
int				ft_strcmp(const char *s1, const char *s2);
char			*ft_strcpy(char *dst, const char *src);
char			*ft_strdup(const char *s1);
#endif
