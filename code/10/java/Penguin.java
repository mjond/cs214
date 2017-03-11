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
