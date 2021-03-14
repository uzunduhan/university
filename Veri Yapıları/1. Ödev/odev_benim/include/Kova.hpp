#ifndef KOVA_H
#define KOVA_H
#include "Top.hpp"

#include "pch.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <Windows.h>
#include <ctime>
#include <locale.h>

using namespace std;

class Kova {
private:
	int kovaRengi = 0;
	Top* top = NULL;
public:
	HANDLE renkVer = GetStdHandle(STD_OUTPUT_HANDLE);
	Kova();
	void kovaUret();
	Top* topGetir();
	void topuBelirle(Top* top);

};
#endif