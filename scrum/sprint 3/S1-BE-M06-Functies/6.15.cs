using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Opdracht3._11
{
    class Program
    {
        static void Main(string[] args)
        {
            double weekNumber;
            DateTime d = DateTime.Now;
            DateTime dateTime = DateTime.UtcNow.Date;
            weekNumber = (DateTime.Now.DayOfYear / 6.895833333333333);
            Console.WriteLine(d.Year);
            Console.WriteLine(DateTime.Now.ToString("MMMM"));
            Console.WriteLine(d.DayOfWeek);
            Console.WriteLine(dateTime.ToString("dd"));
            Console.WriteLine(weekNumber);
            Console.WriteLine(d.DayOfYear);
            Console.ReadLine();




            DateTime date = DateTime.Now;

            string dateToday = date.ToString("d");
            DayOfWeek day = DateTime.Now.DayOfWeek;
            string dayToday = day.ToString();

            // compare strings
            if ((dayToday == DayOfWeek.Saturday.ToString()) || (dayToday == DayOfWeek.Sunday.ToString()))
            {
                Console.WriteLine(dateToday + " is a weekend");
                Console.BackgroundColor = ConsoleColor.Red;
                Console.ForegroundColor = ConsoleColor.Yellow;
            }
            else
            {
                Console.WriteLine(dateToday + " is not a weekend");
            }


                    for (int i = 2018; i < 2019; i++)
            {
                Console.WriteLine("{0} is schrikkeljaar: {1}", i, DateTime.IsLeapYear(i));
                Console.ReadLine();
            }

            int isschrikkeljaar;
            Console.Write("Schrikkeljaar Check:\n");
            Console.WriteLine("\n");
            Console.Write("----------------------------------------------");
            Console.Write("\n\n");
            Console.Write("Voer een jaartal in : ");
            schrikkeljaar = Convert.ToInt32(Console.ReadLine());

            if ((schrikkeljaar % 400) == 0)
                Console.WriteLine("{0} ís een schrikkeljaar.\n", schrikkeljaar);
            else if ((schrikkeljaar % 100) == 0)
                Console.WriteLine("{0} is geen schrikkeljaar.\n", schrikkeljaar);
            else if ((schrikkeljaar % 4) == 0)
                Console.WriteLine("{0} is geen schrikkeljaar.\n", schrikkeljaar);
            else
                Console.WriteLine("{0} is geen schrikkeljaar.\n", schrikkeljaar);
            Console.ReadLine();

            string dayToday;

            Boolean Weekend;
            DayOfWeek day = DateTime.Now.DayOfWeek;
            dayToday = " " + day.ToString();

            if ((day == DayOfWeek.Saturday) && (day == DayOfWeek.Sunday))
            {
                Weekend = true;
            }
            else
            {
                Weekend = false;
            }

            Console.WriteLine(dayToday);
            Console.WriteLine(Weekend);
            Console.ReadKey();

        }
    }
}



