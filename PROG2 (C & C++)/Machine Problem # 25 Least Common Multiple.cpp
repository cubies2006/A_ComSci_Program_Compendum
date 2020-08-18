#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	char a = 'Y';
	while (a == 'Y' || a == 'y')
	{
		int val = 1, prod = 1, temp, divisor[5] = {1, 1, 1, 1, 1}, lcm1[5], lcm = 1, x, y;
		cout << "Enter 5 numbers: ";
		for (x = 0; x < 5; x++)
		{
			cin >> lcm1[x];
		}
		for (x = 0; x < 4; x++)
		{
		if (lcm1[x] > lcm1[x + 1])
		{
			temp = lcm1[x + 1];
			lcm1[x + 1] = lcm1[x];
			lcm1[x] = temp;
		}
		}
		for (y = 0; y < 5; y++)
		{
			divisor[y] *= lcm1[y];
			if (lcm1[y] != 1)
			{
				for (x = 0; x < 5; x++)
				{
					if (lcm1[x] % divisor[y] == 0)
					{
						val = lcm1[x] / divisor[y];
						lcm1[x] = val;
					}
					else
					{
						prod *= lcm1[x];
					}
				}
			}
		}
		for (x = 0; x < 5; x++)
		{
			lcm *= divisor[x];
		}
		cout << "Their Least Common Multiple is " << lcm << ".\n\n";
		cout << "Would you like to continue? (Y/N) ";
		cin >> a;
	}
	getch();
	return 0;
}