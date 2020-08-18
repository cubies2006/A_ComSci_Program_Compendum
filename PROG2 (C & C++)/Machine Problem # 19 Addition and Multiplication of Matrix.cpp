#include <iostream>
#include <conio.h>
using namespace std;
main()
{
	int row1, row2, col1, col2, prod1, prod2, matrix1[9][9], matrix2[9][9], sumatrix[9][9], pmatrix[9][9], prodmatrix[9][9], i, j, k, x, y, count = 0;
	char ch[1];
	cout << "Enter the size of row 1: ";
	cin >> row1;
	if (row1 <= 0 || row1 > 9)
	{
		cout << "You've inputted an invalid size for row 1!!!";
	}
	else if (row1 <= 9 && row1 > 0)
	{
	cout << "Enter the size of column 1: ";
	cin >> col1;
	if (col1 <= 0 || col1 > 9)
	{
		cout << "You've inputted an invalid size for column 1!!!";
	}
	else if (col1 <= 9 && col1 > 0)
	{
	cout << "Enter the size of row 2: ";
	cin >> row2;
	if (row2 <= 0 || row2 > 9)
	{
		cout << "You've inputted an invalid size for row 2!!!";
	}
	else if (row2 <= 9 && row2 > 0)
	{
	cout << "Enter the size of column 2: ";
	cin >> col2;
	if (col2 <= 0 || col2 > 9)
	{
		cout << "You've inputted an invalid size for column 2!!!";
	}
	else if (col2 <= 9 && col2 > 0)
	{
	prod1 = row1 * col1;
	prod2 = row2 * col2;
	cout << "\nEnter " << prod1 << " numbers:\n";
	for (x = 0; x < row1; x++)
	{
		for (y = 0; y < col1; y++)
		{
			cin >> matrix1[x][y];
		}
	}
	cout << "\nEnter " << prod2 << " numbers:\n";
	for (x = 0; x < row2; x++)
	{
		for (y = 0; y < col2; y++)
		{
			cin >> matrix2[x][y];
		}
	}
	cout << "\n";
	cout << "Matrix 1\n";
	for (x = 0; x < row1; x++)
	{
		for (y = 0; y < col1; y++)
		{
			cout << matrix1[x][y] << " ";
		}
		cout << "\n";
	}
	cout << "\n";
	cout << "Matrix 2\n";
	for (x = 0; x < row2; x++)
	{
		for (y = 0; y < col2; y++)
		{
			cout << matrix2[x][y] << " ";
		}
		cout << "\n";
	}
	cout << "\n";
	cout << "Press 'A' if you want to Add or 'M' to Multiply the 2 Matrix: ";
	cin >> ch[count];
	if (ch[count]=='a' || ch[count]=='A')
	{
		if (prod1 != prod2)
		{
			cout << "\nThe 2 Matrix can't perform an Addition Operation!!!";
		}
		else
		{
		for (x = 0; x < row1; x++)
		{
			for (y = 0; y < col1; y++)
			{
				sumatrix[x][y] = matrix1[x][y] + matrix2[x][y];
			}
		}
		cout << "\n";
		for (x = 0; x < row1; x++)
		{
			for (y = 0; y < col1; y++)
			{
				cout << sumatrix[x][y] << "  ";
			}
			cout << "\n";
		}
		cout << "\n";
		for (x = 0; x < row1; x++)
		{
			for (y = 0; y < col1; y++)
			{
				cout << matrix1[x][y] << " + " << matrix2[x][y] << " = " << sumatrix[x][y] << "\n";
			}
		}
		}
	}
	else if (ch[count]=='m' || ch[count]=='M')
	{
		if (col1 != row2)
		{
			cout << "\nThe 2 Matrix cannot perform a Multiplication Operation!!!";
		}
		else if (col1 == row2)
		{
			if (row1 == col2)
			{
				for (i = 0; i < row1; i++)
				{
					for (k = 0; k <= col2; k++)
					{
						prodmatrix[i][k] = 0;
					}
				}
				for (i = 0; i <= row1; i++)
				{
					for (k = 0; k < col2; k++)
					{
						for (j = 0; j < col1; j++)
						{
							prodmatrix[i][k] += matrix1[i][j] * matrix2[j][k];
						}
					}
				}
				for (i = 0; i < row1; i++)
				{
					for (k = 0; k < col2; k++)
					{
						cout << "\t" << prodmatrix[i][k] << " ";
					}
					cout << "\n\n";
				}
				for (i = 0; i < row1; i++)
				{
					for (k = 0; k < col2; k++)
					{
						for (j = 0; j < col1; j++)
						{
							pmatrix[i][k] = matrix1[i][j] * matrix2[j][k];
							cout << matrix1[i][j] << " X " << matrix2[j][k] << " = " << pmatrix[i][k] << "\n";
						}
						cout << "___________\n\t" << prodmatrix[i][k] << "\n\n";
					}
				}
			}
			else if (row1 > col2) 
			{
			for (i = 0; i < row1; i++)
			{
				for (j = 0; j <= col2; j++)
				{
					prodmatrix[i][j] = 0;
				}
			}
			for (i = 0; i <= row1; i++)
			{
				for (j = 0; j < col2; j++)
				{
					for (k = 0; k < col1; k++)
					{
						prodmatrix[i][j] += matrix1[i][k] * matrix2[k][j];
					}
				}
			}
			for (i = 0; i < row1; i++)
			{
				for (j = 0; j < col2; j++)
				{
						cout << "\t" << prodmatrix[i][j] << " ";
				}
				cout << "\n\n";
			}
			for (i = 0; i < row1; i++)
			{
				for (j = 0; j < col2; j++)
				{
					for (k = 0; k < col1; k++)
					{
						pmatrix[i][j] = matrix1[i][k] * matrix2[k][j];
						cout << matrix1[i][k] << " X " << matrix2[k][j] << " = " << pmatrix[i][j] << "\n";
					}
					cout << "___________\n\t" << prodmatrix[i][j] << "\n\n";
				}
			}
			}
			else if (row1 < col2)
			{
			for (i = 0; i < row1; i++)
			{
				for (j = 0; j < col2; j++)
				{
					prodmatrix[i][j] = 0;
				}
			}
			for (i = 0; i <= row1; i++)
            {
				for (j = 0; j < col2; j++)
				{
					for (k = 0; k < col1; k++)
					{
						prodmatrix[i][j] += matrix1[i][k] * matrix2[k][j];
					}
				}
			}
            for (i = 0; i < row1; i++)
            {
				for (j = 0; j < col2; j++)
				{
						cout << "\t" << prodmatrix[i][j] << " ";
				}
				cout << "\n\n";
			}
			for (i = 0; i < row1; i++)
            {
				for (j = 0; j < col2; j++)
				{
					for (k = 0; k < col1; k++)
					{
						pmatrix[i][j] = matrix1[i][k] * matrix2[k][j];
						cout << matrix1[i][k] << " X " << matrix2[k][j] << " = " << pmatrix[i][j] << "\n";
					}
					cout << "___________\n\t" << prodmatrix[i][j] << "\n\n";
				}
			}
			}
		}
	}
	else
	{
		cout << "You didn't input the correct operation!!!";
	}
	}
	}
	}
	}
	getch();
	return 0;
}
