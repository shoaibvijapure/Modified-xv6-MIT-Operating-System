#include "types.h"
#include "stat.h"
#include "user.h"
 
int main(void) {
  printf(1, "close count: %d\n\n", getclcount());
  exit();
}
