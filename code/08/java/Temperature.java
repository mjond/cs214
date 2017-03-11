/* temperature.java implements class temperature.
 *
 * Completed by: Mark Davis
 * Date: April 12, 2016
 */

import java.util.Scanner;
class Temperature
{

    private double myDegree;
    private char myScale; 

    /**************************************************
     * Temperature constructs a temperature from and int and string*
     * Receive: degrees and scale. *
     * Return: the double (myDegree, myScale).        *
     ***************************************************/  
    public Temperature(char scale, double degrees)
	{
	if ( isValid(scale, degrees)) {
		myDegree = degrees;
		myScale = scale;	
		}
	}

    /**************************************************
     * isValid returns if a temperature is valid or not
     * Receive: degrees and scale.                    *
     * Return: true or false                          *
     ***************************************************/
    private boolean isValid(char scale, double degrees) {
	boolean result = true;
	if(scale == 'K' || scale == 'k' && degrees < 0.0){
		result = false;
	}
	else if(scale == 'C' || scale == 'c' && degrees < -237.0) {
		result = false;
	}
	else if(scale == 'F' || scale == 'f' && degrees < -459.0) {
		result = false;
	}
	else {
		result = true;
 	}
	return result;
	}

    /***************************************************
     * getDegrees() extracts the degrees of the temperature*
     * Return: myDegree                                *
     ***************************************************/
    public double getDegree() 
	{
	return myDegree;
	}

    /***************************************************
     * getScale() extracts the scale of the temperature*
     * Return: myScale.                                *
     ***************************************************/
    public char getScale()
	{
	return myScale;
	}

    /***************************************************
     * getFahrenheit() returns temperature in fahrenheit*
     * Return: myDegree.                                *
     ***************************************************/
    public void getFahrenheit()
	{
	if(myScale == 'C' || myScale == 'c') {
		myDegree = myDegree * (9f/5) + 32.0;
		myScale = 'F'; }
	if(myScale == 'K' || myScale == 'k') {
		myDegree = myDegree * (9f/5) - 459.67;
		myScale = 'F'; }
	}

    /***************************************************
     * getCelsius() returns temperature in Celsius     *
     * Return: myDegree.                               *
     ***************************************************/
    public void getCelsius()
	{
	if(myScale == 'F' || myScale == 'f') {
		myDegree = (myDegree - 32.0) * (5f/9);
		myScale = 'C'; }
	if(myScale == 'K' || myScale == 'k') {
		myDegree = myDegree - 273.15;
		myScale = 'C'; }
	}

    /***************************************************
     * getKelvin() returns temperature in Kelvin       *
     * Return: myDegree.                               *
     ***************************************************/
    public void getKelvin()
	{
	if(myScale == 'F' || myScale == 'f') {
		myDegree = (myDegree + 459.67) * (5f/9);
		myScale = 'K'; }
	if(myScale == 'C' || myScale == 'c') {
		myDegree = myDegree + 273.15;
		myScale = 'K'; }
	}

    /***************************************************
     * raise() raises a temperature                    *
     * POST: new temperature is set                    *
     ***************************************************/
    void raise(double addition) {
	myDegree = myDegree + addition;
	}

    /***************************************************
     * lower() lowers a temperature                    *
     * POST: new temperature is set                    *
     ***************************************************/
    void lower(double myDegrees, double subtraction) {
		myDegree = myDegree - subtraction;
	}

	
    /***************************************************
     * equals() compares two temperatures              *
     * Return: true if equal, false if not equal       *
     ***************************************************/
    public boolean equals(Temperature deg2) {
	boolean result = false;
	if(myScale == deg2.getScale()) {
		if (myDegree == deg2.getDegree()) {
			result = true;
		}
	}
	else {
		if (myScale == 'k' || myScale == 'K') {
			deg2.myScale = 'K';}
		else if (myScale == 'C' || myScale == 'c') {
			deg2.myScale = 'C';}
		else if (myScale == 'F' || myScale == 'f') {
			deg2.myScale = 'F'; }
		if (myDegree == deg2.getDegree()) {
			result = true; }	
	}	
	return result;
	}

   /***************************************************
     * lessThan() determines if a temp is less than another temp*
     * Return: true if less, false if not less         *
     ***************************************************/
    public boolean lessThan(Temperature deg2) {
	boolean result = false;
	if(myScale == deg2.getScale()) {
		if (myDegree < deg2.getDegree()) {
			result = true;
		}
	}
	else {
		if (myScale == 'k' || myScale == 'K') {
			deg2.getKelvin(); }
		else if (myScale == 'C' || myScale == 'c') {
			deg2.getCelsius(); }
		else if (myScale == 'F' || myScale == 'f') {
			deg2.getFahrenheit(); }
		if (myDegree < deg2.getDegree()) {
			result = true; }	
	}	
	return result;
    }
	
    /***************************************************
     * readTemp() gets user input for a Temperature    *
     * POST: new temperature set from user             *
     ***************************************************/
    void readTemp() {
	Scanner keyboard = new Scanner(System.in);
	//get temperature
	System.out.println("Enter degrees: ");
	double degree = keyboard.nextDouble();
	myDegree = degree;
	
	//get scale
	System.out.println("Enter scale: ");
	char scale = keyboard.next().charAt(0);
	myScale = scale;
	}


    /***************************************************
     * printTemp() returns Temperature type            *
     * Return: myDegree and myScale                    *
     ***************************************************/
    public String printTemp() {
	return String.valueOf(myDegree + " " + String.valueOf(myScale));
	}
}
