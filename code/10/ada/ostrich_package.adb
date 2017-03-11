-- ostrich_package.adb gives ostrich-related definitions
--  by over-riding walking_Bird-related definitions.
--
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------
with Ada.Text_IO;
use Ada.Text_IO;
package body Ostrich_Package is


 ----------------------------------------------------
 -- A Ostrich's Call (Over-rides Bird.Call())         -
 -- Receive: A_Ostrich, a Ostrich_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function Call(A_Ostrich : in Ostrich_Type) return String is
begin
	return "snork!";
end Call;

 -----------------------------------------------------
 -- Determine type of a Ostrich                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Ostrich, a "Ostrich_Type.                  -
 -- Return: "Ostrich".                                 -
 -----------------------------------------------------
function Type_Name(A_Ostrich : in Ostrich_Type) return String is
begin
return "Ostrich";
end Type_Name;

end Ostrich_Package;
