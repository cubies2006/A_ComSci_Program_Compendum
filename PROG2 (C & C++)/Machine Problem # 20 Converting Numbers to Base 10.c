#include <stdio.h>
main()
{
	int x = 0, y, ctr = 1, base, num, q[10], r[10], sum = 0;
	printf("Enter base and the number: ");
	scanf("%d%d", &base, &num);
	q[0] = num / 10;
	r[0] = num % 10;
	while (q[x] >= base)
	{
		q[x + 1] = q[x] / 10;
		r[x + 1] = q[x] % 10;
		x++;
	}
	y = x;
	for (x = 0; x <= y; x++)
	{
		if (q[x] > base)
		{
			printf("INVALID!!! ");
			break;
		}
		else if (r[0] > base)
		{
			printf("INVALID!!! ");
			break;
		}
	}
	for (x = 0; x <= y; x++)
	{
		sum += r[x] * ctr;
		ctr *= base;
	} 
	sum += q[x - 1] * ctr;
	printf("%d\n", sum);
	getch();
}