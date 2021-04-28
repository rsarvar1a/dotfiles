#include <stdio.h>
#include <stdlib.h>

int main (void)
{
  int a = 0;
  for (int i = 0; i < 5; i++)
  {
    int b = rand();
    if (b > a)
    {
      a = b;
      printf("%i\n", b);
    }
  }
  printf("%i\n", a);
  return 0;
}

