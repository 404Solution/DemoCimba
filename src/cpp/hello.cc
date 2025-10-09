#include <string>
#include <iostream>

std::string greet(const std::string& name) {
    return "Hello, " + name + "!";
}

int main(int argc, char** argv) {
    std::string who = (argc > 1) ? argv[1] : "World";
    std::cout << greet(who) << std::endl;
    return 0;
}
