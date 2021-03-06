-- ostrich_package.ads gives ostrich related declarations,
--
--  and derives ostrich from Bird.
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------

with Walking_Bird_Package; use Walking_Bird_Package;

package Penguin_Package is

 type Penguin_Type is new Walking_Bird_Type with private;

 ----------------------------------------------------
 -- A Penguin's Call (Over-rides Bird.Call())       -
 -- Receive: A_Penguin, a Penguin_Type.             -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function Call(A_Penguin : in Penguin_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Penguin                      -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Penguin, a "Penguin_Type.             -
 -- Return: "Penguin".                               -
 -----------------------------------------------------
function Type_Name(A_Penguin : in Penguin_Type) return String;

private
type Penguin_Type is new Walking_Bird_Type with
record
	null;
end record;

end Penguin_Package;
