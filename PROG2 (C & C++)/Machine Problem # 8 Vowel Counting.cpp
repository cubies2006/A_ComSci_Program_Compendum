#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	int a = 0, e = 0, i = 0, o = 0, u = 0, sum = 0, count = 0, x = 255;
	char ch[255];
	cout << "Enter a string:\n";
	cin.getline(ch, x, '\n');
	for (count = 0; count <= x; count++)
	{
		if (ch[count] == 'a' || ch[count] == 'A')
			a++;
		else if (ch[count] == 'e' || ch[count] == 'E')
			e++;
		else if (ch[count] == 'i' || ch[count] == 'I')
			i++;
		else if (ch[count] == 'o' || ch[count] == 'O')
			o++;
		else if (ch[count] == 'u' || ch[count] == 'U')
			u++;
	}
	sum = a + e + i + o + u;
	cout << "\nThe frequency of vowel 'a' is " << a;
	cout << "\nThe frequency of vowel 'e' is " << e;
	cout << "\nThe frequency of vowel 'i' is " << i;
	cout << "\nThe frequency of vowel 'o' is " << o;
	cout << "\nThe frequency of vowel 'u' is " << u;
	cout << "\nThe total number of vowels in the string is " << sum;
	getch();
	return 0;
}

