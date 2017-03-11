Script started on Thu 24 Mar 2016 10:03:49 AM EDT
mjd85@atanasoff:~/Documents/214/code/06$ cat average.adb
-- average.adb "test-drives" function Average.
-- Precondition: theArray is an array of numbers.
-- Output: the average of the numbers.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: March 23, 2016
-----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)

procedure average is

type Vector is array ( Positive range <> ) of float;

array0: Vector := (0.0, 0.0);

array1: Vector := (6.0, 7.0, 8.0, 9.0);

----------------------------------------------
-- sum() sums the values in an array           -
-- Receive: anArray, an array of numbers     -
-- Return: the sum of the values in anArray. -
----------------------------------------------
function sum(A: Vector) return Float is
	total : float := 0.0;
begin
	for i in A'Range
	loop
		total := total + A(i);
	end loop;
	return total;
end sum;

----------------------------------------------
-- average() finds average of the values in an array      
-- Receive: anArray, an array of numbers     
-- Return: the average of the values in anArray.
----------------------------------------------
function average(A: Vector) return Float is
begin
	if Float(A'Length) <= 0.0 then
		return 0.0;
	else
		return sum(A) / Float(A'Length);
	end if;
end average;

begin
   Put(" average 0 is ");
   Put( average(array0) );
   New_line;
   Put(" average 1 is ");
   Put( average(array1) );
   New_line;
end average;

mjd85@atanasoff:~/Documents/214/code/06$ gnatmake average.adb
gnatmake: "average" up to date.
mjd85@atanasoff:~/Documents/214/code/06$ ./average
 average 0 is  0.00000E+00
 average 1 is  7.50000E+00
mjd85@atanasoff:~/Documents/214/code/06$ exit
exit

Script done on Thu 24 Mar 2016 10:04:16 AM EDT
