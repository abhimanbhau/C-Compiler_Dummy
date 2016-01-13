using System;
using System.IO;
using LexicalAnalyzer;

namespace CompilerLab
{
    internal class Program
    {
        private static void Main(string[] args)
        {
            if (args.Length == 0)
            {
                PrintUsage();
                return;
            }

            var saveTemporary = !args[0].Contains("f");

            foreach (var token in Tokenizer.TokenizeSource(args[1], saveTemporary))
            {
                Console.WriteLine(token);
            }
            Console.Read();
        }

        public static void PrintUsage()
        {
            Console.WriteLine("Usage :\nCompiler -[t/f] <filename.c>\n\n-t - Save temporary intermediate files.\n"
                              + "-f - Don't save temporary intermediate files.");
        }
    }
}