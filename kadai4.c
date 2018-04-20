#include <stdio.h>

int main()
{
  int ok = 0;
  int i;
  for (i = 0; i < 1e5 + 1; i++) {
    if (i > 10) ok = 1;
    if (ok == 1) break;
  }

  printf("%d\n", i);
  return 0;
}
