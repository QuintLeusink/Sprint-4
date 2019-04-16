using System;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _9._4._2
{
    class Program
    {
        static void Main(string[] args)
        {


            //vraagt om een karakter of int en convert readline naar een string
            Console.Write("Welk karakter wilt u gebruiken voor uw laadbalk?: ");
            var karakter = Convert.ToString(Console.ReadLine());

            //vraagt om een getal en convert readline naar een integer
            Console.Write("hoeveel karakters lang moet uw laadbalk worden?: ");
            int lengte = Convert.ToInt16(Console.ReadLine());


            //geeft een string
            Console.Write("Vooruitgang: ");




            //for-loop om onderstaantde while opnieuw af te spelen
            for (; ; )
            {



                int i = 0;

                //while-loop om na een x keer het door de gebruiker gekozen karakter laten zien te stoppen
                while (i < lengte)

                {


                    Console.Write( / lengte * 100);


                    Console.Write(karakter);
                    string laadbalk = Convert.ToString(Console.ReadLine());


                    i++;
                    System.Threading.Thread.Sleep(500);

                }

                break;
            }
            Console.ReadKey();
        }
    }
}