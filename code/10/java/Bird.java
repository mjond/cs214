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




