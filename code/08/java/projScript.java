Script started on Tue 12 Apr 2016 09:53:00 PM EDT
mjd85@torvalds:~/Documents/214/code/08/java$ cat Temperature.java
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
	if(scale == 'K' || scale == 'k' && degrees < 0){
		result = false;
	}
	else if(scale == 'C' || scale == 'c' && degrees < -237) {
		result = false;
	}
	else if(scale == 'F' || scale == 'f' && degrees < -459) {
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
mjd85@torvalds:~/Documents/214/code/08/java$ cat TestRunner.java
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

mjd85@torvalds:~/Documents/214/code/08/java$ javac TestRunner.java
mjd85@torvalds:~/Documents/214/code/08/java$ java TestRunner
Enter values for base temperature
Enter degrees: 
0.0
Enter scale: 
F
Enter values for limit temperature
Enter degrees: 
100.0
Enter scale: 
C
Enter step value: 
2.5
0.0 F -17.77777862548828 C 255.3722213745117 K
2.499986297024577 F -16.388897283136497 C 256.7611027168635 K
4.999972647030802 F -15.000015911350461 C 258.1499840886495 K
7.4999590500185604 F -13.611134510130238 C 259.53886548986975 K
9.999945505988023 F -12.222253079475735 C 260.9277469205242 K
12.49993201493902 F -10.833371619387044 C 262.31662838061294 K
14.999918576871721 F -9.444490129864072 C 263.7055098701359 K
17.49990519178607 F -8.05560861090685 C 265.0943913890931 K
19.999891859681952 F -6.666727062515442 C 266.4832729374845 K
22.499878580559425 F -5.277845484689814 C 267.87215451531017 K
24.999865354418603 F -3.8889638774299047 C 269.2610361225701 K
27.499852181259428 F -2.5000822407357455 C 270.6499177592642 K
29.999839061081786 F -1.1112005746073996 C 272.0387994253926 K
32.49982599388585 F 0.2776811209552279 C 273.4276811209552 K
34.99981297967145 F 1.6665628459520423 C 274.81656284595203 K
37.49980001843875 F 3.0554446003831384 C 276.2054446003831 K
39.99978711018764 F 4.444326384248453 C 277.5943263842484 K
42.49977425491812 F 5.833208197547986 C 278.983208197548 K
44.99976145263031 F 7.2220900402818 C 280.37209004028176 K
47.49974870332409 F 8.610971912449834 C 281.7609719124498 K
49.99973600699951 F 9.999853814052116 C 283.1498538140521 K
52.49972336365664 F 11.388735745088681 C 284.5387357450887 K
54.99971077329536 F 12.777617705559464 C 285.92761770555944 K
57.49969823591567 F 14.166499695464465 C 287.3164996954644 K
59.999685751517575 F 15.555381714803685 C 288.70538171480365 K
62.49967332010118 F 16.944263763577187 C 290.09426376357715 K
64.99966094166638 F 18.333145841784905 C 291.4831458417849 K
67.49964861621328 F 19.72202794942691 C 292.87202794942687 K
69.99963634374177 F 21.11091008650313 C 294.2609100865031 K
72.49962412425197 F 22.49979225301363 C 295.64979225301363 K
74.99961195774387 F 23.88867444895841 C 297.0386744489584 K
77.49959984421736 F 25.277556674337415 C 298.4275566743374 K
79.99958778367244 F 26.666438929150633 C 299.8164389291506 K
82.49957577610922 F 28.055321213398138 C 301.2053212133981 K
84.99956382152772 F 29.44420352707992 C 302.5942035270799 K
87.4995519199278 F 30.833085870195923 C 303.9830858701959 K
89.99954007130958 F 32.22196824274621 C 305.37196824274616 K
92.49952827567296 F 33.610850644730704 C 306.7608506447307 K
94.99951653301804 F 34.99973307614949 C 308.14973307614946 K
97.49950484334471 F 36.388615537002494 C 309.53861553700244 K
99.99949320665297 F 37.77749802728971 C 310.9274980272897 K
102.49948162294294 F 39.166380547011215 C 312.3163805470112 K
104.99947009221461 F 40.555263096166996 C 313.70526309616696 K
107.49945861446787 F 41.944145674756996 C 315.094145674757 K
109.99944718970283 F 43.333028282781285 C 316.4830282827813 K
112.4994358179195 F 44.72191092023985 C 317.8719109202398 K
114.99942449911777 F 46.11079358713263 C 319.26079358713264 K
117.49941323329773 F 47.4996762834597 C 320.64967628345966 K
119.99940202045929 F 48.88855900922098 C 322.03855900922093 K
122.49939086060255 F 50.277441764416544 C 323.4274417644165 K
124.99937975372751 F 51.666324549046394 C 324.8163245490464 K
127.49936869983418 F 53.05520736311052 C 326.2052073631105 K
129.99935769892244 F 54.44409020660887 C 327.5940902066088 K
132.4993467509924 F 55.832973079541496 C 328.98297307954147 K
134.99933585604407 F 57.221855981908405 C 330.37185598190837 K
137.49932501407733 F 58.61073891370953 C 331.76073891370953 K
139.9993142250923 F 59.99962187494494 C 333.1496218749449 K
142.49930348908896 F 61.388504865614635 C 334.53850486561464 K
144.99929280606733 F 62.77738788571861 C 335.9273878857186 K
147.4992821760273 F 64.1662709352568 C 337.3162709352568 K
149.99927159896896 F 65.55515401422927 C 338.70515401422927 K
152.49926107489233 F 66.94403712263603 C 340.094037122636 K
154.9992506037974 F 68.33292026047707 C 341.48292026047704 K
157.4992401856842 F 69.72180342775238 C 342.87180342775235 K
159.99922982055256 F 71.11068662446192 C 344.26068662446187 K
162.49921950840263 F 72.49956985060574 C 345.6495698506057 K
164.9992092492344 F 73.88845310618383 C 347.0384531061838 K
167.49919904304778 F 75.27733639119616 C 348.42733639119615 K
169.99918888984297 F 76.66621970564282 C 349.81621970564277 K
172.49917878961975 F 78.0551030495237 C 351.2051030495237 K
174.99916874237834 F 79.44398642283893 C 352.5939864228389 K
177.49915874811853 F 80.83286982558838 C 353.98286982558835 K
179.99914880684042 F 82.2217532577721 C 355.37175325777207 K
182.49913891854402 F 83.6106367193901 C 356.76063671939005 K
184.9991290832292 F 84.99952021044233 C 358.1495202104423 K
187.4991193008962 F 86.3884037309289 C 359.53840373092885 K
189.9991095715448 F 87.77728728084969 C 360.92728728084967 K
192.49909989517522 F 89.16617086020483 C 362.3161708602048 K
194.99909027178734 F 90.55505446899424 C 363.7050544689942 K
197.49908070138105 F 91.94393810721787 C 365.09393810721787 K
199.99907118395657 F 93.33282177487585 C 366.48282177487584 K
202.4990617195138 F 94.72170547196812 C 367.8717054719681 K
204.99905230805263 F 96.1105891984946 C 369.2605891984946 K
207.49904294957327 F 97.49947295445541 C 370.6494729544554 K
209.9990336440756 F 98.88835673985052 C 372.0383567398505 K
mjd85@torvalds:~/Documents/214/code/08/java$ exit
exit

Script done on Tue 12 Apr 2016 09:53:35 PM EDT
