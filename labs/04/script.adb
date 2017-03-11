Script started on Tue 01 Mar 2016 02:09:11 PM EST
mjd85@stroustrup:~/Documents/214/labs/04$ cat log_tabe le.adb
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

mjd85@stroustrup:~/Documents/214/labs/04$ gnatmake log_table.adb
gnatmake: "log_table" up to date.
mjd85@stroustrup:~/Documents/214/labs/04$ ./log_table
To print a table of logarithms,
 enter the start, stop, and increment values: 1 10 0.5
Logarithm of:  1.00000E+00 is  0.00000E+00
Logarithm of:  1.50000E+00 is  1.76091E-01
Logarithm of:  2.00000E+00 is  3.01030E-01
Logarithm of:  2.50000E+00 is  3.97940E-01
Logarithm of:  3.00000E+00 is  4.77121E-01
Logarithm of:  3.50000E+00 is  5.44068E-01
Logarithm of:  4.00000E+00 is  6.02060E-01
Logarithm of:  4.50000E+00 is  6.53212E-01
Logarithm of:  5.00000E+00 is  6.98970E-01
Logarithm of:  5.50000E+00 is  7.40363E-01
Logarithm of:  6.00000E+00 is  7.78151E-01
Logarithm of:  6.50000E+00 is  8.12913E-01
Logarithm of:  7.00000E+00 is  8.45098E-01
Logarithm of:  7.50000E+00 is  8.75061E-01
Logarithm of:  8.00000E+00 is  9.03090E-01
Logarithm of:  8.50000E+00 is  9.29419E-01
Logarithm of:  9.00000E+00 is  9.54243E-01
Logarithm of:  9.50000E+00 is  9.77724E-01
Logarithm of:  1.00000E+01 is  1.00000E+00
mjd85@stroustrup:~/Documents/214/labs/04$ exit
exit

Script done on Tue 01 Mar 2016 02:09:37 PM EST
