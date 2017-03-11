Script started on Thu 14 Apr 2016 09:03:41 PM EDT
mjd85@chomsky:~/Documents/214/code/08/ada/project$ cat tmep   emp
cat: temp: No such file or directory
mjd85@chomsky:~/Documents/214/code/08/ada/project$ cat temp_package.adb
--temp_package defines operations for Temperature type

--Created by: Mark Davis
--Date: April 12, 2016
--project08, CS214, CALVIN COLLEGE
-------------------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;

package body Temp_Package is

	newTemp1, newTemp2 : Temperature; --declare copy temperatures

----------------------------------------------
  -- Init initializes a Temperature variable          
  -- Receive: Temp, a Temperature variable
  --          degree, the degree
  -- 	      scale, the scale  
  -- Return: Temp, its fields set to degree
  -- 				and scale     
  ----------------------------------------------
  procedure Init(Temp: out Temperature; degree : in float; scale : in character) is
  begin
	if isValid(degree, scale) then
	  Temp.myDegree := degree;
	  Temp.myScale := scale;
	end if;
  end Init;

  ----------------------------------------------
  -- isValid() validates a temperature       
  -- Receive: scale, a string
  -- 	      degree, a float                     
  -- PRE: scale and degree have been initialized            
  -- Return: true or false                     
  ----------------------------------------------
  function isValid(degree : in float; scale : in character) return boolean is
  begin
	if scale = 'k' or scale = 'K' then --if Kelvin
		if degree < 0.0 then --and below absolute zero
		  return false;
		end if;

	elsif scale = 'c' or scale = 'C' then --if Celsius
		if degree < -237.0 then --and below absolute zero
		  return false;
		end if;

	elsif scale = 'f' or scale = 'F' then -- if Fahrenheit
		if degree < -459.0 then --and below absolute zero
		  return false;
		end if;
	else
		return true; --otherwise it's valid and return true
	end if;
	return true;
  end isValid;

  ----------------------------------------------
  -- getDegree(Temperature) retrieves Temp.myDegree       
  -- Receive: Temp, a Temperature                      
  -- PRE: Temp has been initialized.            
  -- Return: Temp.myDegree                     
  ----------------------------------------------
  function getDegree(Temp : in Temperature) return Float is
  begin
	return Temp.myDegree;
  end getDegree;

  ----------------------------------------------
  -- getScale(Temperature) retrieves Temp.myDegree       
  -- Receive: Temp, a Temperature                      
  -- PRE: Temp has been initialized.            
  -- Return: Temp.myScale                     
  ----------------------------------------------
  function getScale(Temp : in Temperature) return character is
  begin
	return Temp.myScale;
  end getScale;

  ----------------------------------------------
  -- setCelsius() sets a temperature to Celsius
  -- Receive: Temp, a temperature                      
  -- PRE: Temp has been initialized.            
  -- POST: temperature now in celsius                     
  ----------------------------------------------
  procedure setCelsius(Temp : out Temperature) is
  begin
	if Temp.myScale = 'k' or Temp.myScale = 'K' then
	  Temp.myDegree := (Temp.myDegree - 273.15); -- conversion equation
	  Temp.myScale := 'C'; --change scale
	end if;
	if Temp.myScale = 'f' or Temp.myScale = 'F' then
	  Temp.myDegree := ((Temp.myDegree - 32.0) * (5.0/9.0)); --conversion equation
	  Temp.myScale := 'C';
	end if;
  end setCelsius;

  ----------------------------------------------
  -- setKelvin() sets a temperature to Kelvin
  -- Receive: temp, a Temperature                      
  -- PRE: Temp has been initialized.            
  -- POST: temperature now in Kelvin                     
  ----------------------------------------------
  procedure setKelvin(Temp : out Temperature) is
  begin
	if Temp.myScale = 'C' or Temp.myScale = 'c' then
	  Temp.myDegree := (Temp.myDegree + 273.15); -- conversion equation
	  Temp.myScale := 'K';
	end if;
	if Temp.myScale = 'f' or Temp.myScale = 'F' then
	  Temp.myDegree := ((Temp.myDegree + 459.67) * (5.0/9.0)); -- conversion equation
	  Temp.myScale := 'K';
	end if;
  end setKelvin;

  ----------------------------------------------
  -- setFahrenheit() sets a temperature to Fahrenheit
  -- Receive: Temp, a Temperature                      
  -- PRE: Temp has been initialized.            
  -- POST: temperature now in Fahrenheit                     
  ----------------------------------------------
  procedure setFahrenheit(Temp : out Temperature) is
  begin
	if Temp.myScale = 'c' or Temp.myScale = 'C' then
	  Temp.myDegree := (Temp.myDegree * (9.0/5.0) + 32.0); -- conversion equation
	  Temp.myScale := 'F';
	end if;
	if Temp.myScale = 'k' or Temp.myScale = 'K' then
	  Temp.myDegree := ((Temp.myDegree * (9.0/5.0)) - 459.67); --conversion equation
	  Temp.myScale := 'F';
	end if;
  end setFahrenheit;

  ----------------------------------------------
  -- raiseTemp() adds a new degree to a Temperature
  -- Receive: Temp, a Temperature
  -- 	      addition, a float                      
  -- PRE: Temp has been initialized.            
  -- POST: myDegree has new value                     
  ----------------------------------------------
  procedure raiseTemp(Temp : out Temperature; addition : in float) is
  begin
	Temp.myDegree := Temp.myDegree + addition; -- add new degree
  end raiseTemp;


  ----------------------------------------------
  -- lowerTemp() subtracts a new degree to a Temperature
  -- Receive: Temp, a Temperature
  -- 	      subtraction, a float                      
  -- PRE: Temp has been initialized.            
  -- POST: myDegree has new value                     
  ----------------------------------------------
  procedure lowerTemp(Temp : out Temperature; subtraction : in float) is
  begin
	Temp.myDegree := Temp.myDegree - subtraction; -- subtract new degree
  end lowerTemp;

  ----------------------------------------------
  -- equals() compares two temperatures
  -- Receive: Temp, a Temperature
  -- 	      Temp_2, a Temperature                     
  -- PRE: Temp has been initialized. 
  --  	  Temp_2 has been initialized           
  -- Return: true or false                    
  ----------------------------------------------
  function equals(Temp : in Temperature; Temp_2 : in Temperature) return boolean is
  begin
	Init(newTemp1, getDegree(Temp), getScale(Temp)); -- create copies
	Init(newTemp2, getDegree(Temp_2), getScale(Temp_2)); -- so values are not changed

	setFahrenheit(newTemp1); --convert to F
	setFahrenheit(newTemp2); --so they're in the same scale

	if newTemp1.myDegree = newTemp2.myDegree then --if equal, return true; else false
		return true;
	else
		return false;
	end if;

  end equals;

  ----------------------------------------------
  -- lessThan() compares two temperatures
  -- Receive: Temp, a Temperature
  -- 	      Temp_2, a Temperature                     
  -- PRE: Temp has been initialized. 
  --  	  Temp_2 has been initialized           
  -- Return: true or false                    
  ----------------------------------------------
  function lessThan(Temp : in Temperature; Temp_2 : in Temperature) return boolean is
  begin
 	Init(newTemp1, getDegree(Temp), getScale(Temp)); --create copies
	Init(newTemp2, getDegree(Temp_2), getScale(Temp_2)); --so real values are not changed

	setFahrenheit(newTemp1); -- set to F
	setFahrenheit(newTemp2); -- so same scale is used in comparison

	if newTemp1.myDegree < newTemp2.myDegree then --if they are equal, return true; else false
		return true;
	else
		return false;
	end if;
  end lessThan;

  ----------------------------------------------
  -- printTemp() prints a temperature
  -- Receive: Temp, a Temperature                    
  -- PRE: Temp has been initialized. 
  -- Return: string of temperature                  
  ---------------------------------------------- 
  procedure printTemp(Temp: in Temperature) is
  begin
	Put( Temp.myDegree, Aft => 2, Exp => 0  ); --ouput Degree w/out scientific notation
	Put( " " );
	Put( Temp.myScale ); --output scale
  end printTemp;

  ----------------------------------------------
  -- readTemp() reads a Temperature from user
  -- Receive: Temp, a Temperature                    
  -- PRE: Temp has been initialized. 
  -- POST: Temp has new values               
  ---------------------------------------------- 
  procedure readTemp(Temp: out Temperature) is
	user_input : float; --declare variables for input
	user_scale : String(1..8) := "        ";
  begin
	Put("Enter degree: ");
	Get(user_input); --get input
	Put("Enter scale: ");
	Get(user_scale); --get input

	if isValid(user_input, user_scale(1)) then --if the entered values are valid
		Temp.myDegree := user_input; --set instance variables
		Temp.myScale := user_scale(1);
	else
		Put("Invalid - readTemp()"); --otherwise err message
	end if;
  end readTemp;

