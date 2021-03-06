-- kiwi_package.ads gives kiwi related declarations,
--
--  and derives kwiw from Walking_Bird.
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------

with Walking_Bird_Package; use Walking_Bird_Package;

package Kiwi_Package is

 type Kiwi_Type is new Walking_Bird_Type with private;

 ----------------------------------------------------
 -- A Kiwi's Call (Over-rides Bird.Call())         -
 -- Receive: A_Kiwi, a Kiwi_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function Call(A_Kiwi : in Kiwi_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Kiwi                      -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Kiwi, a "Kiwi_Type.             -
 -- Return: "Kiwi".                               -
 -----------------------------------------------------
function Type_Name(A_Kiwi : in Kiwi_Type) return String;

private
type Kiwi_Type is new Walking_Bird_Type with
record
	null;
end record;

end Kiwi_Package;
