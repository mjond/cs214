-- quad.adb computes roots given inputs a b and c
--
-- Input: a, b, c (floats)
-- Precondition: inputs are positive
-- Output: roots for the given inputs
--
-- Completed by: Mark Davis
-- Date: March 7, 2016
--------------------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed, Ada.Numerics.Generic_Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Strings.Fixed;



procedure quad is
	package Value_Functions is new Ada.Numerics.Generic_Elementary_Functions (Float);
	use Value_Functions;

	a, b, c, part1, part2, answer : Float; --declare variables

 procedure quadratic(a, b, c : in Float; part1, part2 : out Float) is --declare function
	begin
	if answer /= 0.0 then -- if a is 0
		answer := (b ** 2.0) - 4.0 * a * c; --compute root	
		if answer >= 0.0 then -- if greater than 0, keep going
			part1 := (-b + Sqrt(answer))/(2.0*a); --compute root 1
			part2 := (-b - Sqrt(answer))/(2.0*a); --compute root 2
		else
			Put_Line("*** quadratic(): b^2 - 4ac is negative!"); --error message
			part1 := 0.0; part2 := 0.0; --set root 1 and 2 to zero
		end if;
	else 
		Put_Line("*** quadratic(): a is a zero!"); --error message
		part1 := 0.0; part2 := 0.0; --set root 1 and 2 to zero
	end if;
 end quadratic;

begin
  Put("Enter a, b and c: "); --prompt for input
  Get(a); Get(b); Get(c); --store values
  
  quadratic(a, b, c, part1, part2); -- call quadratic function

  Put("Root 1 is: "); --output root 1
  Put(part1);
  Put("Root 2 is: "); --output root 2
  Put(part2);

end quad;