end Temp_Package;

  


mjd85@chomsky:~/Documents/214/code/08/ada/project$ cat temp_a package.ads
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
mjd85@chomsky:~/Documents/214/code/08/ada/project$ cat testrunner.adb
-- TestRunner.adb "test-drives" the Temperature type.
--
-- By: Mark Davis
-- Date: April 14, 2016
----------------------------------------------

with Ada.Text_IO; use Ada.Text_IO;
with Temp_Package; use Temp_Package;
with Ada.Float_Text_IO; use Ada.Float_Text_IO;


procedure TestRunner is

baseTemp : Temp_Package.Temperature;
limitTemp : Temp_Package.Temperature;
stepValue : float;

begin
   
	Put("Enter values for base temperature: ");
	readTemp(baseTemp);

	Put("Enter values for limit temperature: ");
	readTemp(limitTemp);

	Put("Enter step value: ");
	Get(stepValue);

	while(lessThan(baseTemp, limitTemp))
	 loop
	 printTemp(baseTemp); 
	 Put("   ");
	 setCelsius(baseTemp);
	 printTemp(baseTemp); 
	 Put("   ");
	 setKelvin(baseTemp);
	 printTemp(baseTemp); 
	 Put("   ");
	 setFahrenheit(baseTemp);
	 raiseTemp(baseTemp, stepValue);
	 New_Line;
	end loop;

