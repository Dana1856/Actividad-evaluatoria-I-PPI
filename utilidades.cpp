#include <iostream>
#include <cstdlib> //Biblioteca de C, en este caso para que el sistema reconozca "sistem()"
#include "utilidades.hpp"
using namespace std;

void pauseConsole()
{
    cin.ignore();
    cin.get();
}

void clearConsole()
{
    #ifdef __unix__
        system("clear");
    #elif __APPLE__
        system("clear");
    #elif defined(_WIN32) || defined (WIN64)
        system("cls");
    
    #endif //defined
}