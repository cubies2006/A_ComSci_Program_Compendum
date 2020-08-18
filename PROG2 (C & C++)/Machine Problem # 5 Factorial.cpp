#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	long x, num, loop = 1, factorial = 1;
	cout << "Enter a number: ";
	cin >> x;
	if (x > 0)
	{
		for (num = x; num >= loop; num--)
		{
			factorial *= num;
		}
		cout << "The factorial of " << x << " is " << factorial;
	}
	else
	{
		cout << "INVALID NUMBER!!!";
	}
	getch();
	return 0;
}