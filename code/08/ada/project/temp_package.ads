-- name_package.ads declares the Name type and its operations.
--
-- Begun by: Dr. Adams, CS 214 at Calvin College.
-- Completed by: Mark Davis
-- Date: April 8, 2016
--------------------------------------------------------------

package Temp_Package is

type Temperature is private;

procedure Init(Temp: out Temperature; degree : in float; scale : in character);
function isValid(degree : in float; scale : in character) return boolean;
function getDegree(Temp : in Temperature) return Float;
function getScale(Temp : in Temperature) return character;
procedure setCelsius(Temp : out Temperature);
procedure setKelvin(Temp : out Temperature);
procedure setFahrenheit(Temp : out Temperature);
procedure raiseTemp(Temp : out Temperature; addition : in float);
procedure lowerTemp(Temp : out Temperature; subtraction : in float);
function equals(Temp : in Temperature; Temp_2 : in Temperature) return boolean;
function lessThan(Temp : in Temperature; Temp_2 : in Temperature) return boolean;
procedure printTemp(Temp: in Temperature) ; 
procedure readTemp(Temp: out Temperature);

private
	type Temperature is record
	myDegree : float;
	myScale : character;
	end record;

end Temp_Package;
