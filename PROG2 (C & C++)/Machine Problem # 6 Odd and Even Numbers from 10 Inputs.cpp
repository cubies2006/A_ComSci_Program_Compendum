#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	int num[10], ctr1, ctr2, ctr3, ctr4, odd = 0, even = 0;
	cout << "Enter 10 numbers:\n";
	for (ctr1 = 0; ctr1 <= 9; ctr1++)
	{
		cin >> num[ctr1];
	}
	for (ctr2 = 0; ctr2 <= 9; ctr2++)
	{
		if (num[ctr2] % 2 == 1)
			odd++;
		else
			even++;
	}
	cout << "There are " << odd << " odd numbers: (";
	for (ctr3 = 0; ctr3 <= 9; ctr3++)
	{
		if (num[ctr3] % 2 == 1)
			cout << num[ctr3] << ", ";
	}
	cout << ")\n";
	cout << "There are " << even << " even numbers: (";
	for (ctr4 = 0; ctr4 <= 9; ctr4++)
	{
		if (num[ctr4] % 2 == 0)
			cout << num[ctr4] << ", ";
	}
	cout << ")\n";
	getch();
	return 0;
}