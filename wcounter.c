#include "types.h"
#include "stat.h"
#include "user.h"
 
int main(void) {
  printf(1, "write count: %d\n\n", getwcount());
  exit();
}
