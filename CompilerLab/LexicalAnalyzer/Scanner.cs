using System.Text;

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

            normalizedBuffer.Replace("&  &", "&&");
            normalizedBuffer.Replace("|  |", "||");
            normalizedBuffer.Replace("!  =", "!=");
            normalizedBuffer.Replace("=  =", "==");

            return normalizedBuffer;
        }
    }
}