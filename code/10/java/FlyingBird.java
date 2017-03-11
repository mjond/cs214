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
