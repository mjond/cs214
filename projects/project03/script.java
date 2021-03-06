Script started on Tue 23 Feb 2016 09:24:15 AM EST
mjd85@hopper:~/Documents/214/projects/project03$ cat gar  rade_switch.java
/*grade_switch.java computes corresponding letter grade 

Input: number grade/percentage
Precondition: input is a positive number between 1-10
Output: corresponding letter grade to percentage

Created by: Mark Davis, CS 214, Calvin College
Date: February 25, 2016
Model Code: CS 214 lab03
*********************************/

import java.util.Scanner; //include class for Scanner

public class grade_switch{
	public static void main(String[] args) {
		Scanner keyboard = new Scanner(System.in); //scan keyboard for input
		System.out.println("\nEnter your average: "); //prompt for average
		
		int average = keyboard.nextInt(); //read average
		System.out.println(letterGrade(average)); //display its code
	}

    /***************************************************************
    * gradeCode() converts a number grade to letter grade. *
    * Receive: grade, an integer.
    * PRE: grade is integer (1-10).
    * Return: the corresponding letter grade (string).
    */
	public static char letterGrade(int average) {
		switch (average / 10) //get value for switching
		{
			case 10: case 9: //case 10 or 9
			  return 'A'; //return A
			case 8: //case 8
			  return 'B';
			case 7: //if value is of case 7
			  return 'C';
			case 6: //if value is case 6
			  return 'D';
			default: //anything lower than 60 is an F
			  return 'F';
		}
	}
}
mjd85@hopper:~/Documents/214/projects/project03$ javac sc  gar  rade_switch.java
mjd85@hopper:~/Documents/214/projects/project03$ java grade_switch

Enter your average: 
95
A
mjd85@hopper:~/Documents/214/projects/project03$ java grade_swtich    itch

Enter your average: 
85
B
mjd85@hopper:~/Documents/214/projects/project03$ java grade_switch

Enter your average: 
75
C
mjd85@hopper:~/Documents/214/projects/project03$ g java grade_switch

Enter your average: 
65
D
mjd85@hopper:~/Documents/214/projects/project03$ java grade_switch

Enter your average: 
55
F
mjd85@hopper:~/Documents/214/projects/project03$ java      exit
exit

Script done on Tue 23 Feb 2016 09:25:26 AM EST
