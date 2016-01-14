using System.Collections.Generic;

namespace LexicalAnalyzer
{
    public static class Constants
    {
        public static readonly List<string> KeyWords = new List<string>
        {
            "break",
            "case",
            "char",
            "const",
            "continue",
            "default",
            "do",
            "double",
            "else",
            "enum",
            "extern",
            "float",
            "for",
            "goto",
            "if",
            "int",
            "long",
            "register",
            "return",
            "short",
            "signed",
            "sizeof",
            "static",
            "struct",
            "switch",
            "typedef",
            "union",
            "unsigned",
            "void",
            "volatile",
            "while"
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

        public static readonly List<string> FunctionOrArraySig = new List<string>
        {
            "(",
            ")",
            "[",
            "]"
        };
    }
}