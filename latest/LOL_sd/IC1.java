import java.io.BufferedReader;
import java.io.FileReader;
import java.io.IOException;
import java.util.Arrays;
import java.util.Stack;
import java.util.StringTokenizer;
import java.io.BufferedReader;
import java.io.FileNotFoundException;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.*;

public class IC1 {
	String[] keywords = { "auto", "break", "case", "char", "const", "continue",
			"default", "do", "double", "else", "enum", "extern", "float",
			"for", "goto", "if", "int", "include", "long", "main", "register",
			"return", "short", "signed", "sizeof", "static", "struct",
			"switch", "typedef", "union", "unsigned", "void", "volatile",
			"while" };
	String[] ariOp = { "+", "-", "*", "/" };
	String[] relOp = { "!", ">", "==", "<", "!=", "<=", ">=" };

	FileReader fr = null;
	BufferedReader br = null;

	FileReader fr1;
	BufferedReader br1;

	static String value = null;
	int j = 0, length = 0, k = 0, l = 0, stacktop = 0, index = 0;
	String parTable[][] = new String[36][22];

	String productions[] = { "", "S -> A S", "S -> I S", "S -> A", "S -> I",
			"A -> id = E ;", "I -> while ( C ) { S }", "C -> id relop id",
			"E -> E + T", "E -> E - T", "E -> T", "T -> T * F", "T -> T / F",
			"T -> F", "F -> ( E )", "F -> id" };
	String[] ic_reduce = { "na", "na", "na", "na", "na", "=", "na", "r", "+",
			"-", "na", "*", "/", "na", "na", "na" };
	String terNonter[] = { "id", ";", "=", "{", "}", "(", ")", "relop",
			"while", "+", "-", "*", "/", "$", "S", "A", "I", "C", "E", "T", "F" };

	static int readOneLine = 0;
	int goInLoop = 0, readLastChar = 0,cunt=0;
	Stack st = new Stack();
	Stack symbol = new Stack();
	static Stack inputString = new Stack();
	static Stack valueStack = new Stack();

	public static void main(String[] args) throws IOException {

		String str = null, strng = null, str1 = null, line = null, line1 = null, splitLine[] = null;
		int j = 0, k = 0;

		IC1 sy = new IC1();

		// reading input file
		FileReader fr = new FileReader("Input1.txt");
		BufferedReader br = new BufferedReader(fr);
		FileReader fr2 = new FileReader("Input1.txt");
		BufferedReader br2 = new BufferedReader(fr2);

		// reading parsing table
		FileReader fr1 = new FileReader("Parse.csv");
		BufferedReader br1 = new BufferedReader(fr1);
		line = br1.readLine();
		// loading parse table in an array
		j = 0;
		while ((line = br1.readLine()) != null) {
			splitLine = line.split(",");
			k = 0;
			for (int i = 1; i < splitLine.length; i++) {
				sy.parTable[j][k] = splitLine[i];
				k++;
			}
			j++;
		}

		for (int g = 0; g < sy.parTable.length; g++) {
			//System.out.print(g + "\t");
			for (int h = 0; h < splitLine.length; h++) {
			//	System.out.print(sy.parTable[g][h] + "\t");
			}
			//System.out.println();
		}
		System.out.println("\nCode Gen\n");
		sy.st.push("0");
		inputString.push("$");
		sy.value = "started";

//		System.out.print("\n\nStack\tSymbol\tInput String\tAction\n");
//		System.out.print(Arrays.toString(sy.st.toArray()) + "\t");
//		System.out.print(Arrays.toString(sy.symbol.toArray()) + "\t");
//		System.out.print(Arrays.toString(inputString.toArray()) + "\t");

		// execute token wise
		strng = br2.readLine();
		// str = br.readLine();
		while ((str = br.readLine()) != null) {
				if ((br2.readLine() == null)) {
				readOneLine = 1;
			}
			String token = sy.lex(str);
		}
		if (value.equals("ACCEPT")) {
			System.out.println("STRING ACCEPTED");
		} else {
			System.out.println("STRING REJECTED");
		}
	}

