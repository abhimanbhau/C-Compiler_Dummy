﻿//----------------------------------------------------------------------------------------
//	Copyright © 2007 - 2014 Tangible Software Solutions Inc.
//	This class can be used by anyone provided that the copyright notice remains intact.
//
//	This class provides the logic to simulate Java rectangular arrays, which are jagged
//	arrays with inner arrays of the same length. A size of -1 indicates unknown length.
//----------------------------------------------------------------------------------------
internal static partial class RectangularArrays
{
    internal static string[][] ReturnRectangularStringArray(int size1, int size2)
    {
        string[][] newArray;
        if (size1 > -1)
        {
            newArray = new string[size1][];
            if (size2 > -1)
            {
                for (int array1 = 0; array1 < size1; array1++)
                {
                    newArray[array1] = new string[size2];
                }
            }
        }
        else
            newArray = null;

        return newArray;
    }
}