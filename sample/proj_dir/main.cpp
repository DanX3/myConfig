#include "counter.h"
#include <iostream>

int main(int argc, char** argv) {
    Counter c;
    for (int i=0; i<10; i++)
        std::cout << c.tick() << '\n';
    return 0;
}
