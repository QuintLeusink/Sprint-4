using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Opdracht_6._10
{


namespace CalculatorApplication
    {
        class NumberManipulator
        {
            public void swap(ref int x, ref int y)
            {
                int temp;

                temp = x;
                x = y;
                y = temp; 
            }
            static void Main(string[] args)
            {
                NumberManipulator n = new NumberManipulator();

                
                int a = 0;
                int b = 0;
                Console.WriteLine("Geef Getal 1 in: ");
                a = Convert.ToInt32(Console.ReadLine());
                Console.WriteLine("Geef Getal 2 in: ");
                b = Convert.ToInt32(Console.ReadLine());
                Console.ReadLine();

                Console.WriteLine("Het eerste getal was : {0}", a);
                Console.WriteLine("Het tweede getal was : {0}", b);

                
                n.swap(ref a, ref b);

                Console.WriteLine("Het eerste getal is nu : {0}", a);
                Console.WriteLine("Het tweede getal is nu : {0}", b);

                Console.ReadLine();
            }
        }
    }
}
