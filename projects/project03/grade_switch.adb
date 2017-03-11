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

	function letterCode(grade: in string) return string is
	tim: Integer := Integer'Value(grade);
	begin
		--Case statement
		tim := tim/10;
		case tim is
		when 10 | 9=> return "A";
		when 8  => return "B";
		when 7  => return "C";
		when 6  => return "D";
		when others => return "F";
		end case;
	end letterCode;

begin
	Put("Enter your average: "); -- prompt for input
	Get_Line(grade, charsRead); -- read input and store in grade variable
	Put( letterCode(grade) ); -- compute corresponding letter grade
	New_Line; --new line
end grade_switch;
