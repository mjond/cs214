-- log_table.adb computes a table of logarithms.
--
-- Input: start, stop, increment, three reals.
-- Precondition: increment is positive.
-- Output: A table of logarithms beginning with log(start),
--         ending with log(stop), with intervals of increment.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Mark Davis
--------------------------------------------------------------
with Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions;
use  Ada.Text_IO, Ada.Float_Text_IO, Ada.Numerics.Elementary_Functions; --include libraries for log()

procedure log_table is

   Start, Stop, Increment : Float; --declare variables

begin                                           -- Prompt for input
   Put_Line("To print a table of logarithms,"); 
   Put(" enter the start, stop, and increment values: "); --prompt for values
   Get(Start); Get(Stop); Get(Increment); --store values

   while Start <= Stop loop --while start is less than or equal to start
	--output message	
	Put("Logarithm of: "); 
	Put(Start);
	Put(" is ");
	Put(log(Start, 10.0)); --comput log of start value
	New_Line; -- new line
	Start := Start + Increment; --increment start value
   end loop; --end loop

end log_table;

