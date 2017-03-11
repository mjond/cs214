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
