#include <iostream>
#include <conio.h>
using namespace std;

int factorial(int n)
{
	int ValueToReturn = 1;
	for (int i = 2; i <= n; i++)
		ValueToReturn *= i;
	return ValueToReturn;
}

int combination(int n, int m)
{
	return factorial(n) / (factorial(m) * factorial(n-m));
}

int main()
{
	int n, m;
	cout << "Enter two positive integers (the second should be less than or equal to";
	cout << "\nthe first)\n";
	cin >> n >> m;
	if (n > 0 && m > 0 && m <= n)
		cout << n << " choose " << m << " is " << 
			combination(n, m) << endl;
	else
		cout << "Invalid input\n" ;
	getch();
	return 0;
}
