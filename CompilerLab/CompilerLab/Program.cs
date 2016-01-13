using System;
using System.Collections.Generic;
using System.IO;
using LexicalAnalyzer;

namespace CompilerLab
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            foreach (var token in Parser.TokenizeSource(File.ReadAllLines("code.txt")))
            {
                Console.WriteLine(token);
            }
            Console.Read();
        }
    }
}