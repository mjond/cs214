Script started on Thu 28 Apr 2016 09:22:11 AM EDT
mjd85@sutherland:~/Documents/214/code/10/ada$ cat bird_P package.adb bird_package.ad s ds bidrs.    rds.adb
-- bird_package.adb gives Bird-related definitions
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: MArk davis
-- Date: April 21, 2016
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Bird_Package is


 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type in which My_Name = Name.    -
 ----------------------------------------------------
procedure Init(A_Bird : out Bird_Type; Name : in String) is
begin
	A_Bird.My_Name := Name;
end Init;

 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
function Name(A_Bird : in Bird_Type) return String is
begin
	return A_Bird.My_Name;
end Name;
 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
function Call(A_Bird : in Bird_Type) return STring is
begin
	return "Squaaaaaawk!";
end Call;

 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
function Type_Name(A_Bird : in Bird_Type) return STring is
begin
	return "Bird";
end Type_Name;

 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
procedure Put(A_Bird : in Bird_Type'Class) is
begin
	Put( Name(A_Bird) );
	Put( ' ' );
	Put( Type_Name(A_Bird) );
	Put( " says " );
	Put( Call(A_Bird) );
end Put;

 ----------------------------------------------------
 -- Determine movement type for a bird              -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "movement".                             -
 ----------------------------------------------------
function Movement(A_Bird : in Bird_Type) return String is
begin
	return "moved";
end movement;


end Bird_Package;

-- bird_package.ads gives Bird-related declarations
--
-- Begun by: Dr. Adams, for CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 21, 2016
---------------------------------------------------

package Bird_Package is

type Bird_Type is tagged private;
 ----------------------------------------------------
 -- initialization                                  -
 -- Receive: A_Bird, a Bird_Type;                   -
 --          Name, a String                         -
 -- Return: a Bird_Type whose My_Name = Name.       -
 ----------------------------------------------------
procedure Init(A_Bird : out Bird_Type; Name : in String);
 ----------------------------------------------------
 -- Name accessor                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: A_Bird.My_Name.                         -
 ----------------------------------------------------
function Name(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- A Bird's Call                                   -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: a default bird-call ("Squawk!").        -
 ----------------------------------------------------
function Call(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- Determine type of a Bird (for derived types)    -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "Bird".                                 -
 ----------------------------------------------------
function Type_Name(A_Bird : in Bird_Type) return String;
 ----------------------------------------------------
 -- Output a Bird                                   -
 -- Receive: A_Bird, a Bird or subclass of Bird.    -
 -- Output: Everything known about A_Bird           -
 ----------------------------------------------------
procedure Put(A_Bird : in Bird_Type'Class);

 ----------------------------------------------------
 -- Determine movement type for a bird              -
 -- Receive: A_Bird, a Bird_Type.                   -
 -- Return: "movement".                             -
 ----------------------------------------------------
function Movement(A_Bird : in Bird_Type) return String;

private

  type Bird_Type is
	tagged record
	My_Name : String(1..6);
	end record;

end Bird_Package;
-- birds.adb tests our Birds type
--
-- Begun by: Dr. Adams, CS 214 at Calvin College
-- Completed by: Mark Davis
-- Date: April 21, 2016
-----------------------------------------------------

with Ada.Text_IO, Bird_Package, Duck_Package, Goose_Package, Owl_Package, Penguin_Package, Ostrich_Package, Kiwi_Package, Flying_Bird_Package, Walking_Bird_Package;
use Ada.Text_IO, Bird_Package, Duck_Package, Goose_Package, Owl_Package, Penguin_Package, Ostrich_Package, Kiwi_Package, Flying_Bird_Package, Walking_Bird_Package;


procedure Birds is

-- Bird1 : Bird_Type;       -- base class
 Bird2 : Duck_Type;       -- derived class 1
 Bird3 : Goose_Type;      -- derived class 2
 Bird4 : Owl_Type;        -- derived class 3
 Bird5 : Penguin_Type;
 Bird6 : Ostrich_Type;
 Bird7 : Kiwi_Type;

begin
--Init(Bird1, "Tweety");
--Put(Bird1); New_Line;

Init(Bird2, "Donald");
Put(Bird2); New_Line;

Init(Bird3, "Mother");
Put(Bird3); New_Line;

Init(Bird4, "Woodsy");
Put(Bird4); New_Line;

Init(Bird5, "Peterr");
Put(Bird5); New_Line;

Init(Bird6, "Orvill");
Put(Bird6); New_Line;

Init(Bird7, "Fruitt");
Put(Bird7); New_Line;

 New_Line;
end Birds;

mjd85@sutherland:~/Documents/214/code/10/ada$ cat D dck  uck_package.adb duck_package.adb s
-- duck_package.adb gives Duck-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 25, 2016
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Duck_Package is


 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Call(A_Duck : in Duck_Type) return String is
begin
  return "Quack!";
end Call;
 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
function Type_Name(A_Duck : in Duck_Type) return String is
begin
  return "Duck";
end Type_Name;

end Duck_Package;
-- duck_package.ads gives Duck-related declarations,
--
--  and derives Duck from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 21, 2016
---------------------------------------------------

with Flying_Bird_Package; use Flying_Bird_Package;

package Duck_Package is

type Duck_Type is new Flying_Bird_Type with private;

 ----------------------------------------------------
 -- A Duck's Call (Over-rides Bird.Call())          -
 -- Receive: A_Duck, a Duck_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Call(A_Duck : in Duck_Type) return string;

 ------------------------------------------------------------
 -- Determine type of a Duck (Over-rides Bird.Type_Name()) -
 -- Receive: A_Duck, a Duck_Type.                          -
 -- Return: "Duck".                                        -
 -----------------------------------------------------------
function Type_Name(A_Duck : in Duck_Type) return String;

private

  type Duck_Type is new Flying_Bird_Type with
  record
  	null;
  end record;

end Duck_Package;
mjd85@sutherland:~/Documents/214/code/10/ada$ cat owl_penguin.adb owl_penguin.ads
cat: owl_penguin.adb: No such file or directory
cat: owl_penguin.ads: No such file or directory
mjd85@sutherland:~/Documents/214/code/10/ada$ cat owl_package.adb owl_a package.ads
-- owl_package.adb gives Owl-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 25, 2016
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Owl_Package is


 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
function Call(A_Owl : in Owl_Type) return String is
begin
	return "CANADA";
end Call;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
function Type_Name(A_Owl : in Owl_Type) return string is
begin
return "Owl";
end Type_Name;

end Owl_Package;
-- owl_package.ads gives Owl-related declarations,
--  and derives Owl from Bird.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 25, 2016
---------------------------------------------------

with Flying_Bird_Package; use Flying_Bird_Package;

package Owl_Package is

type Owl_Type is new Flying_Bird_Type with private;
 ----------------------------------------------------
 -- A Owl's Call (Over-rides Bird.Call())           -
 -- Receive: An_Owl, an Owl_Type.                   -
 -- Return: "Whoo!"                                 -
 ----------------------------------------------------
function Call(A_Owl : in Owl_Type) return string;

 -----------------------------------------------------
 -- Determine type of a Owl                          -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: An_Owl, an Owl_Type.                    -
 -- Return: "Owl".                                   -
 -----------------------------------------------------
function Type_Name(A_Owl : in Owl_Type) return string;

private
type Owl_Type is new Flying_Bird_Type with
record
	null;
end record;

end Owl_Package;
mjd85@sutherland:~/Documents/214/code/10/ada$ cat goose_package.adb goose_package.ads
-- goose_package.adb gives Goose-related definitions
--  by over-riding Bird-related definitions.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 25, 2016
---------------------------------------------------
with Ada.Text_IO;
use Ada.Text_IO;
package body Goose_Package is


 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose_Type.                 -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function Call(A_Goose : in Goose_Type) return String is
begin
	return "Honk!";
end Call;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose_Type.                  -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
function Type_Name(A_Goose : in Goose_Type) return String is
begin
return "Goose";
end Type_Name;

end Goose_Package;
-- goose_package.ads gives Goose-related declarations,
--
--  and derives Goose from Bird.
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------

with Flying_Bird_Package; use Flying_Bird_Package;

package Goose_Package is

 type Goose_Type is new Flying_Bird_Type with private;

 ----------------------------------------------------
 -- A Goose's Call (Over-rides Bird.Call())         -
 -- Receive: A_Goose, a Goose.                      -
 -- Return: "Honk!"                                 -
 ----------------------------------------------------
function Call(A_Goose : in Goose_Type) return String;

 -----------------------------------------------------
 -- Determine type of a Goose                        -
 -- (Over-rides Bird.Type_Name())                    -
 -- Receive: A_Goose, a Goose.                       -
 -- Return: "Goose".                                 -
 -----------------------------------------------------
function Type_Name(A_Goose : in Goose_Type) return String;

private
type Goose_Type is new Flying_Bird_Type with
record
	null;
end record;

end Goose_Package;
mjd85@sutherland:~/Documents/214/code/10/ada$ g cat flying_bird_package.adb flying_bird_package.ads
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
mjd85@sutherland:~/Documents/214/code/10/ada$ cat wali king_bird_package.adb walking_bird_package.ads
-- walking_bird.adb gives walking bird-related definitions
--  by over-riding Bird-related definitions.
--
-- Completed by: Mark Davis
-- Date: April 26, 2016
---------------------------------------------------

with Ada.Text_IO;
use Ada.Text_IO;

package body Walking_Bird_Package is

 ----------------------------------------------------
 -- A a walking bird's movement (Over-rides Bird.Movement())          -
 -- Receive: A_Walking_Bird, a Walking_Bird_Type.                   -
 -- Return: "Quack!"                                -
 ----------------------------------------------------
function Movement(A_Walking_Bird : in Walking_Bird_Type) return string is
begin
	return "walked";
end Movement;

end Walking_Bird_Package;
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
mjd85@sutherland:~/Documents/214/code/10/ada$ cat ostrich_packar ge.adb ostrich_package.ads
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
mjd85@sutherland:~/Documents/214/code/10/ada$ cat penguin_a package.adb penguin_package.ads
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
mjd85@sutherland:~/Documents/214/code/10/ada$ cat kiwi_package.adb kiwi_package.ads
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
mjd85@sutherland:~/Documents/214/code/10/ada$ gnatmake birds.adb
gnatmake: "birds" up to date.
mjd85@sutherland:~/Documents/214/code/10/ada$ ./birds
Donald Duck says Quack!
Mother Goose says Honk!
Woodsy Owl says CANADA
Peterr Penguin says huh huh huh!
Orvill Ostrich says snork!
Fruitt Kiwi says honk!

mjd85@sutherland:~/Documents/214/code/10/ada$ exit
exit

Script done on Thu 28 Apr 2016 09:24:40 AM EDT
