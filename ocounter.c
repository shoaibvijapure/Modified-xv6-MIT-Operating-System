#include "types.h"
#include "stat.h"
#include "user.h"
 
int main(void) {
  printf(1, "open count: %d\n\n", getocount());
  exit();
}
