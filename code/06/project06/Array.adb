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

procedure Array11 is

type Vector is array ( Positive range <> ) of integer;

size : integer; --variable for storing size of array
value : integer; --variable for storing user input


----------------------------------------------
-- readArray() gets input from user for array-
-- Receive: anArray, size of array           -
-- Precondition: inputs are integers         -
----------------------------------------------
procedure readArray(Arr : Vector) is

begin
	for i in Arr'Range
	loop
		Puts("Enter value: ");
		Get(value);
		New_line;
		Arr(i) := value;
	end loop;
end readArray;


----------------------------------------------
-- printArray() prints out elements in array 
-- Receive: anArray, an array of numbers     
----------------------------------------------
procedure printArray(Arr: Vector) is
begin
	Puts("Elements are: ");
	for i in Arr'Range
	loop
		Put_Line(Arr(i));
	end loop;
end printArray;


begin 
Put("Enter the size of the array: ");
Get(size);
  declare
	array1 : Vector(1 .. size, 1 .. size);
  begin
	readArray(array1);
	Put_Line("elements in array are: ");
	printArray(array1);
  end;
end Array11;
