/****************************************************************************
**				   SAKARYA ÜNİVERSİTESİ
**		 BİLGİSAYAR VE BİLİŞİM BİLİMLERİ FAKÜLTESİ
**			 BİLGİSAYAR MÜHENDİSLİĞİ BÖLÜMÜ
**		    NESNEYE DAYALI PROGRAMLAMA DERSİ
**			    2018-2019 BAHAR DÖNEMİ
**	
**				ÖDEV NUMARASI..........:2.ÖDEV
**				ÖĞRENCİ ADI............:DUHAN UZUN
**				ÖĞRENCİ NUMARASI.......:B181210051
**              DERSİN ALINDIĞI GRUP...:1A
****************************************************************************/

using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace odev2
{
    public class Program
    {
        public class futbolcu
        {
            public string AdSoyad;
            public int FormaNo;
            public double Hiz;
            public double Dayaniklik;
            public double Pas;
            public double Sut;
            public double Yetenek;
            public double Kararlik;
            public double DogalForm;
            public double Sans;

            public futbolcu(string AdSoyad, int FormaNo)
            {
                Random Ratgele = new Random();
                this.AdSoyad = AdSoyad;
                this.FormaNo = FormaNo;
                Hiz = Ratgele.Next(50, 100);
                Dayaniklik = Ratgele.Next(50, 100);
                Pas = Ratgele.Next(50, 100);
                Sut = Ratgele.Next(50, 100);
                Yetenek = Ratgele.Next(50, 100);
                Kararlik = Ratgele.Next(50, 100);
                DogalForm = Ratgele.Next(50, 100);
                Sans = Ratgele.Next(50, 100);
            }

            public virtual Double PasVer()
            {
                double PasSkor;
                PasSkor = Pas * 0.3 + Yetenek * 0.3 + Dayaniklik * 0.1 + DogalForm * 0.1 + Sans * 0.2;
                return PasSkor;
            }

            public virtual Double GolVurusu()
            {
                Double GolSkor;
                GolSkor = Yetenek * 0.3 + Sut * 0.2 + Kararlik * 0.1 + DogalForm * 0.1 + Hiz * 0.1 + Sans * 0.2;
                return GolSkor;
            }

        }

        class defans : futbolcu
        {
            public double PozisyonAlma;
            public double Kafa;
            public double Sicrama;

            //base class dan adsoyad ve formano alınıyor ve ona göre atamalar yapılıyor.
            public defans(string AdSoyad, int FormaNo) : base(AdSoyad, FormaNo)
            {
                Random Ratgele = new Random();
                Hiz = Ratgele.Next(50, 90);
                Dayaniklik = Ratgele.Next(50, 90);
                Pas = Ratgele.Next(50, 90);
                Sut = Ratgele.Next(50, 90);
                Yetenek = Ratgele.Next(50, 90);
                Kararlik = Ratgele.Next(50, 90);
                DogalForm = Ratgele.Next(50, 90);
                Sans = Ratgele.Next(50, 90);

                PozisyonAlma = Ratgele.Next(50, 90);
                Kafa = Ratgele.Next(50, 90);
                Sicrama = Ratgele.Next(50, 90);     
            }

            public override Double PasVer()
            {
                double PasSkor;
                PasSkor = Pas * 0.3 + Yetenek * 0.3 + Dayaniklik * 0.1 + DogalForm * 0.1 + Sans * 0.2 + PozisyonAlma * 0.1;
                return PasSkor;
            }

            public override Double GolVurusu()
            {
                Double GolSkor;
                GolSkor = Yetenek * 0.3 + Sut * 0.2 + Kararlik * 0.1 + DogalForm * 0.1 + Kafa * 0.1 + Sicrama * 0.1 + Sans * 0.1;
                return GolSkor;
            }
        }

        class ortasaha : futbolcu
        {
            public double UzunTop;
            public double IlkDokunus;
            public double Uretkenlik;
            public double TopSurme;
            public double OzelYetenek;

            //base class dan adsoyad ve formano alınıyor ve ona göre atamalar yapılıyor.
            public ortasaha(string AdSoyad, int FormaNo) : base(AdSoyad, FormaNo)
            {
                Random Ratgele = new Random();
                Hiz = Ratgele.Next(60, 100);
                Dayaniklik = Ratgele.Next(60, 100);
                Pas = Ratgele.Next(60, 100);
                Sut = Ratgele.Next(60, 100);
                Yetenek = Ratgele.Next(60, 100);
                Kararlik = Ratgele.Next(60, 100);
                DogalForm = Ratgele.Next(60, 100);
                Sans = Ratgele.Next(60, 100);

                UzunTop = Ratgele.Next(60, 100);
                IlkDokunus = Ratgele.Next(60, 100);
                Uretkenlik = Ratgele.Next(60, 100);
                TopSurme = Ratgele.Next(60, 100);
                OzelYetenek = Ratgele.Next(60, 100);
            }

            public override Double PasVer()
            {
                double PasSkor;
                PasSkor = Pas * 0.3 + Yetenek * 0.2 + Dayaniklik * 0.1 + DogalForm * 0.1 +
                Sans * 0.1 + OzelYetenek * 0.2;
                return PasSkor;
            }

            public override Double GolVurusu()
            {
                Double GolSkor;
                GolSkor = Yetenek * 0.3 + Sut * 0.2 + Kararlik * 0.1 + DogalForm * 0.1 + Sans * 0.1 + OzelYetenek * 0.2 + IlkDokunus * 0.1;
                return GolSkor;
            }
        }

        class forvet : futbolcu
        {
            public double Bitiricilik;
            public double IlkDokunus;
            public double Kafa;
            public double OzelYetenek;
            public double SogukKanlilik;

            //base class dan adsoyad ve formano alınıyor ve ona göre atamalar yapılıyor.
            public forvet(string AdSoyad, int FormaNo) : base(AdSoyad, FormaNo)
            {
                Random Ratgele = new Random();
                Hiz = Ratgele.Next(70, 100);
                Dayaniklik = Ratgele.Next(70, 100);
                Pas = Ratgele.Next(70, 100);
                Sut = Ratgele.Next(70, 100);
                Yetenek = Ratgele.Next(70, 100);
                Kararlik = Ratgele.Next(70, 100);
                DogalForm = Ratgele.Next(70, 100);
                Sans = Ratgele.Next(70, 100);

                Bitiricilik = Ratgele.Next(70, 100);
                IlkDokunus = Ratgele.Next(70, 100);
                Kafa = Ratgele.Next(70, 100);
                OzelYetenek = Ratgele.Next(70, 100);
                SogukKanlilik = Ratgele.Next(70, 100);
            }

            public override Double PasVer()
            {
                double PasSkor;
                PasSkor = Pas * 0.3 + Yetenek * 0.2 + Dayaniklik * 0.1 + DogalForm * 0.1 + OzelYetenek * 0.2
                + Sans * 0.1;
                return PasSkor;
            }

            public override Double GolVurusu()
            {
                Double GolSkor;
                GolSkor = Yetenek * 0.2 + Sut * 0.1 + Kararlik * 0.1 + DogalForm * 0.1 + Kafa * 0.1 + OzelYetenek * 0.2 + Sans * 0.1 +
                IlkDokunus * 0.1 + Bitiricilik * 0.1 + SogukKanlilik * 0.1;
                return GolSkor;
            }
        }


        static void Main(string[] args)
        {
            //futbolcu sınıfından takım adlı liste oluşturuluyor.
            List<futbolcu> takim = new List<futbolcu>();

            //takim listesine elemanlar atanıyor.
            takim.Add(new futbolcu("Cláudio Taffarel", 1));
            takim.Add(new defans("Trent Alexander-Arnold", 66));
            takim.Add(new defans("Matthijs de Ligt", 4));
            takim.Add(new defans("Virgil Van Dijk", 44));
            takim.Add(new defans("Marcelo", 12));
            takim.Add(new ortasaha("Eden Hazard", 60));
            takim.Add(new ortasaha("Kevin De Bruyne", 7));
            takim.Add(new ortasaha("Frenkie De Jong", 21));
            takim.Add(new ortasaha("Sadio Mane", 11));
            takim.Add(new forvet("Lionel Messi", 10));
            takim.Add(new forvet("Cristiano Ronaldo", 99));

            Console.WriteLine("        //DÜNYA KARMASI//" + "\n");
            
            int rastgelesayi;
            Random RasgeleU = new Random();
            int pasAlan = 100;
   
            //4 futbolcu oynayasıya kadar dönen for döngüsü
            for(int i =1; i<8;i++)
            {
                //eğer pası veren futbolcu pas alanla aynıysa rastgele başka bir sayi seçiliyor
                do
                {
                  rastgelesayi = RasgeleU.Next(1, 11);

                } while (pasAlan == takim[rastgelesayi].FormaNo);
                    
                    //eğer pas gücü 60 dan küçükse pas veremez
                    if (takim[rastgelesayi].PasVer() <= 60)
                    {
                        Console.WriteLine(takim[rastgelesayi].FormaNo+" numarali "+ takim[rastgelesayi].AdSoyad+" Pası Veremedi" + "\n");
                        break;
                    }

                     //pas gücü 60 dan büyükse pas verir
                    else if (takim[rastgelesayi].PasVer() > 60)
                    {
                        //eğer 3 başarılı pas yapıldıysa gol vuruşu yapılır
                        if (i > 6)
                        {
                            Console.WriteLine(takim[rastgelesayi].FormaNo + " numarali " + takim[rastgelesayi].AdSoyad + " Pası Aldı" + "\n");

                           //eğer gol vuruşu 70 den küçükse gol olmaz
                            if (takim[rastgelesayi].GolVurusu() <= 70)
                            {
                                Console.WriteLine("GOL KAÇTI : " + takim[rastgelesayi].FormaNo + " numarali " + takim[rastgelesayi].AdSoyad + "\n");
                                break;
                            }

                            //eğer 70 den büyükse gol olur
                            else if (takim[rastgelesayi].GolVurusu() > 70)
                            {
                                Console.WriteLine("GOOOL : " + takim[rastgelesayi].FormaNo + " numarali " + takim[rastgelesayi].AdSoyad + "\n");
                                break;
                            }
                        }

                        //eğer 3 pas olmadıysa paslaşma devam eder.
                        else
                        {
                           //ilk topu alan yazilir
                           if (i == 1)
                           {
                            Console.WriteLine(takim[rastgelesayi].FormaNo + " numarali " + takim[rastgelesayi].AdSoyad + " Topu Aldi" + "\n");
                           }

                        Console.WriteLine(takim[rastgelesayi].FormaNo + " numarali " + takim[rastgelesayi].AdSoyad + " Pası Verdi" + "\n");
                        }
                    }
                pasAlan = takim[rastgelesayi].FormaNo;
                i++;
            }            
        }
    }
}