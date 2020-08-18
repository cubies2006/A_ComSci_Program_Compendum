#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	float y, z;
	int x;
	cout << "Enter a number: ";
	cin >> y;
	x = y;
	if (y >= 0)
		z = y - x;
	else
		z = x - y;
	cout << "The fractional part of " << y << " is " << z << ".";
	getch();
	return 0;
}