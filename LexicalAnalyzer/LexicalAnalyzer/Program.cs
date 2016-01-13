using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Text.RegularExpressions;

namespace LexicalAnalyzer
{
    class Program
    {
        static void Main(string[] args)
        {
            string input = Console.ReadLine();
            Regex ids = new Regex(@"\w*", RegexOptions.Compiled);
            // var ids = new Regex(@"(([a-z]|[A-Z])+[0-9]*)");
            //var ids = new Regex("([a-zA-Z][a-zA-Z0-9_]+)*");
            Regex ops = new Regex(@"[+]|[-]|[*]|[/]|[=]", RegexOptions.Compiled);
            MatchCollection mc = ids.Matches(input);
            // Console.WriteLine("Identifiers are");

            foreach (var item in mc)
            {
                if (item.ToString().Trim().Length != 0)
                {
                    if ((int)item.ToString().Trim()[0] > 64 || item.ToString().Trim()[0] == '_')
                        Console.WriteLine("Identifier : " + item.ToString());
                }
            }
            MatchCollection opsMatched = ops.Matches(input);
            Console.WriteLine("\n\n");
            foreach (var item in opsMatched)
            {
                if (item.ToString().Trim().Length != 0)
                    Console.WriteLine("Operator : " + item.ToString());
            }

            Regex nums = new Regex(@"\d*");
            Console.WriteLine("\n\n");
            var numsMatched = nums.Matches(input);
            foreach (var item in mc)
            {
                if (item.ToString().Trim().Length != 0 && isNumber(item.ToString()))
                    Console.WriteLine("Number : " + item.ToString());
            }
        }

        public static bool isNumber(string input)
        {
            return input.All(char.IsDigit);
        }
    }
}
