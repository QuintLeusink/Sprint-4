using System;

class Program
{

    static void Main()
    {
        Console.WriteLine("Voer een deeltal in");
        int deeltal = Convert.ToInt32(Console.ReadLine());

        Console.WriteLine("Voer een deler in");
        int deler = Convert.ToInt32(Console.ReadLine());

        if (deler == 0)
        {
            Console.WriteLine("Als je deeld door nul ben je een sul!");
            Console.ReadLine();
        }
        else
        {
            Console.WriteLine("Het quotiënt is ");
            Console.WriteLine(deeltal / deler);
            Console.ReadLine();
        }

    }
}