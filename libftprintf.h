#ifndef LIBFTPRINTF_H
#define LIBFTPRINTF_H

#include "../libft/libft.h"   // Include libft una volta sola

int ft_printf(const char *format, ...);
int	ft_putunbr(unsigned long n);
int	ft_putptr(unsigned long ptr);
int	ft_puthex(unsigned long n, char format);
int	ft_format(va_list args, char c);
/* altre dichiarazioni di ft_printf e funzioni interne */

#endif
