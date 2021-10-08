#include "factorial.hpp"

long fact(long x)
{
  long result = 1;
  int i = 1;
  while (i <= x) {
    result *= i; 
    ++i;
  }
  return result;
}
