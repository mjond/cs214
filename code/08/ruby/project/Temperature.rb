#Temperature.rb is a class for Temperature
#
#Created by: Mark Davis, CS 214, CALVIN COLLEGE
#Date: April 12, 2016
#project08
##############################################
module Temperatures

class Temperature

  #####################################################
  # initialize() constructs Temperature instance variables
  # POST: myDegree and myScale have values
  #####################################################
  def initialize(degree, scale)
	if isValid(degree, scale)   #check if valid
		@myDegree = degree #then set instance variables
		@myScale = scale
	end
  end

  #####################################################
  # isValid() checks valid scales and temperatures
  # Return: true if valid, false if not valid
  #####################################################
  def isValid(degree, scale)
	if scale == "k" or scale == "K" and degree < 0.0 #validity for Kelvin
		return false
	elsif scale == "c" or scale == "C" and degree < -237.0 #validity for Celsius
		return false
	elsif scale == "f" or scale == "F" and degree < -459.0 #validity for F
		return false
	else
		return true
	end
  end


  #####################################################
  # attr_reader is accessor for instance variables
  # Return: myDegree or myScale
  #####################################################
  attr_reader :myDegree, :myScale #accessors for myDegree and myScale

  #####################################################
  # setCelsius() sets values to Celsius from other scales
  # POST: myDegree has new value, myScale has new value
  #####################################################
  def setCelsius
	if @myScale == 'K' or @myScale == 'k'
		@myDegree = @myDegree - 273.15 #conversion equation
		@myScale = 'C'
	elsif @myScale == 'F' or @myScale == 'f'
		@myDegree = (@myDegree - 32.0) * (5.0/9.0) #conversion equation
		@myScale = 'C'
	end
  end

  #####################################################
  # setKelvin() sets values to Kelvin from other scales
  # POST: myDegree has new value, myScale has new value
  #####################################################
  def setKelvin
	if @myScale == 'C' or @myScale == 'c'
		@myDegree = @myDegree + 273.15 #conversion equation
		@myScale = 'K'
	elsif @myScale == 'F' or @myScale == 'f'
		@myDegree = (@myDegree + 459.67) * (5.0/9.0) #conversion equation
		@myScale = 'K'
	end
  end

  #####################################################
  # setFahrenheit() sets values to F from other scales
  # POST: myDegree has new value, myScale has new value
  #####################################################
  def setFahrenheit
	if @myScale == 'C' or @myScale == 'c'
		@myDegree = @myDegree * (9.0/5.0) + 32.0 #conversion equation
		@myScale = 'F'
	elsif @myScale == 'K' or @myScale == 'k'
		@myDegree = @myDegree * (9.0/5.0) - 459.67 #conversion equation
		@myScale = 'F'
	end
  end

  #####################################################
  # raise() raises value of myDegree
  # POST: myDegree has new value
  #####################################################
  def raise(addition)
	@myDegree = @myDegree + addition #add on new temperature
  end

  #####################################################
  # lower() lowers value of myDegree
  # POST: myDegree has new value
  #####################################################
  def lower(subtraction)
	@myDegree = @myDegree - subtraction #add on new temperature
  end

  #####################################################
  # equals() compares two temperatures for equality
  # returns true if equal, false if not equal
  #####################################################
  def equals(deg2)
	result = false
	if @myScale == deg2.myScale #if scale is equal
		if @myDegree ==	deg2.myDegree #if degree is equal
			result = true
		end
	else
		if @myScale == 'K' or @myScale == 'k' #if Kelvin is scale
			deg2.setKelvin
		elsif @myScale == 'C' or @myScale == 'c' #if scale is Celsius
			deg2.setCelsius
		elsif @myScale == 'F' or @myScale == 'f' #if scale is F
			deg2.setFahrenheit
		end
		if @myDegree == deg2.myDegree #if degrees are equal
			result true
		end
	end
	return result	
  end

  #####################################################
  # lessThan() compares two temperatures for less than
  # returns true if less, false if not less
  #####################################################
  def lessThan(deg2)
	result = false
	if @myScale == deg2.myScale #if degrees are equal
		if @myDegree <	deg2.myDegree #if degrees are equal
			result = true
		end
	else
		if @myScale == 'K' or @myScale == 'k' #if scale is Kelvin
			deg2.setKelvin
		elsif @myScale == 'C' or @myScale == 'c' #if scale is Celsius
			deg2.setCelsius
		elsif @myScale == 'F' or @myScale == 'f' #if scale is F
			deg2.setFahrenheit
		end
		if @myDegree < deg2.myDegree #if less than
			result = true
		end
	end
	return result
  end

  #####################################################
  # readTemp() reads in a Temperature from user
  # POST: Temperature has new scale and new degree
  #####################################################
  def readTemp
	#get input for degree
	puts "Enter degree: "
	degree = gets.chomp.to_f #convert to a float
	@myDegree = degree
	#get input for scale
	puts "Enter scale: "
	scale = gets.chomp #convert to a char
	@myScale = scale
  end

  #####################################################
  # printTemp() prints out a Temperature
  # POST: Temperature has new scale and new degree
  #####################################################
  def printTemp
	"#{myDegree} #{myScale}" #return on one line
  end

end
end
