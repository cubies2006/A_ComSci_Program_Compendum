#include <iostream>
#include <conio.h>
using namespace std;

void won(void);

main()
{
	int a = 0, b = 0, c = 1, n = 0, d, e = 1, f = 0;
	char x[100];
	cout << "Enter a string: ";
	cin.getline(x, 49);
	b = strlen(x);
	if (b % 2 == 0)
	{
		a = b / 2;
		d = a;
		while (n < d)
		{
			if (x[a] == x[a - c])
			{
				a++;
				c += 2;
			}
			else
			{
				goto loop;
			}
			n++;
		}
		cout << "Palindrome!!!";
		goto bin;
	}
	else if (b % 2 == 1)
	{
		a = b / 2;
		d = a;
		if (a == 1)
		{
			if (x[a + 1] == x[a - 1])
			{
				cout << "Palindrome!!!";
				goto bin;
			}
			else
			{
				cout << "Not a Palindrome!!!";
				goto bin;
			}
		}
		else
		{
			while (d > 0)
			{
				if (x[a - e] == x[a + c])
				{
					a--;
					c += 2;
				}
				else
				{
					goto loop;
				}
				d--;
			}
			cout << "Palindrome!!!";
			goto bin;
		}
	}
	loop:
		won();
	bin:
		getch();
		return 0;
}

void won(void)
{
	cout << "Not a Palindrome!!!";
}