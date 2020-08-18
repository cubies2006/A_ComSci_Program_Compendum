#include <stdio.h>
main()
{
	int x, y, z, s, r = 0, ctr = 5;
    for (x = 0; x <= 4; x++)
    {
      if (x == 4)
      {
        for (y = 2; y >= 0; y--)
        {
          for (z = 0; z < ctr; z++)
          {
            printf("*");
          }
          printf("\n");
          ctr -= 2;
          s = r;
          while (r > -1)
          {
            printf(" ");
            r--;
          }
          s++;
          r = s;
        }
        printf("\n");
      }
      else
      {
        printf("  *\n");
      }
    }
	r = 2;
	ctr = 1;
    for (x = 4; x >= 0; x--)
    {
      if (x == 4)
      {
        for (y = 0; y <= 2; y++)
        {
		  s = r;
          while (r > 0)
          {
            printf(" ");
            r--;
          }
		  s--;
		  r = s;
          for (z = 0; z < ctr; z++)
          {
            printf("*");
          }
          printf("\n");
          ctr += 2;
        }
      }
      else
      {
        printf("  *\n");
      }
    }
	getch();
}