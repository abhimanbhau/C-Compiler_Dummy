using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace LexicalAnalyzer
{
    public static class Tokenizer
    {
        public static List<string> TokenizeSource(string codePath, bool saveTemporary)
        {
            var normalizedCode = Scanner.ScanSource(File.ReadAllLines(codePath));
            var unIdentified = new List<string>();
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
                else // Seems like them is some identifiers
                {
                    // sanitize the token for the good
                    var tempToken = token.Replace(";", "");
                    if (tempToken.All(char.IsLetter)) // plain alpha-id confirmed
                    {
                        tokensFinal.Add("Identifier : " + tempToken);
                    }
                    // this is some crazy shiz, can be abc12, 12abc or abc#@$ or 123 or 123.4
                    // let's work out our way through numbers, floats and then stuff
                    else if (tempToken.Replace(".", "").All(char.IsDigit)) // dec or dig, dunno yet
                    {
                        if (tempToken.Contains("."))
                        {
                            tokensFinal.Add("Float/Double : " + tempToken);
                        }
                        else
                        {
                            tokensFinal.Add("Number : " + tempToken);
                        }
                    }
                    else // this is ids or some
                    {
                        if (char.IsDigit(tempToken[0]))
                        {
                            unIdentified.Add(tempToken);
                        }
                        else if (char.IsLetter(tempToken[0]) || tempToken[0] == '_')
                        {
                            if (tempToken.Replace("_", "a").All(char.IsLetterOrDigit))
                            {
                                tokensFinal.Add("Identifier : " + tempToken);
                            }
                            else if (tempToken.Contains("(") && tempToken.Contains(")"))
                            {
                                tokensFinal.Add("Function : " + tempToken);
                            }
                            else if (tempToken.Contains("[") && tempToken.Contains("]"))
                            {
                                tokensFinal.Add("Array Variable : " + tempToken);
                            }
                            else
                            {
                                unIdentified.Add(tempToken);
                            }
                        }
                        else
                        {
                            unIdentified.Add(tempToken);
                        }
                    }
                }
            }
            if (saveTemporary)
            {
                File.WriteAllLines(Path.GetFileNameWithoutExtension(codePath) + ".s2", tokensFinal);
                File.WriteAllLines(Path.GetFileNameWithoutExtension(codePath) + ".s2.invalid", unIdentified);
            }
            return tokensFinal;
        }
    }
}