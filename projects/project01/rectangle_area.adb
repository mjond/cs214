-- rectangle_area.adb computes area of rectangles
--
-- input: length of rectangle
--	  width of rectangle
--precondition: length and width are positive
--output: are of rectangle

--created by: Mark Davis, cs 214, Calvin College
--Date: February 9, 2016
--Model code: CS 214 Lab01
------------------------------------------------

with Ada.Text_IO, Ada.Float_Text_IO;
use  Ada.Text_IO, Ada.Float_Text_IO;

procedure rectangle_area is
	
	length, width, area : float;

	-- function rectangle_area computes rectangle's area, given length and width
	-- paramater: length, width, both floats
	-- precondition: length > 0, width > 0
	-- return: the area of a rectangle
	-------------------------------------
	function rectangleArea(width, length: in float) return float is
	begin
		return length * width;
	end rectangleArea;

begin
	Put_Line("To compute the area of a rectangle, ");
	Put("enter its width: "); --prompt for width
	Get(width); --store value in variable 'width'
	Put("enter its length: "); -- prompt for length
	Get(length); --store value in variable 'length'

	area:= rectangleArea(length, width); --compute area by calling rectangleArea function
	
	Put("The area is: ");--output message
	Put(area);--output area value
	New_Line;
end rectangle_area; --end program
