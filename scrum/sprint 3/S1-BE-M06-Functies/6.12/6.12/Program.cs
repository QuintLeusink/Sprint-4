using System;

public class IsLeapYear
{
    public static void Main()
    {
        Console.WriteLine(IsSchrikkeljaar().ToString());
        Console.ReadKey();
    }

    // kijk of het nu een schrikkeljaar is
    public static bool IsSchrikkeljaar()
    {
        bool isschrikkeljaar;

        var huidigjaar = DateTime.Now.Year;

        if (huidigjaar % 4 == 0)
        {
            if (huidigjaar % 100 == 0 && huidigjaar % 400 == 0)
            {
                isschrikkeljaar = true;

            }
            else
            {
                isschrikkeljaar = false;
            }
        }

        else
        {
            isschrikkeljaar = false;
        }
        return isschrikkeljaar;

    }

    // Kijk of het opgegeven jaartal een schrikkeljaar is
    public static bool IsSchrikkeljaar(int jaartal)
    {
        return true;
    }

    // Kijk of de opgegeven datum in een schrikkeljaar valt
    public static bool IsSchrikkeljaar(DateTime datum)
    {
        return true;
    }
}
