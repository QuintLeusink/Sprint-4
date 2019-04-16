
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
                int getal1 = rnd.Next(0, int.MaxValue);
                int getal2 = rnd.Next(0, int.MaxValue);
                int product = Math.Abs(getal1 * getal2);
                Teller(getal1, getal2, product);
            }
            Console.ReadKey();
        }
        private static void Teller(int getal1, int getal2, int product)
        {
            Console.WriteLine("{0} * {1} = {2}", getal1, getal2, product);
        }
    }
}