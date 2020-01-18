/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: llaurent <llaurent@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/18 16:14:42 by llaurent          #+#    #+#             */
/*   Updated: 2020/01/18 18:00:24 by llaurent         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libc.h>

int	ft_strlen(char *str);

int	main(void)
{
	char	*str;

	str = NULL;

	printf("REAL STRLEN : \n");
	printf("str : %s, len : %lu\n", str, strlen(str));
	printf("MY FT_STRLEN : \n");
	printf("str : %s, len : %d\n", str, ft_strlen(str));
	return (0);
}