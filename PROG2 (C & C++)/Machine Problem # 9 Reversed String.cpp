#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	int a, b;
	char x[50];
	cout << "Enter a string: ";
	cin.get(x, 49);
	b = strlen(x) - 1;
	cout << "Reversed string: ";
	for (a = b; a >= 0; a --)
	{
		cout << x[a];
	}
	getch();
	return 0;
}
