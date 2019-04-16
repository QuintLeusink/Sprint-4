using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp13
{
    class Program
    {
        static void Main(string[] args)
        {
            DateTime dob;
            DateTime today = DateTime.Now;

            Console.WriteLine("Voer je geboortedatum in dd/mm/jjjj");
            dob = Convert.ToDateTime(Console.ReadLine()).Date;

            TimeSpan difference = today.Subtract(dob);

            Console.WriteLine("U bent" + difference.Days / 365 + "Jaar oud");
            Console.ReadLine();
        }
    }
}
