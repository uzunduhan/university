/**
* @file b181210057_1A_Odev3
* @description �ki text dosyas�ndan al�nan verilerin ikili arama a�a�lar�yla kar��la�t�r�lmas�.
* @course 1. ��retim A Grubu
* @assignment 3. �dev
* @date 15.12.2019
* @author Kadir �elik kadir.celik6@ogr.sakarya.edu.tr, Duhan Uzun duhan.uzun@ogr.sakarya.edu.tr
*/

#include <iostream>
#include "Dugum.h"

using namespace std;

Dugum::Dugum(const int &sayi, Dugum *sag, Dugum *sol)
{
	this->sayi = sayi;
	this->sag = sag;
	this->sol = sol;
}