-- penguin_package.adb gives penguin-related definitions
--  by over-riding walking_Bird-related definitions.
--
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------
with Ada.Text_IO;
use Ada.Text_IO;
package body Penguin_Package is


 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())         -
 -- Receive: A_Penguin, a Penguin_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function Call(A_Penguin : in Penguin_Type) return String is
begin
	return "huh huh huh!";
end Call;

 -----------------------------------------------------
 -- Determine type of a Penguin                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, a "Penguin_Type.                  -
 -- Return: "Penguin".                                 -
 -----------------------------------------------------
function Type_Name(A_Penguin : in Penguin_Type) return String is
begin
return "Penguin";
end Type_Name;

end Penguin_Package;
