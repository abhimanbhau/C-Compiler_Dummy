using System.Linq;
using System.Text;
using System.Text.RegularExpressions;

namespace LexicalAnalyzer
{
    internal static class Scanner
    {
        public static StringBuilder ScanSource(string[] codeLines)
        {
            var normalizedBuffer = new StringBuilder();

            foreach (var line in codeLines)
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

            foreach (var bit in Constants.Operators)
                normalizedBuffer.Replace(bit, " " + bit + " ");

            // Dirty hacks
            normalizedBuffer.Replace("if(", "if ( ");
            normalizedBuffer.Replace("for(", "for ( ");
            normalizedBuffer.Replace("while(", "while ( ");
            //normalizedBuffer.Replace(")", " )");

            var temp = normalizedBuffer.ToString();
            normalizedBuffer.Clear();
            temp = Constants.KeyWords.Aggregate(temp, (current, key) => Regex.Replace(current, "\b" + key + "\b", " " + key + " "));
            normalizedBuffer.Append(temp);
            normalizedBuffer.Replace("&  &", "&&");
            normalizedBuffer.Replace("|  |", "||");
            normalizedBuffer.Replace("!  =", "!=");
            normalizedBuffer.Replace("=  =", "==");
            normalizedBuffer.Replace("+  +", "++");

            return normalizedBuffer;
        }
    }
}