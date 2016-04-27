using System;
using System.Collections;
using System.IO;
using System.Linq;

namespace IGGen
{
	public class Program
	{
		internal string[] keywords = new string[] {
			"auto",
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
			"include",
			"long",
			"main",
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
		internal string[] relop1 = new string[] { "<=", ">=", ">", "<", "==" };
		internal int flg = 0;
		internal int count = 0;
		internal Stack stack = new Stack ();
		internal Stack symstack = new Stack ();
		internal Stack valstack = new Stack ();
		internal string[][] table = RectangularArrays.ReturnRectangularStringArray (37, 22);

		public virtual void CreateParseTable ()
		{
			StreamReader br = null;
			try {
				br = new StreamReader ("Parse.csv");

				for (int row = 0; row <= 36; row++) {
					string line = br.ReadLine ();
					if (line == null) {
						break;
					}
					string[] val = line.Split (",", true);
					for (int col = 0; col < 22; col++) {
						table [row] [col] = val [col];
					}
				}

			} catch (Exception e) {
				Console.WriteLine ("ERROR: " + e);
			}
		}

		public virtual void Run_lex ()
		{
			stack.Push ("$");
			stack.Push ("0");
			try {
				StreamReader br = new StreamReader ("parsefile.c");
				string line;
				while ((line = br.ReadLine ()) != null) {
					line = line.Replace ("while", "while ");
					line = line.Replace ("[(]", "( ");
					line = line.Replace ("[)]", " ) ");
					line = line.Replace ("[{]", "{ ");
					line = line.Replace ("[}]", "} ");
					line = line.Replace ("[;]", " ; ");
					line = line.Replace ("[+]", " + ");
					line = line.Replace ("[-]", " - ");
					line = line.Replace ("[*]", " * ");
					line = line.Replace ("[/]", " / ");
					line = line.Replace ("\n", "");
					string[] word = line.Split (" ", true);
					string lexeme;
					for (int i = 0; i < word.Length; i++) {
						if (checkIdentifier (word [i]) && !(word [i].Equals ("while"))) {
							lexeme = word [i];
							word [i] = "id";
							Run_Parser (word [i].Trim (), lexeme);
							continue;
						}
						if (checkReloperator (word [i])) {
							lexeme = word [i];
							word [i] = "relop";
							Run_Parser (word [i].Trim (), lexeme);
							continue;
						}
						Run_Parser (word [i].Trim (), word [i].Trim ());
					}
				}
				Run_Parser ("$", "$");

			} catch (Exception e) {
				Console.WriteLine ("ERROR: " + e);
			}
		}

		public virtual bool checkIdentifier (string str)
		{
			bool res = false;
			if ((str [0] >= 'a' && str [0] <= 'z') || (str [0] >= 'A' && str [0] <= 'Z') || (str [0] == '_')) {
				res = true;
				for (int k = 0; k < str.Length; k++) {

					if ((str [k] >= '0' && str [k] <= '9') || (str [k] >= 'a' && str [k] <= 'z') || (str [k] >= 'A' && str [k] <= 'Z') || (str [k] == '_')) {
						res = true;
						continue;
					} else {
						res = false;
						break;
					}

				}
			}
			return res;
		}

		public virtual bool checkReloperator (string str)
		{
			bool res = false;
			for (int k = 0; k < relop1.Length; k++) {
				if (str.Equals (relop1 [k])) {
					res = true;
					break;
				}
			}
			return res;
		}

		public virtual void Run_Parser (string input, string lexeme)
		{
			string[] production = new string[] {
				"S->AS",
				"S->IS",
				"S->A",
				"S->I",
				"A->id=E;",
				"I->while(C){S}",
				"C->id relop id",
				"E->E+T",
				"E->E-T",
				"E->T",
				"T->T*F",
				"T->T/F",
				"T->F",
				"F->(E)",
				"F->id"
			};
			int[] prodcnt =
				new int[] { 2, 2, 1, 1, 4, 7, 3, 3, 3, 1, 3, 3, 1, 3, 1 };
			string[] sem_rule =
				new string[] { "n", "n", "n", "n", "=", "n", "r", "+", "-", "n", "*", "/", "n", "n", "n" };

			while (true) {
				string top = "" + stack.Peek ();
				
				string inp = input;
	
				Console.WriteLine ("Input -> "+inp);
				int rowno = 0, colno = 0;
				for (int row = 0; row <= 36; row++) {
					if (table [row] [0].Equals (top)) {
						rowno = row;
						break;
					}
				}
				for (int col = 0; col < 22; col++) {
					if (table [0] [col].Equals (inp)) {
						colno = col;
						break;
					}
				}
				string val = table [rowno] [colno];

				if (val.Equals ("0")) {
					break;
				}
				if (val.Equals ("ACCEPT")) {
					Console.WriteLine ("END OF INPUT FILE");
					break;
				}
				if (val [0] == 'S') {
					if (input.Equals ("id") || input.Equals ("relop")) {
						valstack.Push (lexeme);

					}
					string v = val.Substring (1, val.Length - 1);
					stack.Push (v);
					symstack.Push (input);

					return;
				}
				if (val [0] == 'R') {

					string v = val.Substring (1, val.Length - 1);
					int t = int.Parse (v) - 1;
					string prod = production [t];
					prod = prod.Substring (0, prod.IndexOf ("-", StringComparison.Ordinal));
					int pc = prodcnt [t];

					string sem = sem_rule [t];
					string var1 = null, var2 = null, var3 = null;
					switch (sem) {
					case "n":
						break;
					case "+":
						var2 = "" + valstack.Pop ();
						var1 = "" + valstack.Pop ();
						Console.WriteLine ("t" + (count++) + ":= " + var1 + " + " + var2 + "\n");
						valstack.Push ("t" + (count - 1));
						break;
					case "-":
						var2 = "" + valstack.Pop ();
						var1 = "" + valstack.Pop ();
							
						Console.WriteLine ("t" + (count++) + ":= " + var1 + " - " + var2 + "\n");
						valstack.Push ("t" + (count - 1));
						break;
					case "*":
						var2 = "" + valstack.Pop ();
						var1 = "" + valstack.Pop ();
							
						Console.WriteLine ("t" + (count++) + ":= " + var1 + " * " + var2 + "\n");
							
							
						valstack.Push ("t" + (count - 1));
						break;
					case "/":
						var2 = "" + valstack.Pop ();
						var1 = "" + valstack.Pop ();
							
						Console.WriteLine ("t" + (count++) + ":= " + var1 + " / " + var2 + "\n");
							
							
						valstack.Push ("t" + (count - 1));
						break;
					case "r":
						var3 = "" + valstack.Pop ();
						var2 = "" + valstack.Pop ();
						var1 = "" + valstack.Pop ();
							
						Console.WriteLine ("t" + (count++) + ":= " + var1 + var2 + var3 + "\n");
							
							
						valstack.Push ("t" + (count));
						break;
					case "=":
						var2 = "" + valstack.Pop ();
						var1 = "" + valstack.Pop ();
							
						Console.WriteLine ("t" + (count++) + ":= " + var1 + " = " + var2 + "\n");
							
							
						valstack.Push ("t" + (count - 1));
						break;

					}

					int d = 0;
					while (d < pc) {
						
						symstack.Pop ();
						stack.Pop ();
						d++;
					}
					symstack.Push (prod);

					for (int row = 1; row < 36; row++) {
						if (table [row] [0].Equals ("" + stack.Peek ())) {
							rowno = row;
							break;
						}
					}
					for (int col = 0; col < 22; col++) {
						if (table [0] [col].Equals (symstack.Peek ())) {
							colno = col;
							break;
						}
					}
					val = table [rowno] [colno];
					stack.Push (val);

				}
			}
		}

		public static void Main (string[] args)
		{
			Program pr = new Program ();
			pr.CreateParseTable ();
			pr.Run_lex ();
		}
	}
}