Script started on Tue 01 Mar 2016 02:03:21 PM EST
mjd85@stroustrup:~/Documents/214/labs/04$ cat sc  log_table.java              LogTable.java
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

mjd85@stroustrup:~/Documents/214/labs/04$ javac LogTable.java
mjd85@stroustrup:~/Documents/214/labs/04$ java Lot gTable
To display a table of logarithms,
enter the start, stop and increment values: 
1 10 0.5
Logarithm of 1.0 is 0.0
Logarithm of 1.5 is 0.17609125905568124
Logarithm of 2.0 is 0.3010299956639812
Logarithm of 2.5 is 0.3979400086720376
Logarithm of 3.0 is 0.47712125471966244
Logarithm of 3.5 is 0.5440680443502757
Logarithm of 4.0 is 0.6020599913279624
Logarithm of 4.5 is 0.6532125137753437
Logarithm of 5.0 is 0.6989700043360189
Logarithm of 5.5 is 0.7403626894942439
Logarithm of 6.0 is 0.7781512503836436
Logarithm of 6.5 is 0.8129133566428556
Logarithm of 7.0 is 0.8450980400142568
Logarithm of 7.5 is 0.8750612633917001
Logarithm of 8.0 is 0.9030899869919435
Logarithm of 8.5 is 0.9294189257142927
Logarithm of 9.0 is 0.9542425094393249
Logarithm of 9.5 is 0.9777236052888477
Logarithm of 10.0 is 1.0
mjd85@stroustrup:~/Documents/214/labs/04$ exit
exit

Script done on Tue 01 Mar 2016 02:04:10 PM EST
