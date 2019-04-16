using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Windows.Forms;

namespace Opdracht9._1
{
    class Program
    {
        static void Main(string[] args)
        {
            string bestandNaam, tekst;
            Console.WriteLine("Geef een naam voor het tekstbestand:");
            bestandNaam = Console.ReadLine();

            try
            {
                if (File.Exists(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Desktop) + "\\" + bestandNaam + ".txt"))
                {
                    DialogResult dialogResult = MessageBox.Show(bestandNaam + ".txt bestaat al," + "\n" + "Wilt u het bestand vervangen ?", "Opslaan", MessageBoxButtons.YesNo);
                    switch (dialogResult)
                    {
                        case DialogResult.Yes:
                            goto START;
                        case DialogResult.No:
                            Environment.Exit(0);
                            break;
                    }
                }
                else
                {
                    goto START;
                }
            START:
                {
                    Console.WriteLine("Geef uw tekst:");
                    tekst = Console.ReadLine();
                    StreamWriter sw = new StreamWriter(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Desktop) + "\\" + bestandNaam + ".txt");
                    sw.WriteLine(tekst);
                    sw.Close();
                }
            }
            catch (Exception e)
            {
                Console.WriteLine("Mislukt: " + e.Message);
            }
            finally
            {
                Console.WriteLine("Opgeslagen!");
            }
            System.Diagnostics.Process.Start(System.Environment.GetFolderPath(System.Environment.SpecialFolder.Desktop) + "\\" + bestandNaam + ".txt");
            Console.ReadLine();
        }
    }
}