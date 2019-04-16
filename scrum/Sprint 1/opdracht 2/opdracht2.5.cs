using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Opdracht2._4
{
    class Program
    {
        static void Main(string[] args)
        {
            //Variablen
            Double dblPrijsExBtw, dblPrijsInBtw, standaardPrijs;
            const Double cdblBtwTarief = 21;
            string naam;

            Console.WriteLine("Voer uw achternaam in:");
            naam = (Console.ReadLine());

            Console.WriteLine("Hoeveel is de prijs exclusief BTW? ");
            standaardPrijs = Convert.ToDouble(Console.ReadLine());

            dblPrijsExBtw = (standaardPrijs / 100) * 110 + 1000;

            dblPrijsInBtw = dblPrijsExBtw * (1 + cdblBtwTarief / 100);

            Console.WriteLine("De auto van Meneer " + naam + " is inclusief BTW en extra opties: " + dblPrijsInBtw.ToString() + " Euro waard");
            Console.ReadLine();
        }
    }
}