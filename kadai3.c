#include <stdio.h>

int main()
{
  printf("九九の表\n");
  int i, j;
  for (i = 1; i < 10; i++) {
    for (j = 1; j < 10; j++)
      printf("%3d ", i * j );
    printf("\n");
  }
  return 0;
}
