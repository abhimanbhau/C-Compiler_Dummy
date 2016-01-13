using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace CompilerLab
{
    class Program
    {
        static List<string> keyWords = new List<string>
        {
            "int", "char", "float", "double", "return", "for", "if", "while", "printf", "else", "switch"
            , "case", "goto", "break", "continue", "return"
        };

        static List<string> operators = new List<string>
        {
            "+", "-", "/", "*", "%", "&", "|", "!", "<", ">", ">=", "<=", "==", "=", "++", "--"
        };

        static List<string> arithmeticOp = new List<string>
        {
            "+", "-", "/", "*", "%", "++", "--"
        };
        static List<string> logicalOp = new List<string>
        {
            "&&", "||", "!="
        };
        static List<string> relationalOp = new List<string>
        {
            "<", ">", ">=", "<=", "=="
        };
        static List<string> bitwiseOp = new List<string>
        {
             "&", "|", "!"
        };

        static void Main(string[] args)
        {
            var code = File.ReadAllLines("code.txt");

            // Buffer
            StringBuilder normalizedBuffer = new StringBuilder();

            StringBuilder tokenBuffer = new StringBuilder();

            foreach (var line in code)
            {
                foreach (var character in line)
                {
                    if (character == '\t' || character == '\n')
                    {
                        normalizedBuffer.Append(" ");
                    }
                    else
                        normalizedBuffer.Append(character);
                }
            }

            foreach (var bit in operators)
                normalizedBuffer.Replace(bit, " " + bit + " ");

            normalizedBuffer.Replace("&  &", "&&");
            normalizedBuffer.Replace("|  |", "||");
            normalizedBuffer.Replace("!  =", "!=");
            normalizedBuffer.Replace("=  =", "==");

            Console.WriteLine(normalizedBuffer + "\n\n");

            var tokensTemp = normalizedBuffer.ToString().Split(new char[] { ' ', ',', '{', '}' });

            var tokensFinal = new List<string>();

            foreach (var token in tokensTemp)
            {
                if (token.Trim().Length == 0)
                    continue;

                if (arithmeticOp.Contains(token))
                {
                    tokensFinal.Add("Arithmetic Operator : " + token);
                }
                else if (logicalOp.Contains(token))
                {
                    tokensFinal.Add("Logical Operator : " + token);
                }
                else if (relationalOp.Contains(token))
                {
                    tokensFinal.Add("Relational Operator : " + token);
                }
                else if (bitwiseOp.Contains(token))
                {
                    tokensFinal.Add("Bitwise Operator : " + token);
                }
                else if (token == "=")
                {
                    tokensFinal.Add("Assignment Operator : " + token);
                }
                else if (keyWords.Contains(token))
                {
                    tokensFinal.Add("Keyword : " + token);
                }
            }

            foreach (var item in tokensFinal)
            {
                Console.WriteLine(item.ToString());
            }

            Console.WriteLine();
        }
    }
}
