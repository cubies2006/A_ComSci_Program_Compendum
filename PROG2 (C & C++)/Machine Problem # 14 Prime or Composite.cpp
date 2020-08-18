#include <iostream>
#include <conio.h>
using namespace std;
main() 
{
    int num;
    bool prime = true;
    cout << "Input a number: ";
    cin >> num;
    for (int divisor = num - 1; divisor > 1; divisor--)
    if (num % divisor == 0)
    	prime = false;
    	if(prime)
    		cout<< num <<" is a PRIME number."<<endl;
    	if(!prime)
    		cout<< num <<" is a COMPOSITE number."<<endl;
    	getch();
		return 0;
}
/*This program determines whether a number is a PRIME or a COMPOSITE number.*/
