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
