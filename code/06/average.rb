# average.rb averages the values of an array of doubles.
# Precondition: theArray is an array of numbers
# Output: the average of the values in theArray
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by:: Mark Davis
# Date: March 23, 2016
########################################################

###############################################
# sum() sums the values in an array
# Receive: anArray, an array of numbers
# Return: the sum of the values in anArray.
################################################
def sum(array)
	if array.size <= 0.0
		return 0.0
	else
		total = 0
		array.each{ |element| total=total+element }
		return total
	end
end


###############################################
# average() computes average of elements in an array
# Receive: anArray, an array of numbers
# Return: the average of the values in anArray.
################################################
def average(array)
	if array.size <= 0.0
		return 0.0
	else
		return sum(array) / array.length
	end
end

def main
   array0 = []
   array1 = [6.0, 7.0, 8.0, 9.0]

   puts "sum 0 is: #{ sum(array0) }\n"
   puts "sum 1 is: #{ sum(array1) }\n"

   puts "average 0 is: #{ average(array0) }\n"
   puts "average 1 is: #{ average(array1) }\n"
end

main

