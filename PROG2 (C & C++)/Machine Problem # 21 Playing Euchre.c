#include <stdio.h>
main()
{
	FILE *fp;
	int u, v, w, x, y, z, win, loss, totalgames, totalwin, totalloss;
	if ((fp = fopen("Euchre.txt", "r")) == NULL)
	{
		printf("Unable to open file.\n");
		exit(0);
	}
	while (!feof(fp))
	{
		fscanf(fp,"%d%d%d%d%d%d", &u, &v, &w, &x, &y, &z);
		if (u != 0 || v != 0 || w != 0 || x != 0 || y != 0 || z != 0)
		{
		totalgames = (u + v) * 2;
		win = u + w + y;
		loss = v + x + z;
		totalwin = totalgames - win;
		totalloss = totalgames - loss;
		printf("Anna's won-loss record is %d - %d.\n", totalwin, totalloss);
		}
		close(fp);
	}
	getch();
}