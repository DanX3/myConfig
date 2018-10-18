#include <counter.h>

Counter::Counter() {
    count = 0L;
}

unsigned long Counter::tick() {
    return count++;
}
