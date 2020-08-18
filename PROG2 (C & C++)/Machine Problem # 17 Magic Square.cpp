#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	char letter = 'y';
	while (letter == 'y' || letter == 'Y')
	{
		system("cls");
		int a, b, c = 1, x[15][15], y, z;
		cout << "Enter a number (ODD only from 1 to 15): ";
		cin >> a;
		cout << "\n";
		if ((a > 0) && (a <= 15))
		{
			if (a % 2 == 1)
			{
				for (y = 0; y < a; y++)
				{
					for (z = 0; z < a; z++)
					{
						x[y][z] = 0;
					}
				}
				z = (a - 1) / 2;
				y = 0;
				x[y][z] = 1;
				for (b = 0; b < a * a; b++)
				{
					y--;
					z--;	
					c++;
					if ((y < 0) && (z < 0))
					{
						x[y][z] = c;
						y += 2;
						z++;
					}
					if (y < 0)
					{
						y = a - 1;
					}
					if (z < 0)
					{
						z = a - 1;
					}
					if (x[y][z] != 0)
					{
						z++;
						y += 2;
					}
					x[y][z] = c;
				}
				for (y = 0; y < a; y++)
				{
					for (z = 0; z < a; z++)
					{
						if (x[y][z] < 10)
							cout << x[y][z] << "    ";
						else if (x[y][z] < 100)
							cout << x[y][z] << "   ";
						else
							cout << x[y][z] << "  ";
					}
					cout << "\n";
				}
				cout << "\n";
			}
			else
			{
				cout << "INVALID INPUT!!!\n";
			}
		}
		else
		{
			cout << "INVALID SIZE!!!\n";
		}
		cout << "Continue? (Y or N)\n";
		cin >> letter;
	}
	getch();
	return 0;
}
