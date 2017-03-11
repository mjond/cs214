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
