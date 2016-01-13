using System.Collections.Generic;

namespace LexicalAnalyzer
{
    public static class Constants
    {
        public static readonly List<string> KeyWords = new List<string>
        {
            "int",
            "char",
            "float",
            "double",
            "return",
            "for",
            "if",
            "while",
            "printf",
            "else",
            "switch",
            "case",
            "goto",
            "break",
            "continue",
            "return"
        };

        public static readonly List<string> Operators = new List<string>
        {
            "+",
            "-",
            "/",
            "*",
            "%",
            "&",
            "|",
            "!",
            "<",
            ">",
            ">=",
            "<=",
            "==",
            "=",
            "++",
            "--"
        };

        public static readonly List<string> ArithmeticOp = new List<string>
        {
            "+",
            "-",
            "/",
            "*",
            "%",
            "++",
            "--"
        };

        public static readonly List<string> LogicalOp = new List<string>
        {
            "&&",
            "||",
            "!="
        };

        public static readonly List<string> RelationalOp = new List<string>
        {
            "<",
            ">",
            ">=",
            "<=",
            "=="
        };

        public static readonly List<string> BitwiseOp = new List<string>
        {
            "&",
            "|",
            "!"
        };
    }
}