	public String lex(String str) throws IOException {
//		System.out.println("in lex function");
		String str1 = null, array[];
		if (str.trim().length() > 0) {
			// remove extra spaces
			StringTokenizer st = new StringTokenizer(str, " ");
			StringBuffer sb = new StringBuffer();
			while (st.hasMoreElements()) {
				sb.append(st.nextElement()).append(" ");
			}
			str = sb.toString().trim();
			// remove tabs or new line
			str = str.replaceAll("\t", "");
			str1 = str.replaceAll("\n", "");

			// check for single line comment
			if (str1.contains("//")) {
//				System.out.println("\n" + str1);
//				System.out.println("\nSingle line comment");
				int ind = str1.indexOf("//");
				str1 = str1.substring(0, ind);
//				System.out.println("New String " + str1);
			}

			// check for multiple line comment
			if (str1.contains("/*")) {
//				System.out.println("\nMultiple line comment");
//				System.out.println(str1);
				str1 = str1.substring(str1.indexOf("/*"), str1.length());
				while (!str1.contains("*/")) {

					str1 = br.readLine();
//					System.out.println(str1);
					str1.replaceAll(str1, "");
				}
				int a = str1.indexOf("*/");
				str1 = str1.substring(a + 2, str1.length());
			}

			// split with spaces
			array = str1.split(" ");
//			System.out.println("\n" + str1 + "\n");
			// readOneLine=0;
			for (int i = 0; i < array.length; i++) {
				if ((i == (array.length - 1)) && (readOneLine == 1)) {
					readLastChar = 1;
				}
				if (checkKeyword(array[i])) {
//					System.out.println("Keyword : " + array[i]);
					syntax(array[i], array[i]);
				} else if (checkAriOperator(array[i])) {
//					System.out.println("Arithmatic operator : " + array[i]);
					syntax(array[i], array[i]);
				} else if (checkRelOp(array[i])) {
//					System.out.println("Relational operator : " + array[i]);
					syntax("relop", array[i]);
				} else if (array[i].equals("=")) {
//					System.out.println("Assignment Operator : " + array[i]);
					syntax(array[i], array[i]);
				} else if ((array[i].equals("{")) || (array[i].equals("}"))
						|| (array[i].equals("(")) || (array[i].equals(")"))) {
//					System.out.println("Brackets : " + array[i]);
					syntax(array[i], array[i]);
				} else if ((array[i].equals("||")) || (array[i].equals("&&"))) {
//					System.out.println("Logical Operators : " + array[i]);
					syntax(array[i], array[i]);
				} else if ((array[i].equals(";")) || (array[i].equals(","))) {
//					System.out.println("Delimitor : " + array[i]);
					syntax(array[i], array[i]);
				} else if (!Character.isDigit(array[i].charAt(0))) {
//					System.out.println("Identifier : " + array[i]);
					syntax("id", array[i]);
				} else if (checkNumber(array[i])) {
//					System.out.println("Integer Number : " + array[i]);
					syntax(array[i], array[i]);
				} else if (checkNumber1(array[i])) {
//					System.out.println("Float Number : " + array[i]);
					syntax(array[i], array[i]);
				} else {
//					System.out.println("Invalid identifier!!!!! : " + array[i]);
				}
			}
//			System.out.println("Read one line  and readOneLine = "
//					+ readOneLine);
			readOneLine = 1;
		}
		return (null);
	}

