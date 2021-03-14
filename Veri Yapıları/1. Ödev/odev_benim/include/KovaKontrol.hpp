#ifndef KOVAKONTROL_H
#define KOVAKONTROL_H
#include "Kova.hpp"
#include "Top.hpp"


class KovaKontrol{
public:	
	void kovaDegistir(int a, int b, Kova *kovaDizi[]);
	void kovalariTersDondur(int a, Kova *kovaDizi[]);
	void topDegistir(int a, int b, Kova *kovaDizi[]);
	void toplariTerstenYerlestir(int a, Kova* kovaDizi[]);
};	
#endif