using LexicalAnalyzer;
using System;
using System.Collections;
using System.IO;
using System.Text;

namespace SyntaxParser
{

    public class Syntax
    {
        internal string[] keywords = new string[]
        {
            "auto", "break", "case", "char", "const", "continue", "default", "do", "double", "else", "enum", "extern",
            "float", "for", "goto", "if", "int", "include", "long", "main", "register", "return", "short", "signed",
            "sizeof", "static", "struct", "switch", "typedef", "union", "unsigned", "void", "volatile", "while"
        };

        internal string[] ariOp = new string[] { "+", "-", "*", "/" };
        internal string[] relOp = new string[] { "!", ">", "==", "<", "!=", "<=", ">=" };

        internal StreamReader fr = null;
        internal StreamReader br = null;

        internal StreamReader fr1;
        internal StreamReader br1;

        internal static string value = null;
        internal int j = 0, length = 0, k = 0, l = 0, stacktop = 0, index = 0;
        //JAVA TO C# CONVERTER NOTE: The following call to the 'RectangularArrays' helper class reproduces the rectangular array initialization that is automatic in Java:
        //ORIGINAL LINE: internal string[][] parTable = new string[36][22];
        internal string[][] parTable = RectangularArrays.ReturnRectangularStringArray(36, 22);

        internal string[] productions = { };
        internal string[] terNonter = { };

        internal static int readOneLine = 0;
        internal int goInLoop = 0, readLastChar = 0;
        internal Stack st = new Stack();
        internal Stack symbol = new Stack();
        internal static Stack inputString = new Stack();

        //JAVA TO C# CONVERTER WARNING: Method 'throws' clauses are not available in .NET:
        //ORIGINAL LINE: public static void main(String[] args) throws java.io.IOException
        public static void Main(string[] args)
        {

            string str = null;
            string strng = null;
            string str1 = null;
            string line = null;
            string line1 = null;
            string[] splitLine = null;
            int j = 0, k = 0;

            Syntax sy = new Syntax();

            // reading input file
            StreamReader br = new StreamReader("code.c");
            //StreamReader br = new StreamReader(fr);
            StreamReader br2 = new StreamReader("code.c");
            //StreamReader br2 = new StreamReader(fr2);

            // reading parsing table
            StreamReader br1 = new StreamReader("table.csv");
            //StreamReader br1 = new StreamReader(fr1);
            line = br1.ReadLine();
            // loading parse table in an array
            j = 0;
            while ((line = br1.ReadLine()) != null)
            {
                splitLine = line.Split(",", true);
                k = 0;
                for (int i = 1; i < splitLine.Length; i++)
                {
                    sy.parTable[j][k] = splitLine[i];
                    k++;
                }
                j++;
            }

            for (int g = 0; g < sy.parTable.Length; g++)
            {
                Console.Write(g + "\t");
                for (int h = 0; h < splitLine.Length; h++)
                {
                    Console.Write(sy.parTable[g][h] + "\t");
                }
                Console.WriteLine();
            }
            sy.st.Push("0");
            inputString.Push("$");
            Syntax.value = "started";

            Console.Write("\n\nStack\tSymbol\tInput String\tAction\n");
            //Console.Write(Arrays.ToString(sy.st.ToArray()) + "\t");
            //Console.Write(Arrays.ToString(sy.symbol.ToArray()) + "\t");
            //Console.Write(Arrays.ToString(inputString.ToArray()) + "\t");

            foreach (var s in sy.st.ToArray())
            {
                Console.Write(s + "\t");
            }
            Console.WriteLine();
            foreach (var s in sy.symbol.ToArray())
            {
                Console.Write(s + "\t");
            }
            Console.WriteLine();
            foreach (var s in inputString.ToArray())
            {
                Console.Write(s + "\t");
            }
            Console.WriteLine();
            // execute token wise
            strng = br2.ReadLine();
            //		str = br.ReadLine();
            Console.WriteLine("br 2 reading " + strng + " hhh  " + str);
            while ((str = br.ReadLine()) != null)
            {
                Console.WriteLine("dggdgfg");
                Console.WriteLine("br 2 reading " + strng);
                Console.WriteLine("outer while loop");
                if ((br2.ReadLine() == null))
                {
                    readOneLine = 1;
                }
                string token = sy.lex(str);
            }
            if (value.Equals("ACCEPT"))
            {
                Console.WriteLine("STRING REJECTED");
            }
            else
            {
                Console.WriteLine("STRING ACCEPTED");
            }
        }

