#ifndef COUNTER_H
#define COUNTER_H

class Counter {
    private:
        unsigned long count;
    protected:
    public:
        Counter();
        unsigned long tick();
};

#endif
