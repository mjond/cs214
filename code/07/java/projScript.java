Script started on Tue 05 Apr 2016 08:39:09 PM EDT
mjd85@wirth:~/Documents/214/code/07/java$ cat NamerTest.java
/* A class to test the Name class
 * Created by: Dr. Nelesen
 *
 */

import org.junit.Test;
import static org.junit.Assert.*;


public class NamerTest  // a class used for JUnit testing...
{
    @Test
    public void testToString() {  //lmfi 
	Name theName = new Name("John", "Paul", "Jones");
	assertEquals(theName.toString(), "John Paul Jones");
    }
    
    @Test
    public void testGetFirst(){
	Name theName = new Name("Johnna", "Paulina", "Jones");
	assertEquals(theName.getFirst(), "Johnna");
    }

    @Test
    public void testGetMiddle(){
	Name theName = new Name("Johnna", "Grace", "Jones");
	assertEquals(theName.getMiddle(), "Grace");
    }

    @Test
    public void testGetLast(){
	Name theName = new Name("Johnna", "Paulina", "Jones");
	assertEquals(theName.getLast(), "Jones");
    }

   @Test
   public void testSetFirst() {
	Name theName = new Name("Johnna", "Paulina", "Jones");
	theName.setFirst("Mark");
	assertEquals(theName.getFirst(), "Mark");
	}	

   @Test
   public void testSetMiddle() {
	Name theName = new Name("Johnna", "Paulina", "Jones");
	theName.setMiddle("Mark");
	assertEquals(theName.getMiddle(), "Mark");
	}

   @Test
   public void testSetLast() {
	Name theName = new Name("Johnna", "Paulina", "Jones");
	theName.setLast("Mark");
	assertEquals(theName.getLast(), "Mark");
	}

   @Test
    public void testlfmi() {  //lmfi 
	Name theName = new Name("John", "Paul", "Jones");
	assertEquals(theName.lfmi(), "Jones, John P.");
    }	

   @Test
   public void testReadName() {
	Name theName = new Name(" ", " ", " ");
	theName.readName();
	//enter "Mark Jonathan Davis"
	assertEquals(theName.getFirst(), "Mark");
	assertEquals(theName.getMiddle(), "Jonathan");
	assertEquals(theName.getLast(), "Davis");
   }	
}

mjd85@wirth:~/Documents/214/code/07/java$ cat Name.java
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
mjd85@wirth:~/Documents/214/code/07/java$ cat Name.java[5@rTest.javaexit[Kruby namer.rb[1Pcat namer.rb[8Pexitjava -cp /usr/share/java/junit4-4.11.jar:. TestRunnermjd85@wirth:~/Documents/214/code/07/java$ javac -cp /usr/share/java/junit4-4.11.jar:. TestRunner.java
mjd85@wirth:~/Documents/214/code/07/java$ javac -cp /usr/share/java/junit4-4.11.jar:. TestRunner.javamjd85@wirth:~/Documents/214/code/07/java$ cat Name.java[K[5@rTest.javaexit[Kruby namer.rb[1Pcat namer.rb[8Pexitjava -cp /usr/share/java/junit4-4.11.jar:. TestRunner
John Paul Jones
Enter first name: 
Mark
Enter middle name: 
Jonathan
Enter last name: 
Davis
All tests passed!
mjd85@wirth:~/Documents/214/code/07/java$ exit    java -cp /usr/share/java/junit4-4.11.jar:. TestRunner
John Paul Jones
Enter first name: 
Mark
Enter middle name: 
Jon
Enter last name: 
Davis
testReadName(NamerTest): expected:<Jon[]> but was:<Jon[athan]>
At least one test failed
mjd85@wirth:~/Documents/214/code/07/java$ exit
exit

Script done on Tue 05 Apr 2016 08:39:57 PM EDT
