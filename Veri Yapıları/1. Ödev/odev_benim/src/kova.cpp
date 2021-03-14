#include "Kova.hpp"
#include <cstdlib>
#include "pch.h"
#include <iostream>
#include <string>
#include <cstdlib>
#include <Windows.h>
#include <ctime>
#include <locale.h>

Kova::Kova()
{
	this->kovaRengi = rand() % 13 + 1;
	//this->top = NULL;
}

void Kova::kovaUret()
{
	SetConsoleTextAttribute(renkVer, kovaRengi);
	string alt = "#";
	string ust = ".";
	string tepe = "|";

	for (int i = 0; i < 8; i++)
	{
		if (i == 3 || i == 5)
		{
			cout << ust;
		}
		else if (i == 4)
		{
			cout << tepe;
		}
		else 
		{
			cout << " ";
		}
	}
	cout << endl;

	for (int i = 0; i < 8; i++)
	{

		if (i == 2 || i == 6)
		{
			cout << ust;
		}
			else 
		{
			cout << " ";
		}
	}
	cout << endl;

	for (int i = 0; i < 8; i++)
	{
		if (i == 1 || i == 7)
		{
			cout << ust;
		}
		else 
		{
			cout << " ";
		}
	}
	cout << endl;

	for (int j = 0; j < 3; j++)
	{
		for (int i = 0; i < 9; i++)
		{
			if (i == 1 || i == 7)
			{
				cout << alt;
			}

			else if (i == 4 && j == 1)
			{
				if (top != NULL)
				{
					top->topOlustur();
				}
				else
				{
					cout << "-";
				}
			}

			else
			{
				cout << " ";
			}
		}
		cout << endl;
	}

	for (int i = 0; i < 8; i++)
	{
		if (i == 0)
		{
			cout << " ";
		}
		else
		{
			cout << alt;
		}
	}
	cout << endl;
}

Top* Kova::topGetir()
{
	return this->top;
}

void Kova::topuBelirle(Top* top)
{
	this->top = top;
}


