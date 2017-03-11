-- kwiw_package.adb gives kiwi-related definitions
--  by over-riding walking_Bird-related definitions.
--
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------
with Ada.Text_IO;
use Ada.Text_IO;
package body Kiwi_Package is


 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())         -
 -- Receive: A_Kiwi, a Kiwi_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function Call(A_Kiwi : in Kiwi_Type) return String is
begin
	return "honk!";
end Call;

 -----------------------------------------------------
 -- Determine type of a Kiwi                       -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Kiwi, a "Kiwi_Type.                  -
 -- Return: "Kiwi".                                 -
 -----------------------------------------------------
function Type_Name(A_Kiwi : in Kiwi_Type) return String is
begin
return "Kiwi";
end Type_Name;

end Kiwi_Package;
