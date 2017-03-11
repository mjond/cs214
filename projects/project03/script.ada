Script started on Thu 25 Feb 2016 04:03:20 PM EST
mjd85@zuse:~/Documents/214/projects/project03$ cat grade_switch.adb
--grade_switch.java computes corresponding letter grade 

--Input: number grade/percentage
--Precondition: input is a positive number between 1-10
--Output: corresponding letter grade to percentage

--Created by: Mark Davis, CS 214, Calvin College
--Date: February 25, 2016
--Model Code: CS 214 lab03
------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure grade_switch is

	grade : String(1..9) := "         "; --declare variable for average grade
	charsRead : Natural; --declare read integer

	function letterCode(grade: in string) return string is --function to for case statement
	tim: Integer := Integer'Value(grade); --convert input to an integer
	begin
		--Case statement
		tim := tim/10; //integer division for case statement
		case tim is
		when 10 | 9=> return "A"; --if grade is 9 or 10
		when 8  => return "B"; --if 8, return "B"
		when 7  => return "C";
		when 6  => return "D";
		when others => return "F";
		end case; --end case statement
	end letterCode; --end function

begin --begin main program
	Put("Enter your average: "); -- prompt for input
	Get_Line(grade, charsRead); -- read input and store in grade variable
	Put( letterCode(grade) ); -- compute corresponding letter grade
	New_Line; --new line
end grade_switch;
mjd85@zuse:~/Documents/214/projects/project03$ gnatmake grdae   ade_switch
gnatmake: "grade_switch" up to date.
mjd85@zuse:~/Documents/214/projects/project03$ ./grade_switch
Enter your average: 95
A
mjd85@zuse:~/Documents/214/projects/project03$ ./grade_switch
Enter your average: 55
F
mjd85@zuse:~/Documents/214/projects/project03$ ./grade_switch
Enter your average: 67
D
mjd85@zuse:~/Documents/214/projects/project03$ ./grade_switch
Enter your average: 78
C
mjd85@zuse:~/Documents/214/projects/project03$ ./grade_switch
Enter your average: 88
B
mjd85@zuse:~/Documents/214/projects/project03$ ./grade_switch
Enter your average: 100
A
mjd85@zuse:~/Documents/214/projects/project03$ exit
exit

Script done on Thu 25 Feb 2016 04:04:08 PM EST