	public void syntax(String token, String token1) {
		String value1=null,value2=null,value3=null;
		inputString.push(token);
		System.out.print(Arrays.toString(inputString.toArray()));
		int i = 0;
		while (((!inputString.peek().equals("$")) || (goInLoop == 1) || (readLastChar == 1)
				&& (!((value.equals("ACCEPT")) || (value.equals("null")))))
				&& i < 100) {
			String input = (String) inputString.peek();
			for (k = 0; k < terNonter.length; k++) {
				if (input.equals(terNonter[k])) {
					index = k;
					break;
				}
			}

			String top = (String) st.peek();
			stacktop = Integer.parseInt(top);

			// get value from table
			value = parTable[stacktop][index];
			// System.out.println(" value is    " + value + "  stacktop  " +
			// stacktop
			// + "  input is " + input);

			if (!((value.equals("ACCEPT")) || (value.equals("null")))) {
				if (value.startsWith("S")) {
//					System.out.print("\nShift operation -> read " + value);
					// System.out.println("\n");
					if (value.length() == 2)
						value = value.substring(1, 2);
					else
						value = value.substring(1, 3);

					st.push(value);
					symbol.push(input);
					inputString.pop();
					if (token == "id" || token == "relop") {
						valueStack.push(token1);
					}

				} else if (value.startsWith("R")) {
					// System.out.print("Reduce operation -> read " + value);

					if (value.length() == 2)
						value = value.substring(1, 2);
					else
						value = value.substring(1, 3);

					int num = Integer.parseInt(value);

					String reductn = ic_reduce[num];
					
					System.out.println(Arrays.toString(valueStack.toArray()) + "\t");
					switch (reductn) {
					case "na":
						break;
					case "+":
								value2 = "" + valueStack.pop();
								value1 = "" + valueStack.pop();
								
								System.out.println("\nt" + (cunt++) + "= " + value1+ " + " + value2 + "\n");
								valueStack.push("t" + (cunt - 1));
								System.out.print(Arrays.toString(valueStack.toArray()) + "\t");
								break;
					case "-":
						value2 = "" + valueStack.pop();
						value1 = "" + valueStack.pop();
						System.out.println("\nt" + (cunt++) + "= " + value1+ " - " + value2 + "\n");
						valueStack.push("t" + (cunt - 1));
						System.out.print( Arrays.toString(valueStack.toArray()) + "\t");
						break;
					case "*":
						value2 = "" + valueStack.pop();
						value1 = "" + valueStack.pop();
						System.out.println("\nt" + (cunt++) + "= " + value1+ " * " + value2 + "\n");
						valueStack.push("t" + (cunt - 1));
						System.out.print(Arrays.toString(valueStack.toArray()) + "\t");
						break;
					case "/":
						value2 = "" + valueStack.pop();
						value1 = "" + valueStack.pop();
						System.out.println("\nt" + (cunt++) + "= " + value1+ " / " + value2 + "\n");
						valueStack.push("t" + (cunt - 1));
						System.out.print(Arrays.toString(valueStack.toArray()) + "\t");
						break;
					case "=":
						value2 = "" + valueStack.pop();
						value1 = "" + valueStack.pop();
						System.out.println("\n"+value1+ " = " + value2 + "\n");
						//valueStack.push("t" + (cunt - 1));
						System.out.print(Arrays.toString(valueStack.toArray()) + "\t");
						valueStack.empty();
						break;
					case "relop":
						value3 = "" + valueStack.pop();
						value2 = "" + valueStack.pop();
						value1 = "" + valueStack.pop();
						System.out.println("\nt" + (cunt++) + "= " + value1 + value2 + value3 + "\n");
                        valueStack.push("t"+(cunt));       
                        System.out.print(Arrays.toString(valueStack.toArray()) + "\t");
                        break;
					}

					String prod = productions[num];
					String rhs = prod.substring(5, prod.length());
					String[] rhsArr = rhs.split(" ");
					prod = prod.substring(0, 1);
					// System.out
					// .println("  " + symbol.peek() + " reduced to " + prod);
					// System.out.println("\n");
					for (int o = 0; o < rhsArr.length; o++) {
//						System.out.println(rhsArr[o]);
						st.pop();
					}
					symbol.pop();
					symbol.push(prod);

					// checking after reduce and non terminal
					// String symtop = (String) symbol.peek();
					for (k = 0; k < terNonter.length; k++) {
						if (prod.equals(terNonter[k])) {
							index = k;
							break;
						}
					}
					top = (String) st.peek();
					stacktop = Integer.parseInt(top);
					value = parTable[stacktop][index];
					st.push(value);
					// System.out.println("\n\nafter reduce\n");
					// System.out.println("stck : "+stacktop);
					// System.out.println("input : "+ input);
					// System.out.println("symbol : "+symbol.peek()
					// +"uska index "+index);
					// System.out.println("value[stack][input]  "+value
					// +"  that is pushed to stack");
				} else {
					st.push(value);
					symbol.push(input);
					inputString.pop();
				}

//				System.out.print("\n\n" + Arrays.toString(st.toArray()) + "\t");
//				System.out.print(Arrays.toString(symbol.toArray()) + "\t");
//				System.out.print(Arrays.toString(inputString.toArray()) + "\t");
//				System.out.println("\n");
			}
			if ((inputString.peek().equals("$")) && (readOneLine == 1)) {
				goInLoop = 1;
			}
			i++;

		}

	}

	public boolean checkNumber(String str) {
		try {
			int e = Integer.parseInt(str);

		} catch (NumberFormatException e) {
			return false;
		}
		return true;
	}

	public boolean checkNumber1(String str) {
		try {
			float w = Float.parseFloat(str);
		} catch (NumberFormatException e) {
			return false;

		}
		return true;
	}

	public boolean checkKeyword(String str) {
		boolean res = false;
		for (int k = 0; k < keywords.length; k++) {
			if (str.equals(keywords[k])) {
				res = true;
				break;
			}
		}
		return res;
	}

	public boolean checkAriOperator(String str) {
		boolean res = false;
		for (int k = 0; k < ariOp.length; k++) {
			if (str.equals(ariOp[k])) {
				res = true;
				break;
			}
		}
		return res;
	}

	public boolean checkRelOp(String str) {
		boolean res = false;
		for (int k = 0; k < relOp.length; k++) {
			if (str.equals(relOp[k])) {
				res = true;
				break;
			}
		}
		return res;
	}

}
