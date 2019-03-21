using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Timers;

namespace _9._4._1
{
    class Program
    {

        static void Main(string[] args)
        {
            //geeft een string
            Console.Write("Vooruitgang: ");


            //for-loop om onderstaantde while opnieuw af te spelen
            for (; ; )
            {


                int i = 1;

                //while-loop om na 20 keer een '*' te laten hebben gezien te stoppen
                while (i < 21)

                {
                    Console.Write("*");

                    i++;
                    System.Threading.Thread.Sleep(500);

                }

                break;
            }
            Console.ReadKey();
        }


    }
}
