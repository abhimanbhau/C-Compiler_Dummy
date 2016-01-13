using System.Collections.Generic;
using System.IO;

namespace LexicalAnalyzer
{
    public static class Tokenizer
    {
        public static List<string> TokenizeSource(string codePath, bool saveTemporary)
        {
            var normalizedCode = Scanner.ScanSource(File.ReadAllLines(codePath));
            if (saveTemporary)
            {
                File.WriteAllText(Path.GetFileNameWithoutExtension(codePath) + ".s1", normalizedCode.ToString());
            }
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
            if (saveTemporary)
            {
                File.WriteAllLines(Path.GetFileNameWithoutExtension(codePath) + ".s2", tokensFinal);
            }
            return tokensFinal;
        }
    }
}