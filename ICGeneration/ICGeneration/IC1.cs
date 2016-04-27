using System;
using System.Collections;
using System.Text;
using System.IO;

public class IC1
{
	internal string[] keywords = new string[] {"auto", "break", "case", "char", "const", "continue", "default", "do", "double", "else", "enum", "extern", "float", "for", "goto", "if", "int", "include", "long", "main", "register", "return", "short", "signed", "sizeof", "static", "struct", "switch", "typedef", "union", "unsigned", "void", "volatile", "while"};
	internal string[] ariOp = new string[] {"+", "-", "*", "/"};
	internal string[] relOp = new string[] {"!", ">", "==", "<", "!=", "<=", ">="};

	internal StreamReader fr = null;
	internal StreamReader br = null;

	internal StreamReader fr1;
	internal StreamReader br1;

	internal static string value = null;

	internal int j = 0, length = 0, k = 0, l = 0, stacktop = 0, index = 0;
//JAVA TO C# CONVERTER NOTE: The following call to the 'RectangularArrays' helper class reproduces the rectangular array initialization that is automatic in Java:
//ORIGINAL LINE: internal string[][] parTable = new string[36][22];
	internal string[][] parTable = RectangularArrays.ReturnRectangularStringArray(36, 22);

	internal string[] productions = {};
	internal string[] ic_reduce = new string[] {"na", "na", "na", "na", "na", "=", "na", "r", "+", "-", "na", "*", "/", "na", "na", "na"};
	internal string[] terNonter = {};

