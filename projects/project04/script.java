Script started on Tue 01 Mar 2016 06:19:36 PM EST
mjd85@babbage:~/Documents/214/projects/project04$ cat factorial.java
/* factorial.java computes the factorial of an input
 *
 * Input: number (an integer)
 * PRE: input is positive
 * Output: factorial of the input number
 * Completed by: Mark Davis March 1, 2016
 * Model Code: CS214 lab04
 ********************************************************/
import java.util.Scanner; 		// Get input

class factorial {

	/***************************************************************
          factorial() computes factorial of a number
    	* Receive: number, an integer
   	* PRE: number is positive
    	* Return: factorial of the number
   	*/
	public static int factorial(Integer number) { //declare function
		int answer = 1; 		      //variable for computing factorial
		for (int i = 2; i <= number; i++) {    //loop for factorial
			answer *= i; 		      //compute answer
		}
		return answer;
	}
	
	//main function
	public static void main(String[] args) { 
		Scanner keyboard = new Scanner(System.in);//scan keyboard for input
		System.out.println("\nEnter a number: "); //prompt for input
		int number = keyboard.nextInt();          //read number
		System.out.println( number + "! = " + factorial(number));    //display factorial
	}
}


mjd85@babbage:~/Documents/214/projects/project04$ javac factorial.java
mjd85@babbage:~/Documents/214/projects/project04$ java factorial

Enter a number: 
4
4! = 24
mjd85@babbage:~/Documents/214/projects/project04$ java factorial

Enter a number: 
5
5! = 120
mjd85@babbage:~/Documents/214/projects/project04$ exit
exit

Script done on Tue 01 Mar 2016 06:20:10 PM EST
