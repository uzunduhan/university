using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace odev_3_1
{
    class Program
    {
        private static object lblResult;

        static void Main(string[] args)
        {
            string girsayi = Console.ReadLine();
            string[] decimalNumbers = girsayi.Split('+', '-', '*', '/');
            string[] operators = girsayi.Split('0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '.');

            List<string> s = new List<string>();
            foreach (var item in operators)
            {
                if (!string.IsNullOrEmpty(item))
                {
                    s.Add(item);
                }
            }
            decimal intSum = 0;
            for (int i = 0; i < decimalNumbers.Length; i++)
            {
                if (i==0)
                {
                    intSum = Convert.ToDecimal(decimalNumbers[i]);
                }
                if (i > 0)
                {
                    string oprator = s[i - 1];
                    if (oprator == "*")
                    {
                        intSum = intSum * Convert.ToDecimal(decimalNumbers[i]);
                    }
                    else if (oprator == "/")
                    {
                        intSum = intSum / Convert.ToDecimal(decimalNumbers[i]);

                    }
                    else if (oprator == "+")
                    {
                        intSum = intSum + Convert.ToDecimal(decimalNumbers[i]);

                    }
                    else if (oprator == "-")
                    {
                        intSum = intSum - Convert.ToDecimal(decimalNumbers[i]);
                    }
                }
            }
            lblResult= Math.Round(intSum, 2).ToString();
            Console.WriteLine(lblResult);

        }
    
    }
}
