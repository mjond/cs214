Script started on Thu 03 Mar 2016 09:23:50 AM EST
mjd85@hollerith:~/Documents/214/labs/05$ gn  cat   cat split.adb
-- split.adb splits an input string about a specified position.
--
-- Input: Astring, a string,
--        Pos, an integer.
-- Precondition: pos is in Astring'Range.
-- Output: The substrings Astring(Astring'First..Pos-1) and
--                        Astring(Pos..Astring'Last).
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: March 2, 2016
--------------------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;
use  Ada.Text_IO, Ada.Integer_Text_IO, Ada.Strings.Fixed;

procedure split is

   EMPTY_STRING : String := "                                        ";

   Astring, Part1, Part2 : String  := EMPTY_STRING;
   Pos, Chars_read       : Natural;

   ------------------------------------------------
   --  split() splits a string in two.           
   -- Receive: The_String, the string to be split,
   --          Position, the split index.        
   -- PRE: 0 < Position <= The_String.length(). 
   --     (Ada arrays are 1-relative by default)
   -- Passback: First_Part - the first substring,
   --           Last_Part - the second substring.
   ------------------------------------------------
 procedure splitString(Astring : in String; Pos : in integer; Part1, Part2 : out string) is --declare function
	begin
	Move(Astring(Astring'First .. Pos), Part1); --get first part of string
	Move(Astring(Pos + 1 .. Astring'Last), Part2); --get second part of string
 end splitString;


begin                                           -- Prompt for input
   Put("To split a string, enter the string: ");
   Get_Line(Astring, Chars_Read);
   Put("Enter the split position: ");
   Get(Pos);

   splitString(Astring, Pos, Part1, Part2); --call split function

   Put("The first part is ");
   Put_Line(Part1);
   Put(" and the second part is ");
   Put_Line(Part2);

end split;

mjd85@hollerith:~/Documents/214/labs/05$ gnatmake apl   spp lit.adb
gcc-4.6 -c split.adb
gnatbind -x split.ali
gnatlink split.ali
mjd85@hollerith:~/Documents/214/labs/05$ ./split
To split a string, enter the string: hello
Enter the split position: 1
The first part is h                                       
 and the second part is ello                                    
mjd85@hollerith:~/Documents/214/labs/05$ he  ./split
To split a string, enter the string: hello
Enter the split position: 3
The first part is hel                                     
 and the second part is lo                                      
mjd85@hollerith:~/Documents/214/labs/05$ s ./split
To split a string, enter the string: hello
Enter the split position: 6
The first part is hello                                   
 and the second part is                                         
mjd85@hollerith:~/Documents/214/labs/05$ exit    it works
it: command not found
mjd85@hollerith:~/Documents/214/labs/05$ exit
exit

Script done on Thu 03 Mar 2016 09:25:39 AM EST
