Script started on Tue 26 Apr 2016 10:46:42 AM EDT
mjd85@goldberg:~/Documents/214/code/10/java$ cat Bird.java Birds.java
/* Bird.java provides class Bird.
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: april 26, 2016
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
	System.out.println( getName() + ' ' + getClass().getName() + " just " + movement() + " by and said, " + call());
	}

    public String movement() {
	return "moved";
	}
   
}




/* Birds.java illustrates inheritance and polymorphism.
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: April 21, 2016
 */

public class Birds{

    public static void main (String[] args){
	
	//Bird bird1 = new Bird();

	//Bird bird1 = new Bird("Hawkeye");
	//System.out.println(bird1.getName());
	//System.out.println(bird1.call());
	//bird1.print();

	Duck bird2 = new Duck("Donald");
	bird2.print();

	Goose bird3 = new Goose("Mother");
	bird3.print();

	Owl bird4 = new Owl("Woodsey");
	bird4.print();

	Penguin bird5 = new Penguin("Peter");
	bird5.print();

	Ostrich bird6 = new Ostrich("Orville");
	bird6.print();

	Kiwi bird7 = new Kiwi("The fruit");
	bird7.print();
    }

}
mjd85@goldberg:~/Documents/214/code/10/java$ cat Duck.java Gosoe               WalkingBird.java FlyingBird.java
/* WalkingBird.java provides class WalkingBird.
 *
 * Completed by: Mark Davis
 * Date: april 26, 2016
 */

public class WalkingBird extends Bird {

    public WalkingBird(String name) {
	super(name); //take over the BIRD constructor
    }
    
    public String movement() {
	return "walked";
    }
}
/* FlyingBird.java provides class FlyingBird.
 *
 * Completed by: Mark Davis
 * Date: april 26, 2016
 */

public class FlyingBird extends Bird {

     public FlyingBird(String name) {
	super(name); //take over the BIRD constructor
    }
    
    public String movement() {
	return "flew";
    }
}
mjd85@goldberg:~/Documents/214/code/10/java$ cat Goose.java Duck.java JO  Owl.java
/* Goose.java models a Goose
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: April 26, 2016
 */

public class Goose extends FlyingBird {

//override constructor for Goose
public Goose(String name){
	super(name);
}

//override call() for Goose
public String call() {
	return "Honk!";
}	

}
/* Duck.java models a Duck
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: april 26, 2016
 */

public class Duck extends FlyingBird
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
/* Owl.java models an Owl
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: April 26, 2016
 */

public class Owl extends FlyingBird {

//override constructor for Owl class
public Owl(String name) {
	super(name);
}

//override call() for Owl class
public String call() {
	return "what";
}

}
mjd85@goldberg:~/Documents/214/code/10/java$ cat Ostrich.java Penguin.java Kiwi.java
/* Ostrich.java models an Ostrich
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: April 26, 2016
 */

public class Ostrich extends WalkingBird {

//override constructor for Owl class
public Ostrich(String name) {
	super(name);
}

//override call() for Owl class
public String call() {
	return "Snork";
}

}
/* Penguin.java models a Penguin
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: April 26, 2016
 */

public class Penguin extends WalkingBird {

//override constructor for Owl class
public Penguin(String name) {
	super(name);
}

//override call() for Owl class
public String call() {
	return "huh-huh-huh-huuuuuh";
}

}
/* Kiwi.java models a Kiwi
 *
 * Begun by: Dr. Nelesen, CS 214 at Calvin College.
 * Completed by: Mark Davis
 * Date: April 26, 2016
 */

public class Kiwi extends WalkingBird {

//override constructor for Owl class
public Kiwi(String name) {
	super(name);
}

//override call() for Owl class
public String call() {
	return "I'm not actually a bird...";
}

}
mjd85@goldberg:~/Documents/214/code/10/java$ javac Birds.java
mjd85@goldberg:~/Documents/214/code/10/java$ java Birds
Donald Duck just flew by and said, Quack!
Mother Goose just flew by and said, Honk!
Woodsey Owl just flew by and said, what
Peter Penguin just walked by and said, huh-huh-huh-huuuuuh
Orville Ostrich just walked by and said, Snork
The fruit Kiwi just walked by and said, I'm not actually a bird...
mjd85@goldberg:~/Documents/214/code/10/java$ exit
exit

Script done on Tue 26 Apr 2016 10:48:02 AM EDT