	internal static int readOneLine = 0;
	internal int goInLoop = 0, readLastChar = 0, cunt = 0;
	internal Stack st = new Stack();
	internal Stack symbol = new Stack();
	internal static Stack inputString = new Stack();
	internal static Stack valueStack = new Stack();

//JAVA TO C# CONVERTER WARNING: Method 'throws' clauses are not available in .NET:
//ORIGINAL LINE: public static void main(String[] args) throws java.io.IOException
	public static void Main(string[] args)
	{

		string str = null; string strng = null; string str1 = null; string line = null; string line1 = null; string[] splitLine = null;
		int j = 0, k = 0;

		IC1 sy = new IC1();

		// reading input file
		StreamReader fr = new StreamReader("Input1.txt");
		//StreamReader br = new StreamReader(fr);
		StreamReader fr2 = new StreamReader("Input1.txt");
		//StreamReader br2 = new StreamReader(fr2);

		// reading parsing table
		StreamReader fr1 = new StreamReader("Parse.csv");
		//StreamReader br1 = new StreamReader(fr1);
		line = fr1.ReadLine();
		// loading parse table in an array
		j = 0;
		while ((line = fr1.ReadLine()) != null)
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
		Console.WriteLine("\nCode Gen\n");
		sy.st.Push("0");
		inputString.Push("$");
		IC1.value = "started";

//		System.out.print("\n\nStack\tSymbol\tInput String\tAction\n");
//		System.out.print(Arrays.toString(sy.st.toArray()) + "\t");
//		System.out.print(Arrays.toString(sy.symbol.toArray()) + "\t");
//		System.out.print(Arrays.toString(inputString.toArray()) + "\t");

		// execute token wise
		strng = fr2.ReadLine();
		// str = br.ReadLine();
		while ((str = fr.ReadLine()) != null)
		{
				if ((fr2.ReadLine() == null))
				{
				readOneLine = 1;
				}
			string token = sy.lex(str);
		}
		if (value.Equals("ACCEPT"))
		{
			Console.WriteLine("STRING ACCEPTED");
		}
		else
		{
			Console.WriteLine("STRING REJECTED");
		}
	}

//JAVA TO C# CONVERTER WARNING: Method 'throws' clauses are not available in .NET:
//ORIGINAL LINE: public String lex(String str) throws java.io.IOException
	public virtual string lex(string str)
	{
//		System.out.println("in lex function");
		string str1 = null; string[] array ;
		if (str.Trim().Length > 0)
		{
			// remove extra spaces
			//StringTokenizer st = new StringTokenizer(str, " ");
			StringBuilder sb = new StringBuilder();
			//while (st.hasMoreElements())
			//{
			//	sb.Append(st.nextElement()).Append(" ");
			//}
			//str = sb.ToString().Trim();
			// remove tabs or new line
			//str = str.replaceAll("\t", "");
			//str1 = str.replaceAll("\n", "");

			var tokens = str.Split (' ');
			foreach (var tok in tokens) {
				sb.Append (tok + " ");
				str = sb.ToString ().Trim ();
				str = str.Replace ("\t", "");
				str = str.Replace ("\r", "");
				str = str.Replace ("\n", "");
				str1 = str;
			}
			// check for single line comment
			if (str1.Contains("//"))
			{
//				System.out.println("\n" + str1);
//				System.out.println("\nSingle line comment");
				int ind = str1.IndexOf("//", StringComparison.Ordinal);
				str1 = str1.Substring(0, ind);
//				System.out.println("New String " + str1);
			}

			// check for multiple line comment
			if (str1.Contains("/*"))
			{
//				System.out.println("\nMultiple line comment");
//				System.out.println(str1);
				str1 = StringHelperClass.SubstringSpecial(str1, str1.IndexOf("/*", StringComparison.Ordinal), str1.Length);
				while (!str1.Contains("*/"))
				{

					str1 = br.ReadLine();
//					System.out.println(str1);
					str1.Replace(str1, "");
				}
				int a = str1.IndexOf("*/", StringComparison.Ordinal);
				str1 = StringHelperClass.SubstringSpecial(str1, a + 2, str1.Length);
			}

			// split with spaces
			array = str1.Split(" ", true);
//			System.out.println("\n" + str1 + "\n");
			// readOneLine=0;
			for (int i = 0; i < array.Length; i++)
			{
				if ((i == (array.Length - 1)) && (readOneLine == 1))
				{
					readLastChar = 1;
				}
				if (checkKeyword(array[i]))
				{
//					System.out.println("Keyword : " + array[i]);
					syntax(array[i], array[i]);
				}
				else if (checkAriOperator(array[i]))
				{
//					System.out.println("Arithmatic operator : " + array[i]);
					syntax(array[i], array[i]);
				}
				else if (checkRelOp(array[i]))
				{
//					System.out.println("Relational operator : " + array[i]);
					syntax("relop", array[i]);
				}
				else if (array[i].Equals("="))
				{
//					System.out.println("Assignment Operator : " + array[i]);
					syntax(array[i], array[i]);
				}
				else if ((array[i].Equals("{")) || (array[i].Equals("}")) || (array[i].Equals("(")) || (array[i].Equals(")")))
				{
//					System.out.println("Brackets : " + array[i]);
					syntax(array[i], array[i]);
				}
				else if ((array[i].Equals("||")) || (array[i].Equals("&&")))
				{
//					System.out.println("Logical Operators : " + array[i]);
					syntax(array[i], array[i]);
				}
				else if ((array[i].Equals(";")) || (array[i].Equals(",")))
				{
//					System.out.println("Delimitor : " + array[i]);
					syntax(array[i], array[i]);
				}
				else if (!char.IsDigit(array[i][0]))
				{
//					System.out.println("Identifier : " + array[i]);
					syntax("id", array[i]);
				}
				else if (checkNumber(array[i]))
				{
//					System.out.println("Integer Number : " + array[i]);
					syntax(array[i], array[i]);
				}
				else if (checkNumber1(array[i]))
				{
//					System.out.println("Float Number : " + array[i]);
					syntax(array[i], array[i]);
				}
				else
				{
//					System.out.println("Invalid identifier!!!!! : " + array[i]);
				}
			}
//			System.out.println("Read one line  and readOneLine = "
//					+ readOneLine);
			readOneLine = 1;
		}
		return (null);
	}

