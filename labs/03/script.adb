Script started on Thu 18 Feb 2016 09:36:32 AM EST
mjd85@aiken:~/Documents/214/labs/03$ cat year_codes.adb
-- year_codes.adb converts academic year codes to corresponding years.
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
--
-- Input: year, a string
-- Precondition: year is one of "freshman", "sophomore", "junior", "senior"
-- Output: The year code (1, 2, 3 or 4) corresponding to year.
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO;
use  Ada.Text_IO, Ada.Integer_Text_IO;

procedure year_codes is

   year : String(1..9) := "         ";--valid input is 9 characters long
   charsRead : Natural;

function yearCode(year : string) return Integer is
begin
   if (year = "freshman ") then --if input is freshman
	return 1; --return 1
   elsif (year = "sophomore") then --if input is sophomore
	return 2; -- return 2
   elsif (year = "junior   ") then -- if input is junior
	return 3;--return 3
   elsif (year = "senior   ") then -- if input is senior
	return 4; --return 4
   else 
	return 0; --else return 0
   end if;--end if statement
end yearCode;--end function

begin                                          
   Put("Enter your academic year: ");           -- Prompt for input
   Get_Line(year, charsRead);                   -- Input
   Put( yearCode(year) );                       -- Convert and output
   New_Line;
end year_codes;

mjd85@aiken:~/Documents/214/labs/03$ sc  gnatmake year_codes.adb
gnatmake: "year_codes" up to date.
mjd85@aiken:~/Documents/214/labs/03$ ./year_codes
Enter your academic year: f sophomore
          2
mjd85@aiken:~/Documents/214/labs/03$ ./year_codes
Enter your academic year: senior
          4
mjd85@aiken:~/Documents/214/labs/03$ ./year_codes
Enter your academic year: junior
          3
mjd85@aiken:~/Documents/214/labs/03$ ./year_codes
Enter your academic year: freshman
          1
mjd85@aiken:~/Documents/214/labs/03$ ./year_codes
Enter your academic year: prof
          0
mjd85@aiken:~/Documents/214/labs/03$ exit

Script done on Thu 18 Feb 2016 09:37:33 AM EST
