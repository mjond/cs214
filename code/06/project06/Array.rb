# array.rb prompts for values to go in array and prints them
# Precondition: values are doubles
# Output: values of the array
# Project06 CS 214, Calvin College
# By: Mark Davis
# Date: March 29, 2016
########################################################

###############################################
# readArray() fills array with user's value
# Receive: anArray, size of array
################################################
def readArray(array, size)
	for i in 0 .. size-1 #loop to iterate through array
		print "Enter value: "
		value = gets.chomp.to_i #convert to integer
		array[i] = value #store value in array
	end
	
end


###############################################
# printArray() prints elements of the array
# Receive: anArray, array's size
################################################
def printArray(array, size)
	print "Values are: "
	for i in 0 .. size-1 #loop to iterate through array
		puts array[i] #output element in array
	end
end


def main
	print "Enter size of the array: " #prompt for input
	size = gets.chomp.to_i #store input
	array = Array.new(size) #declare array
	readArray(array, size) #call read
	printArray(array, size) #call print
end

main
