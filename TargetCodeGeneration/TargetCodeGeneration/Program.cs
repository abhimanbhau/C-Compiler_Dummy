using System;
using System.IO;
using System.Collections.Generic;
using System.Linq;
using System.Collections;

namespace TargetCodeGeneration
{
	class MainClass
	{
		static string[] registerContents = new string[3]{ "-1", "-1", "-1" };
		static Dictionary<string, int> usage = new Dictionary<string, int> ();
		static Dictionary <string, string> memory = new Dictionary<string, string> ();
		static Stack stack = new Stack ();
		static bool flag = true;

		public static void Main (string[] args)
		{
			var reader = new StreamReader ("input.txt");
			var codeList = new List<string> ();
			var temp = "";
			while ((temp = reader.ReadLine ()) != null) {
				Console.WriteLine (temp);
				codeList.Add (temp);
			}

			// Pre-Processing
			foreach (var code in codeList) {
				var sepList = new char[] {
					'=', '+', '-', '*', '/'
				};
				var splits = code.Split (sepList);
				foreach (var key in splits) {
					int value;
					if (!usage.TryGetValue (key, out value))
						usage.Add (key, 1);
					else
						usage [key] = value + 1;
				}
			}
			Console.Write ("\nUsageCount\n");

			usage.ToList ().ForEach (x => Console.WriteLine (x.Key + " - " + x.Value));

			Console.WriteLine ("\n\nTarget Code");

			Random random = new Random ();
			foreach (var codeLine in codeList) {
				if (codeLine.StartsWith ("//"))
					continue;
				if (codeLine.Replace (" ", "").Trim ().Length == 3) {
					var result = codeLine.Substring (0, 1);
					var val = 0;
					usage.TryGetValue (result, out val);
					if (val > 1) {
						memory.Add (result, random.Next (1, 10) + "");
					}
					var operand = codeLine.Substring (codeLine.IndexOf ("=") + 1, 1);
					int regNumberResult = GetRegister (operand);
					//int getRegNumber = GetRegister (result);
					Console.WriteLine (String.Format ("LD R{0}, {1}", regNumberResult, operand));
					Console.WriteLine (String.Format ("ST {0}, R{1}", result, regNumberResult));
				} else if (codeLine.Contains ("+")) {
					var operand1 = codeLine.Substring (2, 1);
					int regNumber1 = GetRegister (operand1);
					if (flag)
						Console.WriteLine (String.Format ("LD R{0}, {1}", regNumber1, operand1));
					var operand2 = codeLine.Substring (4, 1);
					int regNumber2 = GetRegister (operand2);
					if (flag)
						Console.WriteLine (String.Format ("LD R{0}, {1}", regNumber2, operand2));
					var result = codeLine.Substring (0, 1);
					int regNumberResult = GetRegister (result);


					Console.WriteLine (String.Format ("ADD R{0}, R{1}, R{2}", 
						regNumberResult, regNumber1, regNumber2));
				} else if (codeLine.Contains ("-")) {
					var operand1 = codeLine.Substring (2, 1);
					int regNumber1 = GetRegister (operand1);
					if (flag)
						Console.WriteLine (String.Format ("LD R{0}, {1}", regNumber1, operand1));
					var operand2 = codeLine.Substring (4, 1);
					int regNumber2 = GetRegister (operand2);
					if (flag)
						Console.WriteLine (String.Format ("LD R{0}, {1}", regNumber2, operand2));
					var result = codeLine.Substring (0, 1);
					int regNumberResult = GetRegister (result);

					Console.WriteLine (String.Format ("SUB R{0}, R{1}, R{2}", 
						regNumberResult, regNumber1, regNumber2));
				} else if (codeLine.Contains ("*")) {
					var operand1 = codeLine.Substring (2, 1);
					int regNumber1 = GetRegister (operand1);
					var operand2 = codeLine.Substring (4, 1);
					int regNumber2 = GetRegister (operand2);
					var result = codeLine.Substring (0, 1);
					int regNumberResult = GetRegister (result);

					if (flag)
						Console.WriteLine (String.Format ("LD R{0}, {1}", regNumber1, operand1));
					if (flag)
						Console.WriteLine (String.Format ("LD R{0}, {1}", regNumber2, operand2));

					Console.WriteLine (String.Format ("MUL R{0}, R{1}, R{2}", 
						regNumberResult, regNumber1, regNumber2));
				} else if (codeLine.Contains ("/")) {
					var operand1 = codeLine.Substring (2, 1);
					int regNumber1 = GetRegister (operand1);
					var operand2 = codeLine.Substring (4, 1);
					int regNumber2 = GetRegister (operand2);
					var result = codeLine.Substring (0, 1);
					int regNumberResult = GetRegister (result);

					if (flag)
						Console.WriteLine (String.Format ("LD R{0}, {1}", regNumber1, operand1));
					if (flag)
						Console.WriteLine (String.Format ("LD R{0}, {1}", regNumber2, operand2));

					Console.WriteLine (String.Format ("DIV R{0}, R{1}, R{2}", 
						regNumberResult, regNumber1, regNumber2));
				}
			}

		}

		public static void UpdateRegisterUsageCount (int regNumber, string operand)
		{
			
		}

		public static int GetRegister (string operand)
		{
			for (int i = 0; i < 3; ++i) {
				if (registerContents [i] == operand) {
					stack.Push (i);
					flag = false;
					return i;
				}
			}
			flag = true;
			for (int i = 0; i < 3; ++i) {
				if (registerContents [i] == "-1") {
					registerContents [i] = operand;
					stack.Push (i);
					return i;
				}
			}
			// dumb logic
			var val1 = registerContents [0];
			var val2 = registerContents [1];
			var val3 = registerContents [2];
			int use1, use2, use3;
			usage.TryGetValue (val1, out use1);
			usage.TryGetValue (val2, out use2);
			usage.TryGetValue (val3, out use3);
			if (use1 < use2 && use1 < use3) {
				registerContents [0] = operand;
				return 0;
			}
			if (use2 < use1 && use2 < use3) {
				registerContents [1] = operand;
				return 1;
			} else {
				registerContents [2] = operand;
				return 2;
			}
			return -1;
		}
	}
}