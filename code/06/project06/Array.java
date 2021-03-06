/* array.java prompts for values and stores them in an array
 * By: Mark Davis
 * Date: March 29, 2016
 * Precondition: the values are numbers
 * Output: the array's values
 ***************************************************************/
import java.util.Scanner; //include class for Scanner

public class Array {
	public static void main(String[] args) {
		Array ar = new Array(); //create instance of class
		System.out.println("Enter the size of the array: " ); //prompt for user input
		Scanner keyboard = new Scanner(System.in); //scan keyboard for input
		int size = keyboard.nextInt(); //store input as array size
		double[] theArray = new double[size]; //declare array
		ar.readArray(theArray, size); //call read function
		ar.printArray(theArray, size); //call print function
		}
	
	/* readArray() prompts user for values and stores them in the array
   	* Receive: anArray, size of the array
   	* Precondition: inputs are doubles
   	************************************************************/
	void readArray(double theArray[], int size) {
		Scanner keyboard = new Scanner(System.in); // scan keyboard for input
		for (int i = 0; i < size; i++) { //loop to iterate through array
			System.out.println("Enter the value for element " + (i+1)); //prompt for input
			double value = keyboard.nextDouble(); // store input
			theArray[i] = value; //store input in array
		}
	}

	/* printArray() outputs all elements in array
   	* Receive: anArray, size of the array
   	* Precondition: parameters are doubles and ints
   	************************************************************/
	void printArray(double theArray[], int size) {
		for (int i = 0; i < size; i++) { //loop to iterate through array
			System.out.println("The values of the array are: " + theArray[i]); //output elements of array
		}
	}
}
