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
