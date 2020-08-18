#include <iostream.h>
#include <stdlib.h>
#include <conio.h>

char matrix[3][3];
void cou(void);

int main()
{
	int m, n;
	char ch = 'y';
	while ((ch == 'Y') || (ch == 'y'))
	{
		system("cls");
		for (m = 0; m < 3; m++)
		{
			for (n = 0; n < 3; n++)
			{
				matrix[m][n] = '\0';
			}
		}
		int i, j, sum = 0;
		while (sum < 10)
		{
			if (sum == 0)
				cou();
			cout << "Player 1 is 'X': choose the row and column\n";
			cout << "Row: ";
			cin >> i;
			cout << "Column: ";
			cin >> j;
			for (;i > 3 || i < 1 || j > 3 || j < 1 || ('X' == matrix[i - 1][j - 1] || 'O' == matrix[i - 1][j - 1]);)
			{
				cout << "Please choose another place.\n";
				cout << "Row: ";
				cin >> i;
				cout << "Column: ";
				cin >> j;
			}
			matrix[i - 1][j - 1] = 'X';
			sum++;
			cou();
			if (matrix[0][0] == 'X' && matrix[0][0] == matrix[1][1] && matrix[1][1] == matrix[2][2])
			{
				cout << "Player 1 wins\n";
				break;
			}
			if (matrix[2][0] == 'X' && matrix[2][0] == matrix[1][1] && matrix[1][1] == matrix[0][2])
			{
				cout << "Player 1 wins\n";
				break;
			}
			if (matrix[0][0] == 'X' && matrix[0][0] == matrix[1][0] && matrix[1][0] == matrix[2][0])
			{
				cout << "Player 1 wins\n";
				break;
			}
			if (matrix[0][1] == 'X' && matrix[0][1] == matrix[1][1] && matrix[1][1] == matrix[2][1])
			{
				cout << "Player 1 wins\n";
				break;
			}
			if (matrix[0][2] == 'X' && matrix[0][2] == matrix[1][2] && matrix[1][2] == matrix[2][2])
			{
				cout << "Player 1 wins\n";
				break;
			}
			if (matrix[0][0] == 'X' && matrix[0][0] == matrix[0][1] && matrix[0][1] == matrix[0][2])
			{
				cout << "Player 1 wins\n";
				break;
			}
			if (matrix[1][0] == 'X' && matrix[1][0] == matrix[1][1] && matrix[1][1] == matrix[1][2])
			{
				cout << "Player 1 wins\n";
				break;
			}
			if (matrix[2][0] == 'X' && matrix[2][0] == matrix[2][1] && matrix[2][1] == matrix[2][2])
			{
				cout << "Player 1 wins\n";
				break;
			}

			if (sum == 9)
			{
				cout << "Game Over!!! No one wins!!!\n";
				break;
			}

			cout << "Player 2 is 'O': choose the row and column\n";
			cout << "Row: ";
			cin >> i;
			cout << "Column: ";
			cin >> j;
			for (;i > 3 || i < 1 || j > 3 || j < 1 || ('X' == matrix[i - 1][j - 1] || 'O' == matrix[i - 1][j - 1]);)
			{
				cout << "Please choose another place.\n";
				cout << "Row: ";
				cin >> i;
				cout << "Column: ";
				cin >> j;
			}
			matrix[i - 1][j - 1] = 'O';
			sum++;
			cou();
			if (matrix[0][0] == 'O' && matrix[0][0] == matrix[1][1] && matrix[1][1] == matrix[2][2])
			{
				cout << "Player 2 wins\n";
				break;
			}
			if (matrix[2][0] == 'O' && matrix[2][0] == matrix[1][1] && matrix[1][1] == matrix[0][2])
			{
				cout << "Player 2 wins\n";
				break;
			}
			if (matrix[0][0] == 'O' && matrix[0][0] == matrix[1][0] && matrix[1][0] == matrix[2][0])
			{
				cout << "Player 2 wins\n";
				break;
			}
			if (matrix[0][1] == 'O' && matrix[0][1] == matrix[1][1] && matrix[1][1] == matrix[2][1])
			{
				cout << "Player 2 wins\n";
				break;
			}
			if (matrix[0][2] == 'O' && matrix[0][2] == matrix[1][2] && matrix[1][2] == matrix[2][2])
			{
				cout << "Player 2 wins\n";
				break;
			}
			if (matrix[0][0] == 'O' && matrix[0][0] == matrix[0][1] && matrix[0][1] == matrix[0][2])
			{
				cout << "Player 2 wins\n";
				break;
			}
			if (matrix[1][0] == 'O' && matrix[1][0] == matrix[1][1] && matrix[1][1] == matrix[1][2])
			{
				cout << "Player 2 wins\n";
				break;
			}
			if (matrix[2][0] == 'O' && matrix[2][0] == matrix[2][1] && matrix[2][1] == matrix[2][2])
			{
				cout << "Player 2 wins\n";
				break;
			}

			}
		cout << "\nWould you like to play again? (Y - N)\n";
		cin >> ch;
		}
		system("pause");
		return 0;
		}

		void cou(void)
		{
			cout << "\n\t\t\t           1   2   3\n\n";
			cout << "\t\t\t        1  " << matrix[0][0] << " | " << matrix[0][1] << " | " << matrix[0][2] << "\n";
			cout << "\t\t\t          ---|---|---\n";
			cout << "\t\t\t        2  " << matrix[1][0] << " | " << matrix[1][1] << " | " << matrix[1][2] << "\n";
			cout << "\t\t\t          ---|---|---\n";
			cout << "\t\t\t        3  " << matrix[2][0] << " | " << matrix[2][1] << " | " << matrix[2][2] << "\n";
			cout << "\t\t\t          ---|---|---\n\n";
		}