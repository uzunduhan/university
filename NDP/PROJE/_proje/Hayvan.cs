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
    abstract class Hayvan
    {
        private int AzalanCan;
        private double BirimFiyat;
        private int Can=100;
        
        public int AzalanCanDondur
        {
            get
            {
                return AzalanCan;
            }

            set
            {
                AzalanCan = value;
            }
        }

        public double BirimFiyatDondur
        {
            get
            {
                return BirimFiyat;
            }

            set
            {
                BirimFiyat = value;
            }
        }

        public int CanDondur
        {
            get
            {
                return Can;
            }

            set
            {
                Can = value;
            }
        }
    }

    interface KazancHesapla
    {
        double KazancHesapla(double BirimFiyatDondur, int AdetKgDondur);
    }
}