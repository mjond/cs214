-- walking_bird.ads gives walking_bird-related declarations,
--
--  and derives walking_bird from Bird.
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------

with Bird_Package; use Bird_Package;

package Walking_Bird_Package is

type Walking_Bird_Type is new Bird_Type with private;

 ----------------------------------------------------
 -- A a walking bird's movement (Over-rides Bird.Movement())          -
 -- Receive: A_Walking_Bird, a Walking_Bird_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Movement(A_Walking_Bird : in Walking_Bird_Type) return string;

private

  type Walking_Bird_Type is new Bird_Type with
  record
  	My_Name : String(1 .. 6);
  end record;

end Walking_Bird_Package;
