using System.Collections.Generic;

namespace LexicalAnalyzer
{
    public static class Parser
    {
        public static List<string> TokenizeSource(string[] codeLines)
        {
            var normalizedCode = Scanner.ScanSource(codeLines);
            var tokensTemp = normalizedCode.ToString().Split(' ', ',', '{', '}');
            var tokensFinal = new List<string>();
            foreach (var token in tokensTemp)
            {
                if (token.Trim().Length == 0)
                    continue;
                if (Constants.ArithmeticOp.Contains(token))
                    tokensFinal.Add("Arithmetic Operator : " + token);
                else if (Constants.LogicalOp.Contains(token))
                    tokensFinal.Add("Logical Operator : " + token);
                else if (Constants.RelationalOp.Contains(token))
                    tokensFinal.Add("Relational Operator : " + token);
                else if (Constants.BitwiseOp.Contains(token))
                    tokensFinal.Add("Bitwise Operator : " + token);
                else if (token == "=")
                    tokensFinal.Add("Assignment Operator : " + token);
                else if (Constants.KeyWords.Contains(token))
                    tokensFinal.Add("Keyword : " + token);
            }
            return tokensFinal;
        }
    }
}