Script started on Wed 30 Mar 2016 09:33:59 PM EDT
mjd85@sutherland:~/Documents/214/code/06/project06$ cat program.db  adb
-- Array.adb prompts for user input and outputs 
-- contents of the array
-- Precondition: theArray is an array of numbers.
-- Output: the elements of an array
--
-- By: Mark Davis
-- Date: March 30, 2016
-----------------------------------------------
with Ada.Text_IO; use Ada.Text_IO;             -- Put(String)
with Ada.Float_Text_IO; use Ada.Float_Text_IO; -- Put(Float)
with Ada.Integer_Text_IO; -- calling Float library
use Ada.Integer_Text_IO;

procedure program is

type Vector is array ( Positive range <> ) of integer;

size : integer; --variable for storing size of array

value : integer; --variable for storing user input


----------------------------------------------
-- readArray() gets input from user for array-
-- Receive: anArray, size of array           -
-- Precondition: inputs are integers         -
----------------------------------------------
procedure readArray(Arr : out Vector; size : integer) is

begin
	for I in Arr'Range 
	loop
		Get(value);
		Arr(I) := value;
	end loop;
end readArray;


----------------------------------------------
-- printArray() prints out elements in array 
-- Receive: anArray, an array of numbers     
----------------------------------------------
procedure printArray(Arr: Vector) is
begin
	Put_Line("Elements are: ");
	for i in Integer range Arr'First .. Arr'Last
	loop
		Put( Arr(i) );
	end loop;
end printArray;


begin 
Put("Enter the size of the array: ");
Get(size);
  declare
	array1 : Vector(1 .. size);
  begin
	readArray(array1, size);
	printArray(array1);
  end;
end program;
mjd85@sutherland:~/Documents/214/code/06/project06$ ./program
Enter the size of the array: 3
2
2
2
Elements are: 
          2          2          2
mjd85@sutherland:~/Documents/214/code/06/project06$ ./program
Enter the size of the array: 5
5
4
3
2
1
Elements are: 
          5          4          3          2          1
mjd85@sutherland:~/Documents/214/code/06/project06$ exit
exit

Script done on Wed 30 Mar 2016 09:34:23 PM EDT
