#include <iostream>
#include <conio.h>
using namespace std;

int vultra(int z)
{
	int a, b, c, d, a1[5], a2[5], a3[5], carry[6], base[6], total[6];
	cout << "Enter 5 values for the 1st array: ";
	for (a = 0; a < 5; a++)
		cin >> a1[a];
	cout << "Enter 5 values for the 2nd array: ";
	for (b = 0; b < 5; b++)
		cin >> a2[b];
	cout << "Enter 5 values for the 3rd array: ";
	for (c = 0; c < 5; c++)
		cin >> a3[c];
	cout << "\n\t\t\t\t";
	for (a = 0; a < 5; a++)
	{
		if ((a1[a] < 10) && (a1[a] >= 0))
			cout << a1[a] << " ";
		else
		{
			cout << "INVALID INPUT!!!";
			break;
		}
	}
	cout << "\n\t\t\t\t";
	for (b = 0; b < 5; b++)
	{
		if ((a2[b] < 10) && (a2[b] >= 0))
			cout << a2[b] << " ";
		else
		{
			cout << "INVALID INPUT!!!";
			break;
		}
	}
	cout << "\n\t\t\t\t";
	for (c = 0; c < 5; c++)
	{
		if ((a3[c] < 10) && (a3[c] >= 0))
			cout << a3[c] << " ";
		else
		{
			cout << "INVALID INPUT!!!";
			break;
		}
	}
	carry[4] = 0;
	for (d = 5; d > 0; d--)
	{
		total[d] = carry[d - 1] + a1[d - 1] + a2[d - 1] + a3[d - 1];
		base[d] = total[d] % 10;
		carry[d - 2] = total[d] / 10;
	}
	cout << "\n\t\t\t   _________________\n\t\t\t      ";
	if (total[d + 1] <= 10)
		base[d] = carry[d - 1];
	else
		base[d] = 0;
	for (d = 0; d < 5; d++)
		cout << base[d] << " ";
	if (total[d] < 10)
		cout << total[d];
	else if (total[d] >= 10)
	{
		base[d] = total[d] % 10;
		cout << base[d];
	}
	return z;
}

main()
{
	int z;
	vultra(z);
	getch();
	return 0;
}
