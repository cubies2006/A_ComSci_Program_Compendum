#include <iostream>
#include <conio.h>
using namespace std;

void algo1()
{
	int x;
	cout << "\nEnter any whole number: ";
	cin >> x;
	if (x > 0)
		cout << "\n" << x << " is a positive number.";
	else if (x < 0)
		cout << "\n" << x << " is a negative number.";
	else
		cout << "\n" << x << " is zero.";
}

void algo2()
{
	int x, sum = 0;
	for (x = 1; x <= 20; x++)
		sum += x;
	cout << "\nThe sum of the first 20 positive integers is " << sum << ".";
}

void algo4()
{
	int x, factor = 0, ans = 0, ctr = 1;
	cout << "\nEnter any positive number: ";
	cin >> x;
	while (ctr < x)
	{
		ans = x % ctr;
		if (ans == 0)
			factor++;
		ctr++;
	}
	if (factor > 1)
		cout << "\nThe number is Composite.";
	else
		cout << "\nThe number is Prime.";
}

void algo5()
{
	int x;
	cout << "\nEnter a number: ";
	cin >> x;
	if (x <= 0)
		cout << "\nINVALID INPUT!!!";
}

void algo7()
{
	float base, height, area;
	cout << "\nEnter a value for base: ";
	cin >> base;
	cout << "Enter a value for height: ";
	cin >> height;
	area = 0.5 * base * height;
	cout << "\nThe area of the triangle is " << area << ".";
}

void algo10()
{
	float gross, hoursworked, rateperday;
	cout << "\nEnter the total number of hours worked: ";
	cin >> hoursworked;
	cout << "Enter the rate per day of an employee: ";
	cin >> rateperday;
	gross = rateperday * (hoursworked / 8);
	cout << "\nThe gross salary of an employee is " << gross << ".";
}

void algo12()
{
	int q1s, q2s, q3s, q1t, q2t, q3t, ave1, ave2, ave3, totalave;
	cout << "\nEnter the raw score and number of items in Quiz 1: ";
	cin >> q1s >> q1t;
	cout << "Enter the raw score and number of items in Quiz 2: ";
	cin >> q2s >> q2t;
	cout << "Enter the raw score and number of items in Quiz 3: ";
	cin >> q3s >> q3t;
	if ((q1s > q1t) && (q2s > q2t) && (q3s > q3t))
		cout << "\nThe raw score should be less than or equal to the number of items in Quizzes 1, 2 and 3.";
	else if ((q1s > q1t) && (q2s > q2t))
		cout << "\nThe raw score should be less than or equal to the number of items in Quizzes 1 and 2.";
	else if ((q1s > q1t) && (q3s > q3t))
		cout << "\nThe raw score should be less than or equal to the number of items in Quizzes 1 and 3.";
	else if ((q2s > q2t) && (q3s > q3t))
		cout << "\nThe raw score should be less than or equal to the number of items in Quizzes 2 and 3.";
	else if (q1s > q1t)
		cout << "\nThe raw score should be less than or equal to the number of items in Quiz 1.";
	else if (q2s > q2t)
		cout << "\nThe raw score should be less than or equal to the number of items in Quiz 2.";
	else if (q3s > q3t)
		cout << "\nThe raw score should be less than or equal to the number of items in Quiz 3.";
	else
	{
		ave1 = q1s * 50 / q1t + 50;
		ave2 = q2s * 50 / q2t + 50;
		ave3 = q3s * 50 / q3t + 50;
		totalave = (ave1 + ave2 + ave3) / 3;
		if (totalave < 75)
			cout << "\nYour grade is " << totalave << "! You've failed!";
		else
			cout << "\nYour grade is " << totalave << "! You've passed!";
	}
}

void algo15()
{
	int num;
	cout << "\nEnter an integer: ";
	cin >> num;
	if (num == 0)
		cout << num << " is neither odd nor even.";
	else if (((num / 2) * 2) == num)
		cout << "\n" << num << " is Even.";
	else
		cout << "\n" << num << " is Odd.";
}

