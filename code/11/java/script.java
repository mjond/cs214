Script started on Mon 02 May 2016 08:32:32 PM EDT
mjd85@goldberg:~/Documents/214/code/11/java$ cat Array_Sum.java
/*
 * Sum.java computes the sum of a set of numbers from a file
 * completed by: Mark Davis
 * Created by: Dr. Nelesen
 */

import java.io.*;

class Array_Sum {

    int [] inputs; // instance data for input array
    int numValues;

    //method to populate array with data from file
    public void readFile(String fname)
    {
	File f = new File(fname);
	BufferedReader reader = null;
	int i = 0;
	
	try {
	    reader = new BufferedReader(new FileReader(f));
	    String text = null;
	    
	    // Read in number of values first.
	    numValues = Integer.parseInt(reader.readLine());
	    
	    inputs = new int[numValues];
	    
	    // read and throw away blank line
	    reader.readLine();
	    
	    while ((text = reader.readLine()) != null) {
		// System.out.println("text is " + text + " and i is " + i);
		inputs[i] = Integer.parseInt(text);
		i++;
	    }
	    reader.close();
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }

    //Worker method that computes the sum
    public void doSummation(){
	int total = 0;
	long startTime = System.nanoTime();
	for (int i = 0; i < inputs.length; i++){
	    total += inputs[i];
	}
	long endTime = System.nanoTime();
	System.out.println("Total is: " + total);
	System.out.println("time: " + (endTime - startTime));
    }

    // main kicks things off and gets out of the way
    public static void main (String [] args){
	if (args.length != 1) {
	    System.out.println("Usage: java Array_Sum <filename> \n");
	    System.exit(-1);
	}
	Array_Sum sum = new Array_Sum();
	
	//read values from file
	sum.readFile(args[0]);
	sum.doSummation();

    }
}
mjd85@goldberg:~/Documents/214/code/11/java$ cat Sum.java
/*
 * Sum.java computes the sum of a set of numbers from a file
 * completed by: Mark Davis
 * Created by: Dr. Nelesen
 */

import java.io.*;

class Sum {

    //method to compute sum of data from file
    public void doWork(String fname)
    {
	File f = new File(fname);
	BufferedReader reader = null;
	int i = 0;
	
	try {
	    reader = new BufferedReader(new FileReader(f));
	    String text = null;
	    
	    // Read in number of values first (but ignore in this version)
	    int numValues = Integer.parseInt(reader.readLine());
	    
	    // read and throw away blank line
	    reader.readLine();

	    long startTime = System.nanoTime();
	    int total = 0;
	    while ((text = reader.readLine()) != null) {
		total += Integer.parseInt(text);
	    }
	    long endTime = System.nanoTime();
	    reader.close();
	    System.out.println("Total is: " + total);
	    System.out.println("time: " + (endTime - startTime));
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }

    // main kicks things off and gets out of the way
    public static void main (String [] args){
	Sum sum = new Sum();
	
	//Do all the work of summing numbers from file
	sum.doWork(args[0]);
    }
}
mjd85@goldberg:~/Documents/214/code/11/java$ cat Threaded_Array.java
/*
 * Sum.java computes the sum of a set of numbers from a file
 * completed by: Mark Davis
 * Created by: Dr. Nelesen
 */

import java.io.*;
import java.util.List;
import java.util.ArrayList;

class Threaded_Array {

    int [] inputs; // instance data for input array
    int numValues;

    //method to populate array with data from file
    public void readFile(String fname)
    {
	File f = new File(fname);
	BufferedReader reader = null;
	int i = 0;
	
	try {
	    reader = new BufferedReader(new FileReader(f));
	    String text = null;
	    
	    // Read in number of values first.
	    numValues = Integer.parseInt(reader.readLine());
	    
	    inputs = new int[numValues];
	    
	    // read and throw away blank line
	    reader.readLine();
	    
	    while ((text = reader.readLine()) != null) {
		// System.out.println("text is " + text + " and i is " + i);
		inputs[i] = Integer.parseInt(text);
		i++;
	    }
	    reader.close();
	} catch (Exception e) {
	    e.printStackTrace();
	}
    }

    //Worker method that computes the sum
    public void doSummation(int threadCount){
	int total = 0;
	long startTime = System.nanoTime();

	List<Worker> workers = new ArrayList<Worker>();
	int lenOneWorker = inputs.length / threadCount;
	for (int i=0; i<threadCount; i++) {
	    int start = i * lenOneWorker;
	    int end = (i+1) * lenOneWorker;
	    // Special case: make the last worker take up all the excess.
	    if (i==threadCount-1) end = inputs.length;
	    Worker worker = new Worker(start, end);
	    workers.add(worker);
	    worker.start();
	}
	
	// Wait to finish until all Workers have finished
	try {
	    for (Worker w: workers) w.join();
	} catch (InterruptedException ignored) {
	}
	
	// Gather sums from workers 
	for (Worker w: workers) total += w.getSum();
	long endTime = System.nanoTime();
	System.out.println("Total is: " + total);
	System.out.println("time: " + (endTime - startTime));
    }

    // main kicks things off and gets out of the way
    public static void main (String [] args){
	if (args.length != 2) {
	    System.out.println("Usage: java Array_Sum <filename> \n");
	    System.exit(-1);
	}
	Threaded_Array sum = new Threaded_Array();
	
	//read values from file
	sum.readFile(args[0]);
	sum.doSummation(Integer.parseInt(args[1]));

    }

// Worker inner class to add up a section of the array.
    private class Worker extends Thread {
	int start;
	int end;
	long sum;
	
	// Note the start and end indexes for this worker
	// in the array. Goes up to but not including end index.
	Worker(int start, int end) {
	    this.start = start;
	    this.end = end;
	    sum = 0;
	}
	// Computes the sum for our start..end section
	// in the array (client should call getSum() later).
	public void run() {
	    for (int i=start; i<end; i++) {
		sum += inputs[i];
	    }
	}
	
	public long getSum() {
	    return sum;
	}
    }
}
mjd85@goldberg:~/Documents/214/code/11/java$ javac Threaded[Kmjd85@goldberg:~/Documents/214/code/11/java$ javac Threaded_arr   Array.java
mjd85@goldberg:~/Documents/214/code/11/java$ java Threaded_Array ../numbers/1000000numbers.txt 1
Total is: 500869305
time: 5537440
mjd85@goldberg:~/Documents/214/code/11/java$ java Threaded_Array ../numbers/1000000numbers.txt 1 8
Total is: 500869305
time: 14908878
mjd85@goldberg:~/Documents/214/code/11/java$ exit
exit

Script done on Mon 02 May 2016 08:34:28 PM EDT
