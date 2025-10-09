#include <cassert>
#include <string>

std::string greet(const std::string& name);

int main() {
    assert(greet("Bazel") == "Hello, Bazel!");
    return 0;
}
