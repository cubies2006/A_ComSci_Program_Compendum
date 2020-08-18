#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	float loop, e, x, y, z, factorial, ctr, deno, nume;
	char a = 'y';
	while (a == 'y' || a == 'Y')
	{
		e = 1;
		cout << "Enter a value for x: ";
		cin >> x;
		if ((x > 12) || (x < -6))
		{
			cout << "INVALID INPUT!!!";
		}
		else
		{
			for (loop = 1; loop <= 30; loop++)
			{
				ctr = 1;
				y = loop;
				nume = 1;
				factorial = 1;
				deno = 1;
				while (ctr <= loop)
				{
					nume *= x;
					ctr++;
				}
				while (y >= 1)
				{
					factorial *= y;
					y--;
				}
				ctr = 1;
				deno = factorial;
				e += (nume / deno);	
			}
			cout << "\nThe value of e raise to " << x << " is " << e << "!!!";
		}
		cout << "\n\nWould you like to continue? (Y or N) ";
		cin >> a;
	}
	getch();
	return 0;
}
