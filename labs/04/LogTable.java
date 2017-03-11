/* LogTable.java displays a table of logarithms.
 *
 * Input: start, stop and increment, three doubles.
 * PRE: start < stop && increment > 0.
 * Output: A table of logarithms from start to stop,
 *         with increment as the step value.
 * Begun by: Nelesen, for CS 214 at Calvin College.
 * Completed by: Mark Davis February 25, 2016
 ********************************************************/
import java.util.Scanner; 		// Get input


class LogTable{

  public static void main(String[] args){
    Scanner keyboard = new Scanner(System.in);//read in values
    System.out.println("To display a table of logarithms,");
    System.out.println("enter the start, stop and increment values: ");//prompt for values
    double start, stop, increment; //declare variables for values
    //store variables
    start = keyboard.nextDouble(); 
    stop = keyboard.nextDouble();
    increment = keyboard.nextDouble();
    
    for (double i = start; i <= stop; i = i + increment){ //loop to output logarithms
      System.out.println("Logarithm of " + i + " is " + Math.log10(i)); // output message
    }
    
  }
}

