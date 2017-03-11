/* TestRunner.java tests Temperature.java and outputs a chart
 * Created by: Mark Davis
 * Date: April 12, 2016
 ************************************************************/

import java.util.Scanner;

public class TestRunner {

public static void main(String[] args) {
	Scanner keyboard = new Scanner(System.in);	

	//get base temperature
	System.out.println("Enter values for base temperature");
	Temperature baseTemp = new Temperature('F', 30);
	baseTemp.readTemp();
	
	//get limit temperature
	System.out.println("Enter values for limit temperature");
	Temperature limitTemp = new Temperature('F', 30);
	limitTemp.readTemp();

	//get step value
	System.out.println("Enter step value: ");
	double stepValue = keyboard.nextDouble();

	while( baseTemp.lessThan(limitTemp) ) {
		
		System.out.print(baseTemp.printTemp() + " ");
		baseTemp.getCelsius();
		System.out.print(baseTemp.printTemp() + " ");
		baseTemp.getKelvin();
		System.out.print(baseTemp.printTemp() + "\n");
		baseTemp.getFahrenheit();
		baseTemp.raise(stepValue);
	}    
}
}