        public virtual string lex(string str)
        {
            Console.WriteLine("in lex function");
            foreach (var token in Tokenizer.TokenizeSource("code.c", false))
            {
                Console.WriteLine(token);
            }
            string str1 = null;
            string[] array;
            if (str.Trim().Length > 0)
            {
                // remove extra spaces
                var st = str.Split(' ');
                StringBuilder sb = new StringBuilder();
                foreach (var s in st)
                {
                    sb.Append(s + " ");
                }

                str = sb.ToString().Trim();
                // remove tabs or new line
                str = str.Replace("\t", "");
                str1 = str.Replace("\n", "");

                // check for single line comment
                if (str1.Contains("//"))
                {
                    Console.WriteLine("\n" + str1);
                    Console.WriteLine("\nSingle line comment");
                    int ind = str1.IndexOf("//", StringComparison.Ordinal);
                    str1 = str1.Substring(0, ind);
                    Console.WriteLine("New String " + str1);
                }

                // check for multiple line comment
                if (str1.Contains("/*"))
                {
                    Console.WriteLine("\nMultiple line comment");
                    Console.WriteLine(str1);
                    str1 = StringHelperClass.SubstringSpecial(str1, str1.IndexOf("/*", StringComparison.Ordinal),
                        str1.Length);
                    while (!str1.Contains("*/"))
                    {

                        str1 = br.ReadLine();
                        Console.WriteLine(str1);
                        str1.Replace(str1, "");
                    }
                    int a = str1.IndexOf("*/", StringComparison.Ordinal);
                    str1 = StringHelperClass.SubstringSpecial(str1, a + 2, str1.Length);
                }

                // split with spaces
                array = str1.Split(" ", true);
                Console.WriteLine("\n" + str1 + "\n");
                //			readOneLine=0;
                for (int i = 0; i < array.Length; i++)
                {
                    if ((i == (array.Length - 1)) && (readOneLine == 1))
                    {
                        readLastChar = 1;
                    }
                    if (checkKeyword(array[i]))
                    {
                        Console.WriteLine("Keyword : " + array[i]);
                        syntax(array[i]);
                    }
                    else if (checkAriOperator(array[i]))
                    {
                        Console.WriteLine("Arithmatic operator : " + array[i]);
                        syntax(array[i]);
                    }
                    else if (checkRelOp(array[i]))
                    {
                        Console.WriteLine("Relational operator : " + array[i]);
                        syntax("relop");
                    }
                    else if (array[i].Equals("="))
                    {
                        Console.WriteLine("Assignment Operator : " + array[i]);
                        syntax(array[i]);
                    }
                    else if ((array[i].Equals("{")) || (array[i].Equals("}")) || (array[i].Equals("(")) ||
                             (array[i].Equals(")")))
                    {
                        Console.WriteLine("Brackets : " + array[i]);
                        syntax(array[i]);
                    }
                    else if ((array[i].Equals("||")) || (array[i].Equals("&&")))
                    {
                        Console.WriteLine("Logical Operators : " + array[i]);
                        syntax(array[i]);
                    }
                    else if ((array[i].Equals(";")) || (array[i].Equals(",")))
                    {
                        Console.WriteLine("Delimitor : " + array[i]);
                        syntax(array[i]);
                    }
                    else if (!char.IsDigit(array[i][0]))
                    {
                        Console.WriteLine("Identifier : " + array[i]);
                        syntax("id");
                    }
                    else if (checkNumber(array[i]))
                    {
                        Console.WriteLine("Integer Number : " + array[i]);
                        syntax(array[i]);
                    }
                    else if (checkNumber1(array[i]))
                    {
                        Console.WriteLine("Float Number : " + array[i]);
                        syntax(array[i]);
                    }
                    else
                    {
                        Console.WriteLine("Invalid identifier!!!!! : " + array[i]);
                    }
                }
                Console.WriteLine("Read one line  and readOneLine = " + readOneLine);
                readOneLine = 1;
            }
            return (null);
        }


