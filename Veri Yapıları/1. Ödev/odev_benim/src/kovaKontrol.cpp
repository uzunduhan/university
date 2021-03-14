#include "KovaKontrol.hpp"
#include "Kova.hpp"
#include "Top.hpp"
#include <cstdlib>
#include "pch.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <Windows.h>
#include <ctime>
#include <locale.h>

using namespace std;

void KovaKontrol::kovaDegistir(int a, int b, Kova *kovaDizi[])
{
	Kova *temp;
	temp = kovaDizi[a - 1];
	kovaDizi[a - 1] = kovaDizi[b - 1];
	kovaDizi[b - 1] = temp;
}

void KovaKontrol::topDegistir(int a, int b, Kova *kovaDizi[])
{
			Top* tempTop = kovaDizi[a - 1]->topGetir();
			kovaDizi[a - 1]->topuBelirle(kovaDizi[b - 1]->topGetir());
			kovaDizi[b - 1]->topuBelirle(tempTop);
}

void KovaKontrol::kovalariTersDondur(int a, Kova *kovaDizi[])
{
	Kova *temp;
	for (int i = 0; i < a; i++)
	{
		temp = kovaDizi[a - 1];
		kovaDizi[a - 1] = kovaDizi[i];
		kovaDizi[i] = temp;
		a--;
	}
}

void KovaKontrol::toplariTerstenYerlestir(int kovaDiziBoyutu, Kova* kovaDizi[])
{
	Top* temp;
	for (int i = 0; i < kovaDiziBoyutu; i++)
	{
		temp = kovaDizi[kovaDiziBoyutu - 1]->topGetir();
		kovaDizi[kovaDiziBoyutu - 1]->topuBelirle(kovaDizi[i]->topGetir());
		kovaDizi[i]->topuBelirle(temp);
		kovaDiziBoyutu--;
	}
}