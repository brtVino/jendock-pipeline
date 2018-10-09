//This application displays Hello World to the screen

#include "hello_world.h"
#include <iostream>

int main(int, char**) {
  std::cout << hello_world::hello() << std::endl;
  return 1;
}
