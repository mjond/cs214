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