void algo19()
{
	int first = 1, second = 2, fibo, num, ctr;
	fibo = first + second;
	cout << "\nEnter the last number for the Fibonacci Sequence: ";
	cin >> num;
	if (num <= 0)
		cout << "\nINVALID INPUT!!!";
	else
	{
		for (ctr = 4; ctr <= num; ctr++)
		{
			first = second;
			second = fibo;
			fibo = first + second;
		}
		cout << "\nThe Fibonacci Sequence from 1 to " << num << " is " << fibo << ".";
	}
}

void algo20()
{
	int factorial = 1, x, ctr;
	cout << "\nEnter a number: ";
	cin >> x;
	if (x > 0)
	{
		for (ctr = x; ctr >= 1; ctr--)
			factorial *= ctr;
		cout << "\nThe factorial of " << x << " is " << factorial << ".";
	}
	else
		cout << "\nINVALID INPUT!!!";
}

void algo21()
{
	int x, ctr, sum = 0, prod = 1;
	cout << "\nEnter any number: ";
	cin >> x;
	if (x > 0)
	{
		for (ctr = 1; ctr < x; ctr++)
		{
			if (x % ctr == 0)
			{
				sum += ctr;
				prod *= ctr;
			}
		}
		if (sum == prod)
			cout << "\n" << x << " is a Perfect Number!!!";
		else
			cout << "\n" << x << " is NOT a Perfect Number!!!";
	}
	else
		cout << "\nINVALID INPUT!!!";
}

void algo22()
{
	int a, b, c, d;
	cout << "\nEnter the 1st number: ";
	cin >> a;
	cout << "Enter the 2nd number: ";
	cin >> b;
	cout << "Enter the 3rd number: ";
	cin >> c;
	cout << "Enter the 4th number: ";
	cin >> d;
	if ((a == b) && (b == c) && (c == d))
		cout << "\nAll inputs are equal.";
	else if (((a == b) && (a == c)) || ((a == b) && (a == d)) || ((a == c) && (a == d)) || ((b == c) && (c == d)))
		cout << "\n3 inputs are equal.";
	else if ((a == b) || (a == c) || (a == d) || (b == c) || (b == d) || (c == d))
		cout << "\n2 inputs are equal.";
	else if ((a > b) && (a > c) && (a > d))
		cout << "\n" << a << " is the largest number.";
	else if ((b > a) && (b > c) && (b > d))
		cout << "\n" << b << " is the largest number.";
	else if ((c > a) && (c > b) && (c > d))
		cout << "\n" << c << " is the largest number.";
	else if ((d > a) && (d > b) && (d > c))
		cout << "\n" << d << " is the largest number.";
}

void algo23()
{
	int x, ctr, value = 0, size, list[50], desired_num;
	cout << "\nEnter array size: (maximum of 50) ";
	cin >> size;
	if (size > 50)
		cout << "\nYour array size is not within 50!!!";
	else if (size <= 0)
		cout << "\nINVALID INDEX!!!";	
	else
	{
		cout << "Enter " << size << " numbers: \n";
		for (x = 0; x < size; x++)
			cin >> list[x];
		cout << "Enter the element to look for: ";
		cin >> desired_num;
		for (ctr = 0; ctr < size; ctr++)
		{
			if (desired_num == list[ctr])
			{
				value = 1;
				ctr = size;
			}
		}
		if (value == 1)
			cout << "\nThe element is Found!";
		else
			cout << "\nThe element is Not Found!";
	}
}

