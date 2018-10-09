#include "hello_world.h"
#include <gtest/gtest.h>

TEST(HelloWorld, Test) {
  using hello_world::hello;
  EXPECT_EQ("Hello World!", hello());
}
