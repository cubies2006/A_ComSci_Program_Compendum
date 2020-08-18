#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	int x, count, loop;
	cout << "Enter a number: ";
	cin >> x;
	if (x >= 1)
	{
		count = x;
		for (x = 1; x <= count; x++)
		{
			for (loop = 0; loop < x; loop++)
			{
				cout << x << " ";
			}
			cout << "\n";
		}
	}
	else
	{
		cout << "The number cannot generate a Right Triangle Format!!!";
	}
	getch();
	return 0;
}