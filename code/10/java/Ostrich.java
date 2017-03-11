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
