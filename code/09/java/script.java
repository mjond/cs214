Script started on Mon 18 Apr 2016 07:02:17 PM EDT
mjd85@boole:~/Documents/214/code/09/java$ j cat Max.java
/* Max.java uses the Java Collection Framework
 * to explore operations on a linked list
 *
 * Begun By: Serita Nelesen
 * Completed By: Mark Davis
 * Date: April 15, 2016
 */

import java.util.LinkedList;
import java.util.Iterator;
import java.util.Collections;


class Max{

    ////////////////////////////////////////////////////
    // print() prints elements in a list             ///
    // Receive: aList, a list                        ///
    // Output: the values of a list, with spaces     ///
    ////////////////////////////////////////////////////
    public static void print(LinkedList<Integer> aList)
	{
	Iterator<Integer> listIterator = aList.iterator(); //iterator for traversing a list
	while (listIterator.hasNext()) { //while there is another node
		System.out.print(listIterator.next() + " "); //print its value
	}
	System.out.print('\n'); //new line
	}

    ////////////////////////////////////////////////////
    // main() tests print() and finding the max      ///
    // Receive: -                                    ///
    // Output: the values of a list, with spaces     ///
    //         the max elements of a list            ///
    ////////////////////////////////////////////////////
    public static void main(String [] args){
	//LinkedList<Integer> list1, list2, list3; //declare list1, list2, list3
	LinkedList<Integer> list1 = new LinkedList<Integer>();
	LinkedList<Integer> list2 = new LinkedList<Integer>();
	LinkedList<Integer> list3 = new LinkedList<Integer>();

	
	list1.add(new Integer(99)); // max is first
	list1.add(new Integer(88)); // 99 88 77 66 55
	list1.add(new Integer(77));
	list1.add(new Integer(66));
	list1.add(new Integer(55));

	list2.add(55);  // max is last
	list2.add(66);  // uses implicit type conversion of int
	list2.add(77);  //     to Integer
	list2.add(88);  // 55 66 77 88 99
	list2.add(99);

	list3.add(55);  // max is in the middle
	list3.add(77);  // implicit type conversion
	list3.add(99);  // 55 77 99 88 66 
	list3.add(88);
	list3.add(66);

	print(list1);
	print(list2);
	print(list3);

	System.out.println("Max of list1: " + Collections.max(list1)); //find max for list1
	System.out.println("Max of list2: " + Collections.max(list2)); //find max for list2
	System.out.println("Max of list3: " + Collections.max(list3)); //find max for list3
    
    }
}
mjd85@boole:~/Documents/214/code/09/java$ cat Max.java[4Pjava Maxc Max.java
mjd85@boole:~/Documents/214/code/09/java$ javac Max.java[2Pcat Max.java[4Pjava Max
99 88 77 66 55 
55 66 77 88 99 
55 77 99 88 66 
Max of list1: 99
Max of list2: 99
Max of list3: 99
mjd85@boole:~/Documents/214/code/09/java$ exit
exit

Script done on Mon 18 Apr 2016 07:02:28 PM EDT
