-- flying_bird.ads gives flying_bird-related declarations,
--
--  and derives flying_bird from Bird.
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Flying_Bird_Package is

type Flying_Bird_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A a walking bird's movement (Over-rides Bird.Movement())-
 -- Receive: A_Walking_Bird, a Walking_Bird_Type.       -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Movement(A_Flying_Bird : in Flying_Bird_Type) return string;

private

  type Flying_Bird_Type is new Bird_Type with
  record
  	My_Name : String(1 .. 6);
  end record;

end Flying_Bird_Package;
