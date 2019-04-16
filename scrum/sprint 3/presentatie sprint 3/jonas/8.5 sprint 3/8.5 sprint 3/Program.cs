
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
namespace ConsoleApp1
{
    class Program
    {
        static void Main(string[] args)
        {
            Random rnd = new Random();

            for (int i = 1; i < 100; i++)
            {
                long getal1 = rnd.Next(0, int.MaxValue);
                long getal2 = rnd.Next(0, int.MaxValue);


                long product = getal1 * getal2;

                Teller(getal1, getal2, product);
            }
            Console.ReadKey();
        }
        private static void Teller(long getal1, long getal2, long product)
        {
            Console.WriteLine("{0} * {1} = {2}", getal1, getal2, product);
        }
    }
}