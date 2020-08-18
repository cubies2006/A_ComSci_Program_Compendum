#include <iostream>
#include <fstream>
#include <string>
#include <conio.h>

using namespace std;

void main()
{
	ifstream inFile;
	string buff;
	inFile.open("starwars.txt");
	if (!inFile)
	{
		cerr << "Unable to open file.";
		exit(1);
	}
	while (inFile >> buff)
		cout << buff << "\n";
	inFile.close();
	getch();
}