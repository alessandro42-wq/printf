#include "libftprintf.h"

int	ft_putptr(unsigned long ptr)
{
	int	count;

	count = 0;
	count += write(1, "0x", 2);
	count += ft_puthex(ptr, 'x');
	return (count);
}