end TestRunner;
mjd85@chomsky:~/Documents/214/code/08/ada/project$ gnatmake testrunner.adb
gnatmake: "testrunner" up to date.
mjd85@chomsky:~/Documents/214/code/08/ada/project$ ./testrunner
Enter values for base temperature: Enter degree: 0.0
Enter scale: F       
Enter values for limit temperature: Enter degree: 100.0
Enter scale: C       
Enter step value: 2.5
 0.00 F   -17.78 C   255.37 K   
 2.50 F   -16.39 C   256.76 K   
 5.00 F   -15.00 C   258.15 K   
 7.50 F   -13.61 C   259.54 K   
10.00 F   -12.22 C   260.93 K   
12.50 F   -10.83 C   262.32 K   
15.00 F   -9.44 C   263.71 K   
17.50 F   -8.06 C   265.09 K   
20.00 F   -6.67 C   266.48 K   
22.50 F   -5.28 C   267.87 K   
25.00 F   -3.89 C   269.26 K   
27.50 F   -2.50 C   270.65 K   
30.00 F   -1.11 C   272.04 K   
32.50 F    0.28 C   273.43 K   
35.00 F    1.67 C   274.82 K   
37.50 F    3.06 C   276.21 K   
40.00 F    4.44 C   277.59 K   
42.50 F    5.83 C   278.98 K   
45.00 F    7.22 C   280.37 K   
47.50 F    8.61 C   281.76 K   
50.00 F   10.00 C   283.15 K   
52.50 F   11.39 C   284.54 K   
55.00 F   12.78 C   285.93 K   
57.50 F   14.17 C   287.32 K   
60.00 F   15.55 C   288.70 K   
62.50 F   16.94 C   290.09 K   
65.00 F   18.33 C   291.48 K   
67.50 F   19.72 C   292.87 K   
70.00 F   21.11 C   294.26 K   
72.50 F   22.50 C   295.65 K   
75.00 F   23.89 C   297.04 K   
77.50 F   25.28 C   298.43 K   
80.00 F   26.67 C   299.82 K   
82.50 F   28.05 C   301.20 K   
85.00 F   29.44 C   302.59 K   
87.50 F   30.83 C   303.98 K   
90.00 F   32.22 C   305.37 K   
92.50 F   33.61 C   306.76 K   
95.00 F   35.00 C   308.15 K   
97.50 F   36.39 C   309.54 K   
100.00 F   37.78 C   310.93 K   
102.50 F   39.17 C   312.32 K   
105.00 F   40.55 C   313.70 K   
107.50 F   41.94 C   315.09 K   
110.00 F   43.33 C   316.48 K   
112.50 F   44.72 C   317.87 K   
115.00 F   46.11 C   319.26 K   
117.50 F   47.50 C   320.65 K   
120.00 F   48.89 C   322.04 K   
122.50 F   50.28 C   323.43 K   
125.00 F   51.66 C   324.81 K   
127.50 F   53.05 C   326.20 K   
130.00 F   54.44 C   327.59 K   
132.50 F   55.83 C   328.98 K   
135.00 F   57.22 C   330.37 K   
137.50 F   58.61 C   331.76 K   
140.00 F   60.00 C   333.15 K   
142.50 F   61.39 C   334.54 K   
145.00 F   62.78 C   335.93 K   
147.50 F   64.16 C   337.31 K   
150.00 F   65.55 C   338.70 K   
152.50 F   66.94 C   340.09 K   
155.00 F   68.33 C   341.48 K   
157.50 F   69.72 C   342.87 K   
160.00 F   71.11 C   344.26 K   
162.50 F   72.50 C   345.65 K   
165.00 F   73.89 C   347.04 K   
167.50 F   75.28 C   348.43 K   
170.00 F   76.66 C   349.81 K   
172.50 F   78.05 C   351.20 K   
175.00 F   79.44 C   352.59 K   
177.50 F   80.83 C   353.98 K   
180.00 F   82.22 C   355.37 K   
182.50 F   83.61 C   356.76 K   
185.00 F   85.00 C   358.15 K   
187.50 F   86.39 C   359.54 K   
190.00 F   87.78 C   360.93 K   
192.50 F   89.16 C   362.31 K   
195.00 F   90.55 C   363.70 K   
197.50 F   91.94 C   365.09 K   
200.00 F   93.33 C   366.48 K   
202.50 F   94.72 C   367.87 K   
205.00 F   96.11 C   369.26 K   
207.50 F   97.50 C   370.65 K   
209.99 F   98.89 C   372.04 K   
mjd85@chomsky:~/Documents/214/code/08/ada/project$ exit
exit

Script done on Thu 14 Apr 2016 09:04:36 PM EDT
