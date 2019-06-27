using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Threading;
using System.IO;
using System.Drawing;




namespace ConsoleApp10
{
	class Program
	{
		static void Main(string[] args)
		{
			Color();
			Console.ReadLine();
		}
		static void Color()
		{
			Random rand = new Random();



			while (true)
			{
				int kleur = rand.Next(0, 4);
				int x = rand.Next(1, 120);
				int y = rand.Next(1, 30);
				string s = "  ";

				switch (kleur)
				{
					case 0:
						Console.BackgroundColor = ConsoleColor.White;

						break;

					case 1:
						Console.BackgroundColor = ConsoleColor.Blue;
						break;
					case 2:
						Console.BackgroundColor = ConsoleColor.DarkCyan;
						break;
					case 3:
						Console.BackgroundColor = ConsoleColor.DarkYellow;
						break;
				}
				Cursording(x, y, s);
				Thread.Sleep(500);

			}
		}
		static void Cursording(int x, int y, string s)

		{
			Console.SetCursorPosition(x, y);
			Console.Write(s);
		}
	}
}

