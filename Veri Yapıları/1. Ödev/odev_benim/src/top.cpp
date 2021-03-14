#include "pch.h"
#include "Top.hpp"
#include <iostream>
#include <string>
#include <cstdlib>
#include <Windows.h>
#include <ctime>
#include <locale.h>


using namespace std;

Top::Top()
{
	toplar = 'A' + rand() % 26;
}

void Top::topOlustur()
{
	cout << toplar;
}