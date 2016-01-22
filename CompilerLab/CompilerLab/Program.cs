using System;
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
			Console.WriteLine ("\n\nError tokens");
			Tokenizer.unIdentified.ForEach (Console.WriteLine);
        }

        public static void PrintUsage()
        {
            Console.WriteLine("Usage :\nCompiler -[t/f] <filename.c>\n\n-t - Save temporary intermediate files.\n"
                              + "-f - Don't save temporary intermediate files.");
        }
    }
}