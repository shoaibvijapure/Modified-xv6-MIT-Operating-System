#include "types.h"
#include "stat.h"
#include "user.h"
 
int main(void) {
  printf(1, "read count: %d\n\n", getrcount());
  exit();
}
