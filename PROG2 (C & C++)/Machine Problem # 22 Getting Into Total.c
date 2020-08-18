#include <stdio.h>
main()
{
	int y1, y2, y3 = 10, x = 1, y = 2, z = 10, diff = 9, total1 = 0, total2 = 0, total3 = 0, ctr;
	for (ctr = 1; ctr <= 10; ctr++)
	{
		printf("\t");
		while (x <= 10)
		{
			y1 = x * x;
			printf("%d", y1);
			total1 += y1;
			++x;
			break;
		}
		printf("\t\t\t");
		while (y <= 11)
		{
			y2 = y * y;
			printf("%d", y2);
			total2 += y2;
			++y;
			break;
		}
		printf("\t\t\t");
		while (z <= 10)
		{
			if (ctr % 2 == 1)
			{
				printf("%d\n", z);
				total3 += z;
				z -= diff;
				diff--;
				break;
			}
			else
			{ 	
				printf("%d\n", z);
				total3 += z;
				z += diff;
				diff--;
				break;
			}
		}
	}
	printf("\n\tThe total is %d", total1);
	printf("\tThe total is %d", total2);
	printf("\tThe total is %d", total3);
	getch();
}



