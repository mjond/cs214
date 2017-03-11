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
