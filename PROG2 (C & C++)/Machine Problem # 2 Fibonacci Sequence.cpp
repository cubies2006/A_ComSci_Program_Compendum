#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	int num[10], ctr, x = 13;
	num[9] = 34;
	cout << "The reversed order of the Fibonacci Sequence are:\n";
	cout << num[9] << " ";
	for (ctr = 8; ctr >= 0; ctr--)
	{
		num[ctr] = num[ctr + 1] - x;
		cout << num[ctr] << " ";
		x = num[ctr] - x;
	}
	getch();
	return 0;
}

