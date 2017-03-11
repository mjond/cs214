Script started on Thu 04 Feb 2016 09:07:20 AM EST
mjd85@hollerith:~/Documents/214/Labs/01$ cat circle_are. aj j .java
cat: circle_area.java: No such file or directory
mjd85@hollerith:~/Documents/214/Labs/01$ cat circle_area.java
cat: circle_area.java: No such file or directory
mjd85@hollerith:~/Documents/214/Labs/01$ cat Circle_Area.java
cat: Circle_Area.java: No such file or directory
mjd85@hollerith:~/Documents/214/Labs/01$ ls
CircleArea.java  script.java
mjd85@hollerith:~/Documents/214/Labs/01$ cat CircleArea.java
mjd85@hollerith:~/Documents/214/Labs/01$ cat CircleArea.java
/* CircleArea.java computes the area of a circle.
 *
 * Input: The radius of the circle.
 * Precondition: The radius is a positive number.
 * Output: The area of the circle.
 *
 * Begun by: Dr. Nelesen, for CS 214, at Calvin College.
 * Completed by:
 * Date:
 **********************************************************/


import java.util.Scanner;  // include class for Scanner

public class CircleArea
{
	/* function circleArea() computes a circle's area, given its radius.
	 * Parameter: r, a double
	 * Precondition: r is not negative.
	 * Returns: the area of the circle
	 */
	public static double circleArea(double r) {
	  return Math.PI * r * r;               // return an expression
	}
	
  // main program
  public static void main(String[] args)
    {
      // prompt for radius
      System.out.println("To compute the area of a circle, enter its radius: ");
     
      // Create a connection named keyboard to standard in
      Scanner keyboard = new Scanner(System.in); 
  
      //Get the number from the user
      double radius = keyboard.nextDouble();
      
      // output area
      System.out.println("The area is " + circleArea(radius)); 
    }
}mjd85@hollerith:~/Documents/214/Labs/01$ javac circle      CircleArea.java
mjd85@hollerith:~/Documents/214/Labs/01$ java CircleArea.  1
To compute the area of a circle, enter its radius: 
1
The area is 3.141592653589793
mjd85@hollerith:~/Documents/214/Labs/01$ java CircleARea   rea
To compute the area of a circle, enter its radius: 
2
The area is 12.566370614359172
mjd85@hollerith:~/Documents/214/Labs/01$ J java CircleArea
To compute the area of a circle, enter its radius: 
2.5
The area is 19.634954084936208
mjd85@hollerith:~/Documents/214/Labs/01$ java CircleArea
To compute the area of a circle, enter its radius: 
4.99999
The area is 78.53950218079365
mjd85@hollerith:~/Documents/214/Labs/01$ exit
exit

Script done on Thu 04 Feb 2016 09:10:47 AM EST