        public void ParserDriver(string[] array)
        {
            for (int i = 0; i < array.Length; i++)
            {
                if ((i == (array.Length - 1)) && (readOneLine == 1))
                {
                    readLastChar = 1;
                }
                if (checkKeyword(array[i]))
                {
                    Console.WriteLine("Keyword : " + array[i]);
                    syntax(array[i]);
                }
                else if (checkAriOperator(array[i]))
                {
                    Console.WriteLine("Arithmatic operator : " + array[i]);
                    syntax(array[i]);
                }
                else if (checkRelOp(array[i]))
                {
                    Console.WriteLine("Relational operator : " + array[i]);
                    syntax("relop");
                }
                else if (array[i].Equals("="))
                {
                    Console.WriteLine("Assignment Operator : " + array[i]);
                    syntax(array[i]);
                }
                else if ((array[i].Equals("{")) || (array[i].Equals("}")) || (array[i].Equals("(")) ||
                         (array[i].Equals(")")))
                {
                    Console.WriteLine("Brackets : " + array[i]);
                    syntax(array[i]);
                }
                else if ((array[i].Equals("||")) || (array[i].Equals("&&")))
                {
                    Console.WriteLine("Logical Operators : " + array[i]);
                    syntax(array[i]);
                }
                else if ((array[i].Equals(";")) || (array[i].Equals(",")))
                {
                    Console.WriteLine("Delimitor : " + array[i]);
                    syntax(array[i]);
                }
                else if (!char.IsDigit(array[i][0]))
                {
                    Console.WriteLine("Identifier : " + array[i]);
                    syntax("id");
                }
                else if (checkNumber(array[i]))
                {
                    Console.WriteLine("Integer Number : " + array[i]);
                    syntax(array[i]);
                }
                else if (checkNumber1(array[i]))
                {
                    Console.WriteLine("Float Number : " + array[i]);
                    syntax(array[i]);
                }
                else
                {
                    Console.WriteLine("Invalid identifier!!!!! : " + array[i]);
                }
            }
        }

