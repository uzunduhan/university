/**
* @file b181210057_1A_Odev3
* @description �ki text dosyas�ndan al�nan verilerin ikili arama a�a�lar�yla kar��la�t�r�lmas�.
* @course 1. ��retim A Grubu
* @assignment 3. �dev
* @date 15.12.2019
* @author Kadir �elik kadir.celik6@ogr.sakarya.edu.tr, Duhan Uzun duhan.uzun@ogr.sakarya.edu.tr
*/

#ifndef DUGUM_HPP
#define DUGUM_HPP

#include <iostream>

using namespace std;

class Dugum {
public:
	Dugum *sag;
	Dugum *sol;
	int sayi;
	Dugum(const int &sayi, Dugum *sag = NULL, Dugum *sol = NULL);
};
#endif