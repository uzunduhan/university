/**
* @file b181210057_1A_Odev2
* @description Bir text dosyas�na at�lan verilerin okunmas� ve tekrar eden verilerin ekrana yazd�r�lmayarak elde edilen kazanc�n hesaplanmas�.
* @course 1. ��retim A Grubu
* @assignment 2. �dev
* @date 27.11.2019
* @author Kadir �elik kadir.celik6@ogr.sakarya.edu.tr, Duhan Uzun duhan.uzun@ogr.sakarya.edu.tr
*/
#include <iostream>
#include "Dugum.h"

using namespace std;
Dugum::Dugum(string veri, Dugum *sonraki, Dugum *onceki)
{
	this->veri = veri;
	this->sonraki = sonraki;
	this->onceki = onceki;
}