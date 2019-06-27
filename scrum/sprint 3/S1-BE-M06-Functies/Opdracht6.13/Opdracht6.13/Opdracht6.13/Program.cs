using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Media;
using static System.Net.Mime.MediaTypeNames;

namespace Opdracht6._13
{
    class Program
    {
        static void Main(string[] args)
        {
            int keuze;
            Console.WriteLine("Kies uw geluid:" + "\r\n" +
            "1 = Eend" + "\r\n" +
            "2 = Beer" + "\r\n" +
            "3 = Hond" + "\r\n" +
            "4 = Kat" + "\r\n" +
            "5 = Leeuw" + "\r\n" +
            "6 = Olifant" + "\r\n" +
            "7 = Mol" + "\r\n" +
            "8 = Paard" + "\r\n" +
            "9 = Schaap" + "\r\n" +
            "10 = Varken");
            keuze = Convert.ToInt16(Console.ReadLine());

            switch (keuze)
            {
                case 1:
                    System.Media.SoundPlayer eend = new System.Media.SoundPlayer(@"c:\WPTest\eend.wav");
                    eend.Play();
                    break;
                case 2:
                    System.Media.SoundPlayer beer = new System.Media.SoundPlayer(@"c:\WPTest\beer.wav");
                    beer.Play();
                    break;
                case 3:
                    System.Media.SoundPlayer hond = new System.Media.SoundPlayer(@"c:\WPTest\hond.wav");
                    hond.Play();
                    break;
                case 4:
                    System.Media.SoundPlayer kat = new System.Media.SoundPlayer(@"c:\WPTest\kat.wav");
                    kat.Play();
                    break;
                case 5:
                    System.Media.SoundPlayer leeuw = new System.Media.SoundPlayer(@"c:\WPTest\leeuw.wav");
                    leeuw.Play();
                    break;
                case 6:
                    System.Media.SoundPlayer olifant = new System.Media.SoundPlayer(@"c:\WPTest\olifant.wav");
                    olifant.Play();
                    break;
                case 7:
                    System.Media.SoundPlayer mol = new System.Media.SoundPlayer(@"c:\WPTest\mol.wav");
                    mol.Play();
                    break;
                case 8:
                    System.Media.SoundPlayer paard = new System.Media.SoundPlayer(@"c:\WPTest\paard.wav");
                    paard.Play();
                    break;
                case 9:
                    System.Media.SoundPlayer schaap = new System.Media.SoundPlayer(@"c:\WPTest\schaap.wav");
                    schaap.Play();
                    break;
                case 10:
                    System.Media.SoundPlayer varken = new System.Media.SoundPlayer(@"c:\WPTest\varken.wav");
                    varken.Play();
                    break;
            }
            Console.ReadLine();

        }
    }
}