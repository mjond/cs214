-- ostrich_package.ads gives ostrich related declarations,
--
--  and derives ostrich from Bird.
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------

with Walking_Bird_Package; use Walking_Bird_Package;

package Ostrich_Package is

 type Ostrich_Type is new Walking_Bird_Type with private;

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function Call(A_Ostrich : in Ostrich_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
function Type_Name(A_Ostrich : in Ostrich_Type) return String;

private
type Ostrich_Type is new Walking_Bird_Type with
record
	null;
end record;

end Ostrich_Package;
