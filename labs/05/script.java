Script started on Wed 02 Mar 2016 09:22:03 AM EST
mjd85@knuth:~/Documents/214/labs/05$ cat Apl   Split.java
/* Split.java is a class and program that splits a string
 * into two substrings.
 * 
 * Begun by: Serita Nelesen
 * Completed by: 
 ***************************************************************/

import java.util.Scanner;

// java class Split
public class Split
{
  // main program
  public static void main(String[] args)
    {
      Scanner keyboard = new Scanner(System.in);
      // prompt for the string
      System.out.println("\nTo split a string, enter the string: ");
      String theString = keyboard.next();
      
      // prompt for splitting position
      System.out.println("\nEnter the split position: ");
      int position = keyboard.nextInt();

      //Create list, compute results and print
      String [] resultList = new String[2];
      splitter(theString, position, resultList);
      System.out.println("\nThe first part is " + resultList[0] + "\n and the second part is " + resultList[1]);
      
    }

  /* splitter() splits a string according to the position specified
   * Receive: 	theString - the string to be split
   * 		pos - the position at which to split
   *            resList - an array of strings in which to place results
   *****************************************************/

  public static void splitter(String theString, int pos, String[] results) //declare function
	{
	results[0] = theString.substring(0, pos); //getting first substring and store in results[0]
	results[1] = theString.substring(pos, theString.length()); //getting second substring and store in results[1]
	
	}
  



}
mjd85@knuth:~/Documents/214/labs/05$ javac Split.java
mjd85@knuth:~/Documents/214/labs/05$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
0

The first part is 
 and the second part is hello
mjd85@knuth:~/Documents/214/labs/05$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
3

The first part is hel
 and the second part is lo
mjd85@knuth:~/Documents/214/labs/05$ java Split

To split a string, enter the string: 
hello

Enter the split position: 
5

The first part is hello
 and the second part is 
mjd85@knuth:~/Documents/214/labs/05$ it works
it: command not found
mjd85@knuth:~/Documents/214/labs/05$ exit
exit

Script done on Wed 02 Mar 2016 09:22:50 AM EST
