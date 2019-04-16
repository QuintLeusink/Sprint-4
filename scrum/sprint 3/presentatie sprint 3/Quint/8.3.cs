using System;

class Program
{

    static void Main()
    {
        //deeltal opvragen
        Console.WriteLine("Voer een deeltal in");
        int deeltal = Convert.ToInt32(Console.ReadLine());

        //deler opvragen(door wat je het deeltal wilt delen)
        Console.WriteLine("Voer een deler in");
        int deler = Convert.ToInt32(Console.ReadLine());

        if(deler == 0){
            Console.WriteLine("Wie deeld door nul is een sul");
            Console.ReadLine();
        }
            Console.WriteLine("Het quotiënt is ");
            Console.WriteLine(deeltal / deler);
            Console.ReadLine();
        

    }
}