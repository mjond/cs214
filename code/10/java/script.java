Script started on Thu 21 Apr 2016 09:45:05 AM EDT
mjd85@hollerith:~/Documents/214/code/10/java$ cat Bird.java
/* Bird.java provides class Bird.
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: april 21, 2016
 */

public class Bird {

    private String myName;

	//constructor for Bird
    public Bird(String name) {
	myName = name; //set myName
	}
   
	//accessor for myName
    public String getName() {
	return myName;
	}
   
	//default call() for a Bird
    public String call() {
	return "Squaaaaaaaaawk!";
	}
   
	//custom print method for type Bird 
    public void print() {
	System.out.println(getName() + ' ' + getClass().getName() + " says " + call());
	}
   
}
mjd85@hollerith:~/Documents/214/code/10/java$ cat Birds.java
/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: April 21, 2016
 */

public class Birds{

    public static void main (String[] args){
	
	//Bird bird1 = new Bird();

	Bird bird1 = new Bird("Hawkeye");
	System.out.println(bird1.getName());
	System.out.println(bird1.call());
	bird1.print();

	Duck bird2 = new Duck("Donald");
	bird2.print();

	Goose bird3 = new Goose("Mother");
	bird3.print();

	Owl bird4 = new Owl("Woodsey");
	bird4.print();
    }

}
mjd85@hollerith:~/Documents/214/code/10/java$ cat Duck.java
/* Duck.java models a Duck
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: april 21, 2016
 */

public class Duck extends Bird
{

//constructor for Duck
public Duck(String name) {
	super(name); //take over the BIRD constructor
}

//redefine call() for Duck
public String call() {
	return "Quack!";
}




}
mjd85@hollerith:~/Documents/214/code/10/java$ cat Goose.java
/* Goose.java models a Goose
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: April 21, 2016
 */

public class Goose extends Bird {

//override constructor for Goose
public Goose(String name){
	super(name);
}

//override call() for Goose
public String call() {
	return "Honk!";
}	

}
mjd85@hollerith:~/Documents/214/code/10/java$ cat Owl.java
/* Owl.java models an Owl
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: April 21, 2016
 */

public class Owl extends Bird {

//override constructor for Owl class
public Owl(String name) {
	super(name);
}

//override call() for Owl class
public String call() {
	return "what";
}

}
mjd85@hollerith:~/Documents/214/code/10/java$ javac Birds.java
mjd85@hollerith:~/Documents/214/code/10/java$ java Birds
Hawkeye
Squaaaaaaaaawk!
Hawkeye Bird says Squaaaaaaaaawk!
Donald Duck says Quack!
Mother Goose says Honk!
Woodsey Owl says what
mjd85@hollerith:~/Documents/214/code/10/java$ exit
exit

Script done on Thu 21 Apr 2016 09:45:37 AM EDT
