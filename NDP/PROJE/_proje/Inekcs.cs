/****************************************************************************
**					      SAKARYA ÜNİVERSİTESİ
**				BİLGİSAYAR VE BİLİŞİM BİLİMLERİ FAKÜLTESİ
**				    BİLGİSAYAR MÜHENDİSLİĞİ BÖLÜMÜ
**				   NESNEYE DAYALI PROGRAMLAMA DERSİ
**					    2018-2019 BAHAR DÖNEMİ
**	
**				ÖDEV NUMARASI..........:PROJE ÖDEVİ
**				ÖĞRENCİ ADI............:DUHAN UZUN
**				ÖĞRENCİ NUMARASI.......:B181210051
**              DERSİN ALINDIĞI GRUP...:1A
****************************************************************************/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _proje
{
    class Inekcs:Hayvan
    {
        private int Kg;

        public int KgDondur
        {
            get
            {
                return Kg;
            }

            set
            {
                Kg = value;
            }
        }

        public double KazancHesapla(double BirimFiyatDondur, int AdetKgDondur)
        {
            double Kazanc = BirimFiyatDondur * AdetKgDondur;
            return Kazanc;
        }
    }
}
