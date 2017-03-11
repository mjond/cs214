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
