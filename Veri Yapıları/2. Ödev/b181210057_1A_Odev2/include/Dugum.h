/**
* @file b181210057_1A_Odev2
* @description Bir text dosyas�na at�lan verilerin okunmas� ve tekrar eden verilerin ekrana yazd�r�lmayarak elde edilen kazanc�n hesaplanmas�.
* @course 1. ��retim A Grubu
* @assignment 2. �dev
* @date 27.11.2019
* @author Kadir �elik kadir.celik6@ogr.sakarya.edu.tr, Duhan Uzun duhan.uzun@ogr.sakarya.edu.tr
*/
#ifndef DUGUM_HPP
#define DUGUM_HPP
#include <string>
#include <iostream>
using namespace std;

class Dugum {
public:
	string veri;
	int sayi = 0;
	Dugum *sonraki;
	Dugum *onceki;
	Dugum(string veri = NULL, Dugum *sonraki = NULL, Dugum *onceki = NULL);
};
#endif