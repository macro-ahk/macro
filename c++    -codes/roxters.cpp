#include <iostream>
#include <windows.h>

typedef int (*AddFunc)(int, int);

int main() {
    HINSTANCE hDLL = LoadLibrary("MyDLL.dll");
    if (!hDLL) {
        std::cerr << "Failed to load DLL!" << std::endl;
        return 1;
    }

    AddFunc addNumbers = (AddFunc)GetProcAddress(hDLL, "AddNumbers");
    if (!addNumbers) {
        std::cerr << "Could not find function!" << std::endl;
        FreeLibrary(hDLL);
        return 1;
    }

    int result = addNumbers(5, 7);
    std::cout << "5 + 7 = " << result << std::endl;

    FreeLibrary(hDLL);
    return 0;
}
