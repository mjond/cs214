-- flying_bird.adb gives flying bird-related definitions
--  by over-riding Bird-related definitions.
--
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Flying_Bird_Package is

 ----------------------------------------------------
 -- A a walking bird's movement (Over-rides Bird.Movement())          -
 -- Receive: A_Walking_Bird, a Walking_Bird_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Movement(A_Flying_Bird : in Flying_Bird_Type) return string is
begin
	return "flew";
end Movement;

end Flying_Bird_Package;
