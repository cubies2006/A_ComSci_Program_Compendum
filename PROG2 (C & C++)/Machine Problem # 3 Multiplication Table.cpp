#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	int num, loop, prod;
	cout << "Enter a number: ";
	cin >> num;
	for (loop = 1; loop <= num; loop++)
	{
		prod = num * loop;
		cout << num << " X " << loop << " = " << prod << "\n";
	}
	getch();
	return 0;
}