	public virtual void syntax(string token, string token1)
	{
		string value1 = null, value2 = null, value3 = null;
		inputString.Push(token);
//		System.out.print(Arrays.toString(inputString.toArray()));
		int i = 0;
		while (((!inputString.Peek().Equals("$")) || (goInLoop == 1) || (readLastChar == 1) && (!((value.Equals("ACCEPT")) || (value.Equals("null"))))) && i < 100)
		{
			string input = (string) inputString.Peek();
			for (k = 0; k < terNonter.Length; k++)
			{
				if (input.Equals(terNonter[k]))
				{
					index = k;
					break;
				}
			}

			string top = (string) st.Peek();
			stacktop = int.Parse(top);

			// get value from table
			value = parTable[stacktop][index];
			// System.out.println(" value is    " + value + "  stacktop  " +
			// stacktop
			// + "  input is " + input);

			if (!((value.Equals("ACCEPT")) || (value.Equals("null"))))
			{
				if (value.StartsWith("S", StringComparison.Ordinal))
				{
//					System.out.print("\nShift operation -> read " + value);
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
					if (token == "id" || token == "relop")
					{
						valueStack.Push(token1);
					}

				}
				else if (value.StartsWith("R", StringComparison.Ordinal))
				{
					// System.out.print("Reduce operation -> read " + value);

					if (value.Length == 2)
					{
						value = value.Substring(1, 1);
					}
					else
					{
						value = value.Substring(1, 2);
					}

					int num = int.Parse(value);

					string reductn = ic_reduce[num];

					//Console.WriteLine(Arrays.ToString(valueStack.ToArray()) + "\t");
					switch (reductn)
					{
					case "na":
						break;
					case "+":
								value2 = "" + valueStack.Pop();
								value1 = "" + valueStack.Pop();

								Console.WriteLine("\nt" + (cunt++) + "= " + value1 + " + " + value2 + "\n");
								valueStack.Push("t" + (cunt - 1));
						//		Console.Write(Arrays.ToString(valueStack.ToArray()) + "\t");
								break;
					case "-":
						value2 = "" + valueStack.Pop();
						value1 = "" + valueStack.Pop();
						Console.WriteLine("\nt" + (cunt++) + "= " + value1 + " - " + value2 + "\n");
						valueStack.Push("t" + (cunt - 1));
						//Console.Write(Arrays.ToString(valueStack.ToArray()) + "\t");
						break;
					case "*":
						value2 = "" + valueStack.Pop();
						value1 = "" + valueStack.Pop();
						Console.WriteLine("\nt" + (cunt++) + "= " + value1 + " * " + value2 + "\n");
						valueStack.Push("t" + (cunt - 1));
						//Console.Write(Arrays.ToString(valueStack.ToArray()) + "\t");
						break;
					case "/":
						value2 = "" + valueStack.Pop();
						value1 = "" + valueStack.Pop();
						Console.WriteLine("\nt" + (cunt++) + "= " + value1 + " / " + value2 + "\n");
						valueStack.Push("t" + (cunt - 1));
						//Console.Write(Arrays.ToString(valueStack.ToArray()) + "\t");
						break;
					case "=":
						value2 = "" + valueStack.Pop();
						value1 = "" + valueStack.Pop();
						Console.WriteLine("\n" + value1 + " = " + value2 + "\n");
						//valueStack.push("t" + (cunt - 1));
						//Console.Write(Arrays.ToString(valueStack.ToArray()) + "\t");
						//valueStack.Count == 0;
						break;
					case "relop":
						value3 = "" + valueStack.Pop();
						value2 = "" + valueStack.Pop();
						value1 = "" + valueStack.Pop();
						Console.WriteLine("\nt" + (cunt++) + "= " + value1 + value2 + value3 + "\n");
						valueStack.Push("t" + (cunt));
						//Console.Write(Arrays.ToString(valueStack.ToArray()) + "\t");
						break;
					}

					string prod = productions[num];
					string rhs = prod.Substring(5, prod.Length - 5);
					string[] rhsArr = rhs.Split(" ", true);
					prod = prod.Substring(0, 1);
					// System.out
					// .println("  " + symbol.peek() + " reduced to " + prod);
					// System.out.println("\n");
					for (int o = 0; o < rhsArr.Length; o++)
					{
//						System.out.println(rhsArr[o]);
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
					top = (string) st.Peek();
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

//				System.out.print("\n\n" + Arrays.toString(st.toArray()) + "\t");
//				System.out.print(Arrays.toString(symbol.toArray()) + "\t");
//				System.out.print(Arrays.toString(inputString.toArray()) + "\t");
//				System.out.println("\n");
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
