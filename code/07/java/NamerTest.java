/* A class to test the Name class
 * Created by: Dr. Nelesen
 *
 */

import org.junit.Test;
import static org.junit.Assert.*;


public class NamerTest  // a class used for JUnit testing...
{
    @Test
    public void testToString() {  //lmfi 
	Name theName = new Name("John", "Paul", "Jones");
	assertEquals(theName.toString(), "John Paul Jones");
    }
    
    @Test
    public void testGetFirst(){
	Name theName = new Name("Johnna", "Paulina", "Jones");
	assertEquals(theName.getFirst(), "Johnna");
    }

    @Test
    public void testGetMiddle(){
	Name theName = new Name("Johnna", "Grace", "Jones");
	assertEquals(theName.getMiddle(), "Grace");
    }

    @Test
    public void testGetLast(){
	Name theName = new Name("Johnna", "Paulina", "Jones");
	assertEquals(theName.getLast(), "Jones");
    }

   @Test
   public void testSetFirst() {
	Name theName = new Name("Johnna", "Paulina", "Jones");
	theName.setFirst("Mark");
	assertEquals(theName.getFirst(), "Mark");
	}	

   @Test
   public void testSetMiddle() {
	Name theName = new Name("Johnna", "Paulina", "Jones");
	theName.setMiddle("Mark");
	assertEquals(theName.getMiddle(), "Mark");
	}

   @Test
   public void testSetLast() {
	Name theName = new Name("Johnna", "Paulina", "Jones");
	theName.setLast("Mark");
	assertEquals(theName.getLast(), "Mark");
	}

   @Test
    public void testlfmi() {  //lmfi 
	Name theName = new Name("John", "Paul", "Jones");
	assertEquals(theName.lfmi(), "Jones, John P.");
    }	

   @Test
   public void testReadName() {
	Name theName = new Name(" ", " ", " ");
	theName.readName();
	//enter "Mark Jonathan Davis"
	assertEquals(theName.getFirst(), "Mark");
	assertEquals(theName.getMiddle(), "Jonathan");
	assertEquals(theName.getLast(), "Davis");
   }	
}

