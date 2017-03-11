#TestRunner.rb tests Temperature.rb and outputs chart
#
#Created by: Mark Davis
#CALVIN COLLEGE, CS 214, project08
#April 12, 2016
#####################################################

require "./Temperature"

def testTemp
	#get user input for base temperature
	baseTemp = Temperatures::Temperature.new(100.0, "F")
	puts "Enter values for base temperature"
	baseTemp.readTemp()

	#get user input for limit temperature
	limitTemp = Temperatures::Temperature.new(100.0, "F")
	puts "Enter values for limit temperature"
	limitTemp.readTemp()

	#get user input for step value
	puts "Enter step value: "
	stepValue = gets.chomp.to_f

	while ( baseTemp.lessThan(limitTemp) ) do
		print baseTemp.printTemp 
		print " "
		baseTemp.setCelsius
		print baseTemp.printTemp 
		print " "
		baseTemp.setKelvin
		print baseTemp.printTemp 
		puts " "
		baseTemp.setFahrenheit
		baseTemp.raise(stepValue)
	end 
end

testTemp
