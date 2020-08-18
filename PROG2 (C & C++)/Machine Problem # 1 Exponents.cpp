#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	int base, expo, loop, num = 1;
	cout << "Enter base: ";
	cin >> base;
	cout << "Enter exponent: ";
	cin >> expo;
	for (loop = 1; loop <= expo; loop++)
	{
		num *= base;
	}
	cout << "Result: " << num;
	getch();
	return 0;
}