using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp53
{
    class Program
    {
        static void Main(string[] args)
        {
            int[] randomNum = new int[25];
            Random RandomNumber = new Random();


            for (int i = 0; i < 25; i++)
            {
                randomNum[i] = RandomNumber.Next(1, 10000);
            }


            foreach (int j in randomNum)
            {
                Console.WriteLine("{0}", j);
            }

            Console.ReadLine();
            
        }
    }
}