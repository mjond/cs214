-- circle_area.adb computes the area of a circle.
--
-- Input: The radius of the circle.
-- Precondition: The radius is a positive number.
-- Output: The area of the circle.
--
-- Begun by: Dr. Nelesen, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: February 4, 2016
----------------------------------------------------

with Ada.Text_IO, Ada.Integer_Text_IO; -- calling Float library
use  Ada.Text_IO, Ada.Integer_Text_IO; --using the library
with Ada.Text_IO, Ada.Float_Text_IO; -- calling Float library
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure circle_area is -- defining the function 

   radius, area : float; 

   -- function circleArea computes a circle's area, given its radius
   -- Parameter: r, a float
   -- Precondition: r >= 0.0
   -- Return: the area of the circle whose radius is r
   ----------------------------------------------------
   function circleArea(r: in float) return float is 
      PI : constant := 3.1415927; -- multiply by Pi
   begin
      return PI * r ** 2; -- compute radius
   end circleArea;

begin                           
   Put_Line("To compute the area of a circle,"); -- output prompt
   Put("enter its radius: "); -- prompt for radius
   Get(radius); --store value in radius

   area := circleArea(radius); -- compute area

   Put("The area is "); -- output area message
   Put(area); -- output area value
   New_Line; -- new line
end circle_area; -- end function
