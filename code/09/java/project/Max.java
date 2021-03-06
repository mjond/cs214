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
    // find() finds a given element in a list        ///
    // Receive: aList, a list                        ///
    //          aValue, an integer                   ///
    // Output: position of given value               ///
    ////////////////////////////////////////////////////
	public static int find(LinkedList<Integer> aList, int aValue)
	{

	for (int i = 0; i < aList.size(); i++) {
		int element = aList.get(i);
		if (element == aValue) {
			return i;
		}
	  }
	return -1;
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
	LinkedList<Integer> list4 = new LinkedList<Integer>();

	
	list1.add(new Integer(99)); // max is first
	list1.add(new Integer(88)); // 99 88 77 66 55
	list1.add(new Integer(77));
	list1.add(new Integer(66));
	list1.add(new Integer(55));

	list2.add(55);  // max is last
	list2.add(66);  // uses implicit type conversion of int
	list2.add(77);  // to Integer
	list2.add(88);  // 55 66 77 88 99
	list2.add(99);

	list3.add(55);  // max is in the middle
	list3.add(77);  // implicit type conversion
	list3.add(99);  // 55 77 99 88 66 
	list3.add(88);
	list3.add(66);

	list4.add(55);  
	list4.add(77);  
	list4.add(44);  
	list4.add(88);
	list4.add(66);

	print(list1);
	print(list2);
	print(list3);
	print(list4);

	System.out.println("Position of 99 in list1 is: " + String.valueOf(find(list1, 99))); //find max for list1
	System.out.println("Position of 99 in list2 is: " + String.valueOf(find(list2, 99))); //find max for list2
	System.out.println("Position of 99 in list3 is: " + String.valueOf(find(list3, 99))); //find max for list3
        System.out.println("Position of 99 in list4 is: " + String.valueOf(find(list4, 99))); //find max for list3
    }
}
