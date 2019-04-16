using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System;

namespace SimpleCalculator
{
    internal static class Program
    {
        private enum Operation
        {
            Unknown,

            Addition,

            Subtraction,

            Multiplication,

            Division,

            Exponentiation,

            Modulo
        };

        private static void Main()
        {

            // Ask user first number
            string stringFirstNumber;
            double firstNumber;

            do
            {
                Console.WriteLine("Eerste getal:");
                stringFirstNumber = Console.ReadLine();
            } while (!double.TryParse(stringFirstNumber, out firstNumber));

            // Ask user second number
            string stringSecondNumber;
            double secondNumber;

            do
            {
                Console.WriteLine("Tweede getal :");
                stringSecondNumber = Console.ReadLine();
            } while (!double.TryParse(stringSecondNumber, out secondNumber));

            string stringOperation;
            Operation operation;

            do
            {
                // Ask user operation to use
                Console.WriteLine("Kies wat u wilt + (Plus), - (Min), * (Keer), / (Gedeeld door), ^ (Exponent) or % (Percentiel) :");
                stringOperation = Console.ReadLine();

                // use for the string operation choice
                operation = ConvertStringChoiceToEnum(stringOperation);
            } while (operation == Operation.Unknown);

            // stock the result of the operation
            var result = DoSomethingByOperation(operation, firstNumber, secondNumber);

            Console.WriteLine();
            Console.WriteLine("Resultaat van " + firstNumber + " " + stringOperation + " " + secondNumber + " = " + result + ".");
            Console.ReadKey();
        }

        private static Operation ConvertStringChoiceToEnum(string stringOperation)
        {
            // Convert string choice to enum
            switch (stringOperation)
            {
                case "+":
                case "Plus":
                    return Operation.Addition;
                case "-":
                case "Min":
                    return Operation.Subtraction;
                case "*":
                case "Keer":
                    return Operation.Multiplication;
                case "/":
                case "Gedeeld door":
                    return Operation.Division;
                case "^":
                case "Exponent":
                    return Operation.Exponentiation;
                case "%":
                case "Percentiel":
                    return Operation.Modulo;
                default:
                    return Operation.Unknown;
            }
        }

        private static double DoSomethingByOperation(Operation operation, double firstNumber, double secondNumber)
        {
            // Do something depending on the operation choose
            switch (operation)
            {
                case Operation.Addition:
                    return firstNumber + secondNumber;

                case Operation.Subtraction:
                    return firstNumber - secondNumber;

                case Operation.Multiplication:
                    return firstNumber * secondNumber;

                case Operation.Division:
                    return firstNumber / secondNumber;

                case Operation.Exponentiation:
                    return Math.Pow(firstNumber, secondNumber);

                case Operation.Modulo:
                    return firstNumber % secondNumber;

                case Operation.Unknown:
                    return double.NaN;

                default:
                    return double.NaN;
            }
        }
    }
}
