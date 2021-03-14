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
using System.ComponentModel;
using System.Data;
using System.Drawing;
using System.Linq;
using System.Media;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace _proje
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
        }

        //her bir hayvanın üretim şekli farklı olduğu için her biri için ayrı değişken tutuyoruz. 
        int topsaniye= 0;
        int tavuksaniye = 0;
        int kecisaniye = 0;
        int ordeksaniye = 0;
        int ineksaniye = 0;
        
        double topkazanc;

        Tavuk tavuk = new Tavuk();
        Keci keci = new Keci();
        Ordek ordek = new Ordek();
        Inekcs inek = new Inekcs();

        private void Form1_Load(object sender, EventArgs e)
        {
            pictureBox1.Image = Image.FromFile("C:Hayvan Ciftligi Dosyalar\\tavuk.png");
            pictureBox2.Image = Image.FromFile("C:Hayvan Ciftligi Dosyalar\\ordek.png");
            pictureBox3.Image = Image.FromFile("C:Hayvan Ciftligi Dosyalar\\inek.png");
            pictureBox4.Image = Image.FromFile("C:Hayvan Ciftligi Dosyalar\\keci.png");

            timer1.Interval = 1000;
            timer1.Enabled = true;
            timer1.Start();

            timer2.Interval = 3000;
            timer2.Enabled = true;
            timer2.Start();

            timer3.Interval = 5000;
            timer3.Enabled = true;
            timer3.Start();

            timer4.Interval = 7000;
            timer4.Enabled = true;
            timer4.Start();

            timer5.Interval = 8000;
            timer5.Enabled = true;
            timer5.Start();

            //can barlarını hayvanların canlarına eşitliyoruz.
             progressBar1.Value = tavuk.CanDondur;
             progressBar2.Value = ordek.CanDondur;
             progressBar3.Value = inek.CanDondur;
             progressBar4.Value = keci.CanDondur;
        }

        private void timer1_Tick(object sender, EventArgs e)
        {
            topsaniye++;
            label16.Text = Convert.ToString(topsaniye);

            // 1 saniyede hayvanların canının ne kadar azalacağını belirliyoruz.
            tavuk.AzalanCanDondur = 2;
            ordek.AzalanCanDondur = 3;
            keci.AzalanCanDondur = 6;
            inek.AzalanCanDondur = 8;

            //eğer hayvanın canı 0 dan büyükse işlemleri yap.
            if (progressBar1.Value > tavuk.AzalanCanDondur)
            {
                this.progressBar1.Value = progressBar1.Value - tavuk.AzalanCanDondur;

                //can bar sıfırlanırsa
                if(progressBar1.Value<=tavuk.AzalanCanDondur)
                {
                    label22.Text = "ÖLDÜ";
                    progressBar1.Value = 0;
                    progressBar1.Enabled = false;
                    SoundPlayer tavuksesi = new SoundPlayer();
                    tavuksesi.SoundLocation = "Hayvan Ciftligi Dosyalar\\tavuk.wav";
                    tavuksesi.Play();
                    timer2.Stop();
                }
            }

            //eğer hayvanın canı 0 dan büyükse işlemleri yap.
            if (progressBar2.Value > ordek.AzalanCanDondur)
            {
                this.progressBar2.Value = progressBar2.Value - ordek.AzalanCanDondur;

                //can bar sıfırlanırsa
                if (progressBar2.Value<=ordek.AzalanCanDondur)
                {
                    label23.Text = "ÖLDÜ";
                    progressBar2.Value = 0;
                    progressBar2.Enabled = false;
                    SoundPlayer ordeksesi = new SoundPlayer();

                    ordeksesi.SoundLocation = "Hayvan Ciftligi Dosyalar\\ordek.wav";
                    ordeksesi.Play();
                    timer3.Stop();
                }
            }

            //eğer hayvanın canı 0 dan büyükse işlemleri yap.
            if (progressBar3.Value > inek.AzalanCanDondur)
            {
                this.progressBar3.Value = progressBar3.Value - inek.AzalanCanDondur;

                //can bar sıfırlanırsa
                if (progressBar3.Value <= inek.AzalanCanDondur)
                {
                    label24.Text = "ÖLDÜ";
                    progressBar3.Value = 0;
                    progressBar3.Enabled = false;
                    SoundPlayer ineksesi = new SoundPlayer();

                    ineksesi.SoundLocation = "Hayvan Ciftligi Dosyalar\\inek.wav";
                    ineksesi.Play();
                    timer5.Stop();
                }
            }

            //eğer hayvanın canı 0 dan büyükse işlemleri yap.
            if (progressBar4.Value > keci.AzalanCanDondur)
            {
                this.progressBar4.Value = progressBar4.Value - keci.AzalanCanDondur;

                //can bar sıfırlanırsa
                if (progressBar4.Value<=keci.AzalanCanDondur)
                {
                    label25.Text = "ÖLDÜ";
                    progressBar4.Value = 0;
                    progressBar4.Enabled = false;
                    SoundPlayer kecisesi = new SoundPlayer();

                    kecisesi.SoundLocation = "Hayvan Ciftligi Dosyalar\\keci.wav";
                    kecisesi.Play();
                    timer4.Stop();
                }
            }

        }

        private void timer2_Tick(object sender, EventArgs e)
        {
          tavuksaniye++;            
          label6.Text = Convert.ToString(tavuksaniye);
        }

        private void timer3_Tick(object sender, EventArgs e)
        {
            ordeksaniye++;
            label7.Text = Convert.ToString(ordeksaniye);
        }

        private void timer4_Tick(object sender, EventArgs e)
        {
            kecisaniye++;
            label12.Text = Convert.ToString(kecisaniye);
        }

        private void timer5_Tick(object sender, EventArgs e)
        {
            ineksaniye++;
            label10.Text = Convert.ToString(ineksaniye);
        }

        private void button5_Click(object sender, EventArgs e)
        {
            if (label22.Text == "CANLI")
            {
                progressBar1.Value = 100;
            }
        }

        private void button1_Click(object sender, EventArgs e)
        {
                int tavukyumurta;
                tavuk.BirimFiyatDondur = 1;

                tavukyumurta = Convert.ToInt32(label6.Text);
                
                //kazanç hesaplma
                this.topkazanc = topkazanc + (tavuk.KazancHesapla(tavuk.BirimFiyatDondur, tavukyumurta));
                label18.Text = Convert.ToString(topkazanc);
                
                //eğer hayvanın can barı 0 sa ve ürünü sat butonuna basıldıysa kalan ürünü sıfırla.
                if (progressBar1.Value == 0)
                {
                    label6.Text = "0";
                }

                tavuksaniye = 0;
                tavukyumurta = 0;
                label6.Text = Convert.ToString(tavukyumurta);
        }

        private void button6_Click(object sender, EventArgs e)
        {
            if (label23.Text == "CANLI")
            {
                progressBar2.Value = 100;
            }
        }

        private void button8_Click(object sender, EventArgs e)
        {
            if (label25.Text == "CANLI")
            {
                progressBar4.Value = 100;
            }
        }

        private void button7_Click(object sender, EventArgs e)
        {
            if (label24.Text == "CANLI")
            {
                progressBar3.Value = 100;
            }
        }

        private void button2_Click(object sender, EventArgs e)
        {
            int ordekyumurta;
            ordek.BirimFiyatDondur = 3;

            ordekyumurta = Convert.ToInt32(label7.Text);

            //kazanç hesaplama
            this.topkazanc = topkazanc + (ordek.KazancHesapla(ordek.BirimFiyatDondur, ordekyumurta));
            label18.Text = Convert.ToString(topkazanc);

            //eğer hayvanın can barı 0 sa ve ürünü sat butonuna basıldıysa kalan ürünü sıfırla.
            if (progressBar2.Value == 0)
            {
                label7.Text = "0";
            }

            ordeksaniye = 0;
            ordekyumurta = 0;
            label7.Text = Convert.ToString(ordekyumurta);
        }

        private void button3_Click(object sender, EventArgs e)
        {
            int ineksutkg;
            inek.KgDondur = 5;
         
            ineksutkg = Convert.ToInt32(label10.Text);

            //kazanç hesaplama
            this.topkazanc = topkazanc + (inek.KazancHesapla(inek.KgDondur, ineksutkg));
            label18.Text = Convert.ToString(topkazanc);

            //eğer hayvanın can barı 0 sa ve ürünü sat butonuna basıldıysa kalan ürünü sıfırla.
            if (progressBar3.Value == 0)
            {
                label10.Text = "0";
            }

            ineksaniye = 0;
            ineksutkg = 0;
            label10.Text = Convert.ToString(ineksutkg);
        }

        private void button4_Click(object sender, EventArgs e)
        {
            int kecisutkg;
            keci.KgDondur = 8;

            kecisutkg = Convert.ToInt32(label12.Text);

            //kazanç hesaplma
            this.topkazanc = topkazanc + (keci.KazancHesapla(keci.KgDondur, kecisutkg));
            label18.Text = Convert.ToString(topkazanc);

            //eğer hayvanın can barı 0 sa ve ürünü sat butonuna basıldıysa kalan ürünü sıfırla.
            if (progressBar4.Value == 0)
            {
                label12.Text = "0";
            }

            kecisaniye = 0;
            kecisutkg = 0;
            label12.Text = Convert.ToString(kecisutkg);
        }
    }
}