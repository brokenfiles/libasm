/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: llaurent <llaurent@student.42.fr>          +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/01/18 16:14:42 by llaurent          #+#    #+#             */
/*   Updated: 2020/01/23 14:39:24 by llaurent         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <libc.h>

unsigned long	ft_strlen(char *str);
int	ft_write(int fildes, const void *buf, size_t nbyte);
int	ft_read(int fildes, const void *buf, size_t nbyte);
int	ft_strcmp(const char *s1, const char *s2);

int		header(char *str)
{
	int	len, total_len = 29, equals, index = 0;
	float	test;

	len = strlen(str);
	if (len > total_len)
		total_len = len + 10;
	equals = total_len - len - 2;
	test = ((float)equals / 2.0f);
	len = (int)test;
	printf("\033[0;35m");
	if ((float)len - test < 0.0f)
		printf("=");
	while (index++ < equals / 2)
		printf("=");
	printf(" \033[0;32m%s\033[0;35m ", str);
	index = 0;
	while (index++ < equals / 2)
		printf("=");
	printf("\033[0;0m\n");
	return (total_len - 1);
}

void	footer(int len)
{
	printf("\033[0;35m");
	while (len -- >= 0)
		printf("=");
	printf("\033[0;0m\n");
}

int		main(void)
{
	int		fd;
	char	*str, *str2;
	int		ret, h;
	char	buffer[21];

	str = "yo lekip";
	str2 = "bonjourr";

	h = header("Libasm tester");
	printf("\033[0;34mThis color \033[0;0m= libasm code\033[0;0m\n");
	printf("\033[0;33mThis color \033[0;0m= libc code\033[0;0m\n");
	footer(h);
	printf("\n");

	h = header("ft_strlen test");
	printf("\033[0;34mft_strlen(\"%s\") = %lu\033[0;0m\n", str, ft_strlen(str));
	printf("\033[0;33mstrlen(\"%s\") = %lu\033[0;0m\n", str, strlen(str));
	footer(h);

	h = header("ft_strcmp test");
	printf("\033[0;34mft_strcmp(\"%s\", \"%s\") = %d\033[0;0m\n", str, str2, strcmp(str, str2));
	printf("\033[0;33mstrcmp(\"%s\", \"%s\") = %d\033[0;0m\n", str, str2, strcmp(str, str2));
	footer(h);

	h = header("ft_write test");
	printf("\033[1;31m🚨 In this test, the output is before the call.\033[0;0m\n");
	printf("\033[0;34mft_write(1, \"%s\", 3) = %d\033[0;0m\n", "yo\\n", ft_write(1, "yo\n", 3));
	printf("\033[0;33mwrite(1, \"%s\", 3) = %zd\033[0;0m\n", "yo\\n", write(1, "yo\n", 3));
	footer(h);

	h = header("ft_read test");
	printf("\033[1;31m🚨 In this test, I'll read content from Makefile.\033[0;0m\n");
	printf("\033[0;34mfd = open(\"Makefile\", O_RDONLY) >> [fd = %d]\n", (fd = open("Makefile", O_RDONLY)));
	printf("\033[0;34mft_read(1, buffer, 20) = %d\033[0;0m\n", (ret = ft_read(fd, buffer, 20)));
	buffer[20] = 0;
	printf("\033[0;34mbuffer: %s\033[0;0m\n", buffer);
	close(fd);
	printf("\033[0;33mfd = open(\"Makefile\", O_RDONLY) >> [fd = %d]\n", (fd = open("Makefile", O_RDONLY)));
	printf("\033[0;33mread(1, buffer, 20) = %d\033[0;0m\n", (ret = read(fd, buffer, 20)));
	buffer[20] = 0;
	printf("\033[0;33mbuffer: %s\033[0;0m\n", buffer);
	close(fd);
	footer(h);
	return (0);
}