using System;

namespace _7._11
{
    class Program
    {
        static void Main(string[] args)
        {
            int intteller;
            int[] arraygetal1 = new int[10];
            int[] arraygetal2 = new int[10];
            int[] arraycom = new int[10];

            Console.WriteLine("druk op enter voor array reeks 1");
            Console.ReadLine();

            for (intteller = 0; intteller < 10; intteller++)
            {
                Random rnd = new Random();
                int month1 = rnd.Next(10, 100);
                Console.WriteLine(month1);
                arraygetal1[intteller] = month1;
            }

            Console.WriteLine("druk op enter voor array reeks 2");
            Console.ReadLine();

            for (intteller = 0; intteller < 10; intteller++)
            {
                Random rnd = new Random();
                int month = rnd.Next(10, 100);
                Console.WriteLine(month);
                arraygetal2[intteller] = month;
            }
            Console.ReadLine();

            Console.WriteLine("De som = ");
            for (intteller = 0; intteller < 10; intteller++)
            {
                arraycom[intteller] = arraygetal1[intteller] + arraygetal2[intteller];
                Console.WriteLine(arraygetal1[intteller].ToString() + " + " + arraygetal2[intteller].ToString() + " = " + arraycom[intteller].ToString());
            }
            Console.ReadLine();
        }
    }
}