/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strmapi.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ggasset- <marvin@42.fr>                    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2024/09/18 12:37:55 by ggasset-          #+#    #+#             */
/*   Updated: 2024/09/27 13:36:20 by ggasset-         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

char	*ft_strmapi(char const *s, char (*f)(unsigned int, char))
{
	unsigned int	i;
	unsigned int	s_len;
	char			*s_out;

	s_len = ft_strlen(s);
	s_out = ft_calloc(s_len + 1, 1);
	i = 0;
	while (i < s_len && s_out)
	{
		s_out[i] = f(i, s[i]);
		i++;
	}
	return (s_out);
}
