#include <lucidRift-rivot/util>
#include <iostream>

namespace l = lucidRift::rivot::util;

void doo(const l::String &str) {
    int *i = new int[2];
    i[0] = 1;
    i[1] = 2;
}

int main() {
    l::String x = "Hi";
    x += " there";
    x += "!";
    std::cout << x << std::endl << "-- Length: " << x.length() << std::endl << "-- Value: " << x << std::endl;

    doo(x);

    return 0;
}
