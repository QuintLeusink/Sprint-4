using System;
public class Exercise4
{
    private static int schrikkeljaar;

    public static void Main()
    {
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
    }
}