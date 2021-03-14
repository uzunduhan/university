/**
* @file b181210057_1A_Odev3
* @description �ki text dosyas�ndan al�nan verilerin ikili arama a�a�lar�yla kar��la�t�r�lmas�.
* @course 1. ��retim A Grubu
* @assignment 3. �dev
* @date 15.12.2019
* @author Kadir �elik kadir.celik6@ogr.sakarya.edu.tr, Duhan Uzun duhan.uzun@ogr.sakarya.edu.tr
*/

#ifndef IKILI_ARAMA_AGACI_HPP
#define IKILI_ARAMA_AGACI_HPP

#include <iostream>
#include "Dugum.h"
#include <string>

using namespace std;

class IkiliAramaAgaci {
private:
	Dugum *kok;
	int soy_sayisi;
	void elemanEkleme(Dugum *&altDugum, const int &veri);
	int soySayisiHesapla(Dugum *altDugum);
	int maxSayisi(Dugum *altDugum);
	bool elemanSilme(Dugum *&altDugum, const int &veri);
	bool dugumSil(Dugum *&altDugum);
	void yazdir(Dugum *alt_Dugum);
public:
	IkiliAramaAgaci();
	void elemanEkle(const int &veri);
	int maxSayi();
	int kokSayi();
	int soySayisi();
	void elemanSil(const int &veri);
	int soySayisiSifirlama();
	void ekranaYazdir();
	~IkiliAramaAgaci();
};
#endif