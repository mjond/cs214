/* Average.java is a driver for method avg().
 * Started By: Dr. Nelesen
 * Completed By: Mark Davis
 * Date: March 23, 2016
 * Precondition: theArray, is an array of double values.
 * Output: the average of the numbers in theArray.
 ***************************************************************/

public class Average
{
  public static void main(String[] args)
    {
      double[] theArray = {6.0, 7.0, 8.0, 9.0};
 
      // output the average of the values in theArray
      System.out.println("The average is " + avg(theArray));
    }
  

  /* sum() is a method that computes the sum of all the values
   * in an array of doubles.
   * Receive: anArray, an array of doubles.
   * Return: the sum of the values in anArray.
   ************************************************************/
   public static double sum(double[] theArray) {
	double total = 0;
	for (int i = 0; i < theArray.length; i++) {
		total += theArray[i];		
		}
	return total;
  	}

  /* avg() is a method that computes the average of the values
   * in an array.
   * Receive: anArray, an array of doubles.
   * Return: the average of the values in anArray.
   ************************************************************/
   public static double avg(double[] anArray) {
	if (anArray.length <= 0) {
		return 0.0; }
	else {
		return sum(anArray) / anArray.length;
	}
   }
  
}
