# rectangle_area.rb computes area of a rectangle
#
# Input: length of rectangle
#	 width of rectangle
#Precondition: the length and width are positive
#Output: the area of the rectangle
#
#Created by: mark Davis, CS 214, Calvin College
#Date: February 9, 2016
#Model Code: CS 214 Lab01
#
################################################

#function rectangle_area returns a rectangle's area, give length and width
#parameters: length, width
#precondition: l > 0, w > 0
#returns: area of a rectangle

def rectangleArea(length, width) #functin for computing area
	length * width #length multiplied by width
end

if __FILE__ == $0 
	print "Enter the length: " #prompt for length
	length = gets.chomp.to_f #store length value
	print "Enter the width: " #prompt for width
	width = gets.chomp.to_f #store width value
	print "Area is: " #output message for area
	puts rectangleArea(length, width) #call function to compute area
end


