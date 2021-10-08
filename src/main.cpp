#include <iostream>
#include "factorial.hpp"

using namespace std;

int main()
{
  cout << "Hello, World!" << "\n";
  for (int i = 0; i < 10; ++i) {
    cout << "The factorial of " << i << " = " << fact(i) << "\n";
  }
  return 0;
}
