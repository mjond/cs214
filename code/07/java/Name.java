/* Name.java implements class Name.
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: April 5, 2016
 */

import java.util.Scanner;
class Name
{

    private String myFirst, myMiddle, myLast;
 
    /**************************************************
     * Name constructs a name from three strings.      *
     * Receive: first, middle and last, three strings. *
     * Return: the triplet (first middle last).        *
     ***************************************************/
    
    public Name(String first, String middle, String last)
	{
	myFirst = first;
	myMiddle = middle;
	myLast = last;
	}
 
    /***************************************************
     * getFirst() extracts the first name of a Name object. *
     * Return: myFirst.                                *
     ***************************************************/
    
    public String getFirst()
	{
	return myFirst;
	}
    
    /*****************************************************
     * getMiddle() extracts the middle name of a Name object. *
     * Return: myMiddle.                                 *
     *****************************************************/
    
    public String getMiddle()
	{
	return myMiddle;
	}
    
    /**************************************************
     * getLast() extracts the last name of a Name object.  *
     * Return: myLast.                                *
     **************************************************/
    
    public String getLast()
	{
	return myLast;
	}
    
    /*****************************************************
     * getFullName() returns a full name in F-M-L order. *
     * Return: myFirst, myMiddle, myLast.                *
     *****************************************************/
    
    public String getFullName()
	{
	return myFirst + myMiddle + myLast;
	}
    
    
    /****************************************************
     * toString() displays a Name object.               *
     * Output: a String version of the name.            *
     ****************************************************/
    public String toString()
	{
	return myFirst + ' ' + myMiddle + ' ' + myLast;
	}


    /****************************************************
     * setFirst() changes the first name                *
     * parameter: aFirst, a string                      *
     ****************************************************/
    void setFirst(String aFirst) {
	myFirst = aFirst;
	}


    /****************************************************
     * setMiddle() changes the middle name              *
     * parameter: aFirst, a string                      *
     ****************************************************/
    void setMiddle(String aMiddle) {
	myMiddle = aMiddle;
	}


    /****************************************************
     * setLast() changes the last name                  *
     * parameter: aLast, a string                       *
     ****************************************************/
    void setLast(String aLast) {
	myLast = aLast;
	}

    /****************************************************
     * lfmi() returns myFirst, myLast and middle initial*
     * return name and initial                          *
     ****************************************************/
    public String lfmi() {
	char initial = myMiddle.charAt(0);
	return myLast + ", " + myFirst + " " + initial + ".";
	}

    /****************************************************
     * readName reads input from keyboard               *
     * parameter: --                                    *
     ****************************************************/
    void readName() {
	Scanner keyboard = new Scanner(System.in);
	//get first name
	System.out.println("Enter first name: ");
	String firstName = keyboard.nextLine();
	myFirst = firstName;

	//get middle name
	System.out.println("Enter middle name: ");
	String middleName = keyboard.nextLine();
	myMiddle = middleName;

	//get last name
	System.out.println("Enter last name: ");
	String lastName = keyboard.nextLine();
	myLast = lastName;	
	}
}
