#include <iostream>
#include <conio.h>
#define PI 3.14
using namespace std;
main()
{
	float s, l, w, h, d, r, PS, AS, VS, PL, AL, VL, PC, AC;
	cout << "Enter a value for a side: ";
	cin >> s;
	cout << "Enter a value for length: ";
	cin >> l;
	cout << "Enter a value for width: ";
	cin >> w;
	cout << "Enter a value for height: ";
	cin >> h;
	cout << "Enter a diameter: ";
	cin >> d;
	PS = 4 * s;
	cout << "The perimeter of a square is " << PS << "\n";
	AS = s * s;
	cout << "The area of a square is " << AS << "\n";
	VS = s * s * s;
	cout << "The volume of a square is " << VS << "\n";
	PL = 2 * l + 2 * w;
	cout << "The perimeter of a rectangle is " << PL << "\n";
	AL = l * w;
	cout << "The area of a rectangle is " << AL << "\n";
	VL = l * w * h;
	cout << "The volume of a rectangle is " << VL << "\n";
	r = d / 2;
	PC = 2 * PI * r;
	cout << "The circumference of a circle is " << PC << "\n";
	AC = PI * r * r;
	cout << "The area of a circle is " << AC << "\n";
	getch();
	return 0;
}

