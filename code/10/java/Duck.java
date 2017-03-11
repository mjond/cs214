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
