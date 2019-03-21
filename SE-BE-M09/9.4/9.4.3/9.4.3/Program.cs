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

            //geeft percentage weer
            Console.Write("");

            //for-loop om onderstaantde while opnieuw af te spelen
            for (; ; )
            {


                int i = 0;

                //while-loop om na 20 keer een '*' te laten hebben gezien te stoppen
                while (i < lengte)

                {
                    Console.Write(karakter);

                    i++;
                    System.Threading.Thread.Sleep(500);

                }

                break;
            }
            Console.ReadKey();
        }
    }
}