        public virtual void syntax(string token)
        {

            inputString.Push(token);
            //Console.Write(Arrays.ToString(inputString.ToArray()));
            foreach (var s in inputString.ToArray())
            {
                Console.Write(s + "\t");
            }
            Console.WriteLine();
            int i = 0;
            while (((!inputString.Peek().Equals("$")) || (goInLoop == 1) ||
                    (readLastChar == 1) && (!((value.Equals("ACCEPT")) || (value.Equals("null"))))) && i < 100)
            {
                string input = (string)inputString.Peek();
                for (k = 0; k < terNonter.Length; k++)
                {
                    if (input.Equals(terNonter[k]))
                    {
                        index = k;
                        break;
                    }
                }

                string top = (string)st.Peek();
                stacktop = int.Parse(top);

                // get value from table
                value = parTable[stacktop][index];
                //		System.out.println(" value is    " + value + "  stacktop  " + stacktop
                //				+ "  input is " + input);

                if (!((value.Equals("ACCEPT")) || (value.Equals("null"))))
                {
                    if (value.StartsWith("S", StringComparison.Ordinal))
                    {
                        Console.Write("\nShift operation -> read " + value);
                        // System.out.println("\n");
                        if (value.Length == 2)
                        {
                            value = value.Substring(1, 1);
                        }
                        else
                        {
                            value = value.Substring(1, 2);
                        }

                        st.Push(value);
                        symbol.Push(input);
                        inputString.Pop();

                    }
                    else if (value.StartsWith("R", StringComparison.Ordinal))
                    {
                        Console.Write("Reduce operation -> read " + value);

                        if (value.Length == 2)
                        {
                            value = value.Substring(1, 1);
                        }
                        else
                        {
                            value = value.Substring(1, 2);
                        }

                        int num = int.Parse(value);
                        string prod = productions[num];
                        string rhs = prod.Substring(5, prod.Length - 5);
                        string[] rhsArr = rhs.Split(" ", true);
                        prod = prod.Substring(0, 1);
                        Console.WriteLine("  " + symbol.Peek() + " reduced to " + prod);
                        Console.WriteLine("\n");
                        for (int o = 0; o < rhsArr.Length; o++)
                        {
                            Console.WriteLine(rhsArr[o]);
                            st.Pop();
                        }
                        symbol.Pop();
                        symbol.Push(prod);

                        // checking after reduce and non terminal
                        // String symtop = (String) symbol.peek();
                        for (k = 0; k < terNonter.Length; k++)
                        {
                            if (prod.Equals(terNonter[k]))
                            {
                                index = k;
                                break;
                            }
                        }
                        top = (string)st.Peek();
                        stacktop = int.Parse(top);
                        value = parTable[stacktop][index];
                        st.Push(value);
                        // System.out.println("\n\nafter reduce\n");
                        // System.out.println("stck : "+stacktop);
                        // System.out.println("input : "+ input);
                        // System.out.println("symbol : "+symbol.peek()
                        // +"uska index "+index);
                        // System.out.println("value[stack][input]  "+value
                        // +"  that is pushed to stack");
                    }
                    else
                    {
                        st.Push(value);
                        symbol.Push(input);
                        inputString.Pop();
                    }

                    //Console.Write("\n\n" + Arrays.ToString(st.ToArray()) + "\t");
                    //Console.Write(Arrays.ToString(symbol.ToArray()) + "\t");
                    //Console.Write(Arrays.ToString(inputString.ToArray()) + "\t");

                    foreach (var s in st.ToArray())
                    {
                        Console.Write(s + "\t");
                    }
                    Console.WriteLine();
                    foreach (var s in symbol.ToArray())
                    {
                        Console.Write(s + "\t");
                    }
                    Console.WriteLine();
                    foreach (var s in inputString.ToArray())
                    {
                        Console.Write(s + "\t");
                    }
                    Console.WriteLine();


                    Console.WriteLine("\n");
                }
                if ((inputString.Peek().Equals("$")) && (readOneLine == 1))
                {
                    goInLoop = 1;
                }
                i++;

            }

        }

        public virtual bool checkNumber(string str)
        {
            try
            {
                int e = int.Parse(str);

            }
            catch (System.FormatException)
            {
                return false;
            }
            return true;
        }

        public virtual bool checkNumber1(string str)
        {
            try
            {
                float w = float.Parse(str);
            }
            catch (System.FormatException)
            {
                return false;

            }
            return true;
        }

        public virtual bool checkKeyword(string str)
        {
            bool res = false;
            for (int k = 0; k < keywords.Length; k++)
            {
                if (str.Equals(keywords[k]))
                {
                    res = true;
                    break;
                }
            }
            return res;
        }

        public virtual bool checkAriOperator(string str)
        {
            bool res = false;
            for (int k = 0; k < ariOp.Length; k++)
            {
                if (str.Equals(ariOp[k]))
                {
                    res = true;
                    break;
                }
            }
            return res;
        }

        public virtual bool checkRelOp(string str)
        {
            bool res = false;
            for (int k = 0; k < relOp.Length; k++)
            {
                if (str.Equals(relOp[k]))
                {
                    res = true;
                    break;
                }
            }
            return res;
        }

    }
}