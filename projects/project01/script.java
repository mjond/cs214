Script started on Wed 10 Feb 2016 11:03:05 AM EST
mjd85@sutherland:~/Documents/214/projects/project01$ java    cat java    rectangle_area.java
/*rectangle_area.java computes are of a rectangle

Input: The Length of a rectangle
       The Width of a rectangle
Precondition: both inputs are positive numbers
Output: The are of a rectangle

Created by: Mark Davis, CS 214, Calvin College
Date: February 9, 2016
Model Code: CS 214 Lab01
*********************************/

import java.util.Scanner; //include class for Scanner

public class rectangle_area
{
	/* function circleArea() computes a rectangle's area
	parameter: l, w, a double
	precondition: l and w are positive
	returns: area of rectangle
	*/	

	//main program
	public static void main(String[] args) 
	{

	//create a connection named keyboard to standard in
	Scanner keyboard = new Scanner(System.in);

	//prompt for length
	System.out.println("To compute the area, enter its LENGTH: ");	

	//get the number from the user
	double length = keyboard.nextDouble();

	//prompt for width
	System.out.println("Now enter its WIDTH: ");

	//get the number from the user
	double width = keyboard.nextDouble();

	//calculate the area
	double area = length * width;

	//output area
	System.out.println("The area is " + area);
	}
}











mjd85@sutherland:~/Documents/214/projects/project01$ javac rectangle_area.java
mjd85@sutherland:~/Documents/214/projects/project01$ java rectangle_area
To compute the area, enter its LENGTH: 
2
Now enter its WIDTH: 
2
The area is 4.0
mjd85@sutherland:~/Documents/214/projects/project01$ exit
exit

Script done on Wed 10 Feb 2016 11:03:32 AM EST
