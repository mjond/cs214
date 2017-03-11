Script started on Thu 14 Apr 2016 09:30:20 AM EDT
mjd85@hollerith:~/Documents/214/code/08/ruby/project$ cat Temer  perature.ruby
cat: Temperature.ruby: No such file or directory
mjd85@hollerith:~/Documents/214/code/08/ruby/project$ cat Temperature.rb
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
mjd85@hollerith:~/Documents/214/code/08/ruby/project$ cat TestRunner.rb
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
mjd85@hollerith:~/Documents/214/code/08/ruby/project$ ruby TestRunner.rb
Enter values for base temperature
Enter degree: 
0.0
Enter scale: 
F
Enter values for limit temperature
Enter degree: 
100.0
Enter scale: 
C
Enter step value: 
2.5
0.0 F -17.77777777777778 C 255.3722222222222 K 
2.499999999999943 F -16.38888888888892 C 256.76111111111106 K 
4.999999999999886 F -15.000000000000064 C 258.1499999999999 K 
7.4999999999998295 F -13.611111111111207 C 259.5388888888888 K 
9.999999999999773 F -12.22222222222235 C 260.92777777777764 K 
12.499999999999716 F -10.833333333333492 C 262.3166666666665 K 
14.999999999999659 F -9.444444444444635 C 263.70555555555535 K 
17.499999999999602 F -8.055555555555777 C 265.0944444444442 K 
19.999999999999545 F -6.666666666666919 C 266.48333333333306 K 
22.49999999999949 F -5.277777777778062 C 267.8722222222219 K 
24.99999999999943 F -3.888888888889205 C 269.2611111111108 K 
27.499999999999375 F -2.5000000000003473 C 270.64999999999964 K 
29.999999999999318 F -1.1111111111114902 C 272.0388888888885 K 
32.49999999999926 F 0.27777777777736723 C 273.42777777777735 K 
34.999999999999204 F 1.6666666666662246 C 274.8166666666662 K 
37.49999999999915 F 3.055555555555082 C 276.20555555555507 K 
39.99999999999909 F 4.444444444443939 C 277.5944444444439 K 
42.499999999999034 F 5.833333333332797 C 278.9833333333328 K 
44.99999999999898 F 7.222222222221654 C 280.37222222222164 K 
47.49999999999892 F 8.611111111110512 C 281.7611111111105 K 
49.99999999999886 F 9.99999999999937 C 283.14999999999935 K 
52.499999999998806 F 11.388888888888227 C 284.5388888888882 K 
54.999999999998806 F 12.777777777777116 C 285.92777777777707 K 
57.49999999999869 F 14.166666666665941 C 287.3166666666659 K 
59.99999999999869 F 15.55555555555483 C 288.7055555555548 K 
62.49999999999858 F 16.944444444443654 C 290.09444444444364 K 
64.99999999999858 F 18.333333333332543 C 291.4833333333325 K 
67.49999999999847 F 19.72222222222137 C 292.87222222222135 K 
69.99999999999847 F 21.111111111110258 C 294.2611111111102 K 
72.49999999999835 F 22.499999999999087 C 295.64999999999907 K 
74.99999999999835 F 23.888888888887973 C 297.0388888888879 K 
77.49999999999824 F 25.2777777777768 C 298.4277777777768 K 
79.99999999999824 F 26.666666666665687 C 299.81666666666564 K 
82.49999999999812 F 28.055555555554516 C 301.2055555555545 K 
84.99999999999812 F 29.444444444443402 C 302.59444444444335 K 
87.49999999999801 F 30.83333333333223 C 303.9833333333322 K 
89.99999999999801 F 32.22222222222112 C 305.3722222222211 K 
92.49999999999801 F 33.611111111110006 C 306.76111111111 K 
94.99999999999801 F 34.9999999999989 C 308.1499999999989 K 
97.49999999999801 F 36.388888888887784 C 309.53888888888775 K 
99.99999999999801 F 37.77777777777668 C 310.92777777777667 K 
102.49999999999801 F 39.16666666666556 C 312.3166666666655 K 
104.9999999999979 F 40.55555555555439 C 313.7055555555544 K 
107.4999999999979 F 41.94444444444328 C 315.09444444444324 K 
109.99999999999778 F 43.33333333333211 C 316.4833333333321 K 
112.49999999999778 F 44.72222222222099 C 317.87222222222096 K 
114.99999999999767 F 46.11111111110982 C 319.2611111111098 K 
117.49999999999767 F 47.49999999999871 C 320.64999999999867 K 
119.99999999999756 F 48.888888888887536 C 322.0388888888875 K 
122.49999999999756 F 50.27777777777642 C 323.4277777777764 K 
124.99999999999744 F 51.66666666666525 C 324.81666666666524 K 
127.49999999999744 F 53.055555555554136 C 326.2055555555541 K 
129.99999999999733 F 54.444444444442965 C 327.59444444444296 K 
132.49999999999733 F 55.83333333333185 C 328.9833333333318 K 
134.99999999999721 F 57.22222222222068 C 330.37222222222067 K 
137.49999999999721 F 58.611111111109565 C 331.7611111111095 K 
139.9999999999971 F 59.999999999998394 C 333.1499999999984 K 
142.4999999999971 F 61.38888888888728 C 334.53888888888724 K 
144.999999999997 F 62.77777777777611 C 335.9277777777761 K 
147.499999999997 F 64.166666666665 C 337.31666666666496 K 
149.99999999999687 F 65.55555555555382 C 338.7055555555538 K 
152.49999999999687 F 66.94444444444271 C 340.0944444444427 K 
154.99999999999676 F 68.33333333333154 C 341.48333333333153 K 
157.49999999999676 F 69.72222222222042 C 342.8722222222204 K 
159.99999999999665 F 71.11111111110925 C 344.26111111110924 K 
162.49999999999665 F 72.49999999999814 C 345.6499999999981 K 
164.99999999999653 F 73.88888888888697 C 347.03888888888696 K 
167.49999999999653 F 75.27777777777585 C 348.4277777777758 K 
169.99999999999642 F 76.66666666666468 C 349.8166666666647 K 
172.49999999999642 F 78.05555555555357 C 351.20555555555353 K 
174.9999999999963 F 79.4444444444424 C 352.5944444444424 K 
177.4999999999963 F 80.83333333333128 C 353.98333333333125 K 
179.9999999999962 F 82.22222222222011 C 355.3722222222201 K 
182.4999999999962 F 83.611111111109 C 356.76111111110896 K 
184.99999999999608 F 84.99999999999783 C 358.1499999999978 K 
187.49999999999608 F 86.38888888888671 C 359.5388888888867 K 
189.99999999999596 F 87.77777777777554 C 360.92777777777553 K 
192.49999999999596 F 89.16666666666443 C 362.3166666666644 K 
194.99999999999585 F 90.55555555555325 C 363.70555555555325 K 
197.49999999999585 F 91.94444444444214 C 365.0944444444421 K 
199.99999999999574 F 93.33333333333097 C 366.48333333333096 K 
202.49999999999574 F 94.72222222221986 C 367.8722222222198 K 
204.99999999999562 F 96.11111111110868 C 369.2611111111087 K 
207.49999999999562 F 97.49999999999757 C 370.64999999999753 K 
209.9999999999955 F 98.8888888888864 C 372.0388888888864 K 
mjd85@hollerith:~/Documents/214/code/08/ruby/project$ exit
exit

Script done on Thu 14 Apr 2016 09:31:16 AM EDT