void algo25()
{
	int number[50], size, desired_num, x, low = 0, mid, high;
	cout << "\nEnter array size: (maximum of 50) ";
	cin >> size;
	if (size > 50)
		cout << "\nYour array size is not within 50!!!";
	else if (size <= 0)
		cout << "\nINVALID INDEX!!!";
	else
	{
		cout << "Enter " << size << " values for each array: (All elements must be in increasing order) \n";
		for (x = 0; x < size; x++)
			cin >> number[x];
		for (x = 1; x < size; x++)
		{
			if (number[x - 1] > number[x])
			{
				cout << "The elements are not in increasing order!!!";
				goto loop;
			}
		}
		cout << "Enter the value to look for: ";
		cin >> desired_num;
		high = size - 1;
		mid = (low + high) / 2;
		while ((desired_num != number[mid]) && (low <= high))
		{
			mid = (low + high) / 2;
			if (desired_num < number[mid])
				high = mid - 1;
			else if (desired_num > number[mid])
				low = mid + 1;
		}
		if (low <= high)
			cout << "\nThe element is Found!";
		else
			cout << "\nThe element is Not Found!";
	}
	loop:
		cout << " ";
}

void algo26()
{
	int size, first = 0, last, ctr;
	char phrase[250];
	bool p = false;	
	cout << "\nEnter size of an array: (maximum of 250) ";
	cin >> size;
	if (size > 250)
		cout << "\nYour array size is not within 250!!!";
	else if (size <= 0)
		cout << "\nINVALID INDEX!!!";
	else
	{
		cout << "Enter a word: ";
		for (ctr = 0; ctr < size; ctr++)
			cin >> phrase[ctr];
		last = size - 1;
		if((first <= last) || (p == false))
		{
			if((phrase[first] == phrase[last]))
				p = true;
			first++;
			last--;
		}
		if (p == true)
			cout << "It is a Palindrome!";
		else 
			cout << "It is NOT a Palindrome!";
	}
}

void algo27()
{
	int i, j, size, val = 0, SetA[50], SetB[50];
	cout << "Enter size for 2 arrays: (maximum of 50) ";
	cin >> size;
	if (size > 50)
		cout << "\nYour array size is not within 50!!!";
	else if (size <= 0)
		cout << "\nINVALID INDEX!!!";
	else
	{
		cout << "Enter " << size << " elements for the 1st set of array:\n";
		for (i = 0; i < size; i++)
			cin >> SetA[i];
		cout << "Enter " << size << " elements for the 2nd set of array:\n";
		for (j = 0; j < size; j++)
			cin >> SetB[j];
		for (i = 0; i < size; i++)
		{
			for (j = 0; j < size; j++)
			{
				if (SetA[i] == SetB[j])
				{
					val = 1;
					i = size;
					j = size;
				}
			}
		}
		if (val == 0)
			cout << "The 2 sets are Disjoint!";
		else
			cout << "The 2 sets are Joint!";
	}
}


void algo28()
{
	int size, x, n, first, last, val = 0;
	char letter[50];
	cout << "\nEnter size of an array: (maximum of 50) ";
	cin >> size;
	if (size > 50)
		cout << "\nYour array size is not within 50!!!";
	else if (size <= 0)
		cout << "\nINVALID INDEX!!!";
	else
	{
		cout << "Enter " << size << " characters:\n";
		for (x = 0; x < size; x++)
			cin >> letter[x];
		for (first = 0; first < size; first++)
		{
			n = first;
			for (last = size - 1; last > n; last--)
			{
				if (letter[first] == letter[last])
				{
					cout << "The elements are Not Unique!";
					last = n;
					first = size - 1;
					val = 1;
				}
			}
		}
		if (val == 0)
			cout << "The elements are Unique!";
	}
}

