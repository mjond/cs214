Script started on Mon 07 Mar 2016 07:34:42 PM EST
mjd85@aiken:~/Documents/214/projects/project05$ cat quad.java
/* quad.java the roots of the quadratic equation
 *
 * Input: a b c (double)
 * PRE: input is positive
 * Output: roots of given inputs
 * Completed by: Mark Davis March 7, 2016
 * Model Code: lab05 CS 214
 ********************************************************/
import java.util.Scanner; 
import java.math.*;

class quad {

	/***************************************************************
          quad() computes roots
    	* Receive: a b c (doubles)
   	* PRE: numbers are positive
    	* Return: root 1 and root 2
   	*/
	public static boolean quad(double a, double b, double c, double[] results) { //declare function
	  if (a != 0) {
		double answer = Math.pow(b, 2.0) - 4 * a * c; //compute answer
		if (answer >= 0) { //if bigger than 0
			results[0] = (-b + Math.sqrt(answer))/(2*a); //compute first root
			results[1] = (-b - Math.sqrt(answer))/(2*a); //compute second root
			return true;
		} else {
			System.err.println("\n*** quad(): b^2 - 4ac is negative!"); //else output error message
			results[0] = results[1] = 0; //set roots to 0
			return false;
		}
	  }
	  else {
		System.err.println("\n*** quad(): a is zero!"); //else output error message
		results[0] = results[1] = 0; //set roots to 0
		return false;	
	  }
	}

	public static void main(String[] args) {
		Scanner keyboard = new Scanner(System.in); //scan keyboard for input
		System.out.println("\nEnter a b and c: "); //prompt for input
		double a, b, c; //declare variables for a, b and c
		a = keyboard.nextDouble(); //store keyboard inputs
		b = keyboard.nextDouble();
		c = keyboard.nextDouble();
		double [] results = new double[2]; //make array for storing results
		quad(a, b, c, results); //call quad to compute roots
		System.out.println("\n Roots are: " + results[0] + results[1]); //display roots		
		
	}
}
mjd85@aiken:~/Documents/214/projects/project05$ jaa vac quad.java
mjd85@aiken:~/Documents/214/projects/project05$ java quad

Enter a b and c: 
1 2 3

*** quad(): b^2 - 4ac is negative!

 Roots are: 0.00.0
mjd85@aiken:~/Documents/214/projects/project05$ java quad

Enter a b and c: 
3 4 5

*** quad(): b^2 - 4ac is negative!

 Roots are: 0.00.0
mjd85@aiken:~/Documents/214/projects/project05$ java quad

Enter a b and c: 
1 4 1

 Roots are: -0.2679491924311228-3.732050807568877
mjd85@aiken:~/Documents/214/projects/project05$ exit
exit

Script done on Mon 07 Mar 2016 07:35:20 PM EST
