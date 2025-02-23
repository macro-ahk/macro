// MyDLL.h - Header file
#pragma once

#define DLL_EXPORT __declspec(dllexport)

extern "C" DLL_EXPORT int AddNumbers(int a, int b);

// MyDLL.cpp - DLL Implementation
#include "MyDLL.h"

extern "C" DLL_EXPORT int AddNumbers(int a, int b) {
    return a + b;
}

// main.cpp - Test Program
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

    int a = 5, b = 7;
    int result = addNumbers(a, b);
    std::cout << a << " + " << b << " = " << result << std::endl;

    FreeLibrary(hDLL);
    return 0;
}
