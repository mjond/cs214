Script started on Tue 01 Mar 2016 07:03:13 PM EST
mjd85@babbage:~/Documents/214/projects/project04$ cat factoria. l.adb
-- factorial.adb computes factorial
--
-- Input: number
-- Precondition: number is positive
-- Output: factorial of number
-- by: Mark Davis
--------------------------------------------------------------
with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Numerics.Elementary_Functions;

-- Input:  number (Integer)
-- Precondition: number is positive
-- Output: factorial of number

procedure factorial is

	number : integer; --declare variables
	answer : integer;
		
	function fact(number: in integer) return integer is --declare function
	begin
	answer := 1; --assign value 1 to answer
		for I in Integer range 2 .. number loop --declare loop to comput factorial
			answer := answer * I; --compute factorial
		end loop;
	return answer; --return the final answer
	end fact;

begin
	Put_Line("Enter a number: "); --prompt for input
	Get(number);
	--output message
	Put(number);
	Put("! = ");
	Put(fact(number)); --call factorial()
	New_Line;
end factorial; 
mjd85@babbage:~/Documents/214/projects/project04$ gnatmak       cat factorial.adbexit[Kruby factorial.rb[1Porial.rb[1@torial.rb[1Pcat factorial.rbexit[Kjava factorialgnat                  gnatmake[1P[1@make factorial.adb
gcc-4.6 -c factorial.adb
gnatbind -x factorial.ali
gnatlink factorial.ali
mjd85@babbage:~/Documents/214/projects/project04$ ./factorial
Enter a number: 
4
          4! =          24
mjd85@babbage:~/Documents/214/projects/project04$ ./factorial
Enter a number: 
5
          5! =         120
mjd85@babbage:~/Documents/214/projects/project04$ ./factorial
Enter a number: 
6
          6! =         720
mjd85@babbage:~/Documents/214/projects/project04$ exit
exit

Script done on Tue 01 Mar 2016 07:04:02 PM EST