void algo30()
{
	int size, a[50], ctr, i, j, x;
	cout << "\nEnter the size of an array: (maximum of 50) ";
	cin >> size;
	if (size > 50)
		cout << "\nYour array size is not within 50!!!";
	else if (size <= 0)
		cout << "\nINVALID INDEX!!!";
	else
	{
		cout << "Input " << size - 1 << " elements for the array:\n";
		for (ctr = 1; ctr < size; ctr++)
			cin >> a[ctr];
		for (i = 1; i < size; i++)
		{
			x = a[i];
			j = i;
			while ((j > 0) && (a[j-1] > x))
			{
				a[j] = a[j-1];
				j = j - 1;
			}
			a[j] = x;
		}
		cout<<"\nFINAL:\n\n";
		cout << "   " << x << "   ";
		for (ctr = 1; ctr < size; ctr++)
			cout << a[ctr] << "   ";
		cout << "\n";
	}
}

void algo31()
{
	int i, j, size, a[50], ctr, temp, increment = 3;
	cout << "\nEnter the size of an array: (maximum of 50) ";
	cin >> size;
	if (size > 50)
		cout << "\nYour array size is not within 50!!!";
	else if (size <= 0)
		cout << "\nINVALID INDEX!!!";
	else
	{
		cout << "Input " << size << " elements for the array:\n";
		for (ctr = 0; ctr < size; ctr++)
			cin >> a[ctr];
		while (increment > 0)
		{
			for (i = 0; i < size; i++)
			{
				j = i;
				temp = a[i];
				while ((j >= increment) && (a[j - increment] > temp))
				{
					a[j] = a[j - increment];
					j = j - increment;
				}
				a[j] = temp;
			}
			if (increment/2 != 0)
				increment = increment / 2;
			else if (increment == 1)
				increment = 0;
			else
				increment = 1;
		}
		cout<<"\n\nFINAL:\n\n";
		for (ctr = 0; ctr < size; ctr++)
			cout << "   " << a[ctr] << "   ";
		cout << "\n";
	}
}

main()
{
	char letter = 'y';
	while (letter == 'y' || letter == 'Y')
	{
		int x;
		system("cls");
		cout << "================================================================================";
		cout << "\t\t    Final Program Compilation in ANADA (CBF)\n\tSubmitted by: Dee, Ronald O.\tDate Submitted: March 17, 2006\n\n";
		cout << "[1] Positive / Negative Number / Zero    [21] Perfect Number\n";
		cout << "[2] Sum of the 1st 20 Positive Integers  [22] Largest Number of 4 Inputs\n";
		cout << "[4] Prime / Composite                    [23] Linear Search\n";
		cout << "[5] Display INVALID if input is <= 0     [25] Binary Search\n";
		cout << "[7] Area of the Triangle                 [26] Palindrome\n";
		cout << "[10] Salary Computation                  [27] Joint / Disjoint\n";
		cout << "[12] Average Grade from 3 Quizzes        [28] Unique or Not\n";
		cout << "[15] Odd / Even                          [30] Insertion Sort\n";
		cout << "[19] Fibonacci Sequence                  [31] Shell Sort\n";
		cout << "[20] Factorial of a Number\n";
		cout << "\n";
		cout << "================================================================================";
		cout << "\nEnter the number of your choice: ";
		cin >> x;
		switch(x)
		{
			case 1:
				algo1();
				break;
			case 2:
				algo2();
				break;
			case 4:
				algo4();
				break;
			case 5:
				algo5();
				break;
			case 7:
				algo7();
				break;
			case 10:
				algo10();
				break;
			case 12:
				algo12();
				break;
			case 15:
				algo15();
				break;
			case 19:
				algo19();
				break;
			case 20:
				algo20();
				break;
			case 21:
				algo21();
				break;
			case 22:
				algo22();
				break;
			case 23:
				algo23();
				break;
			case 25:
				algo25();
				break;
			case 26:
				algo26();
				break;
			case 27:
				algo27();
				break;
			case 28:
				algo28();
				break;
			case 30:
				algo30();
				break;
			case 31:
				algo31();
				break;
			default:
				cout << "\nYou've input a number of choice that is not on the list!!!";
				break;
		}
		cout << "\n\nWould you like to continue? (Y/N) ";
		cin >> letter;
	}
	return 0;
}
