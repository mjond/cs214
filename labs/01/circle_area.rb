#! /usr/bin/ruby
# circle_area.rb computes the area of a circle given its radius
# 
# Input: the radius of a circle
# Precondition: the radius is not negative
# Output: the area of the circle.
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by:Mark Davis
# Date:Feb 5, 2016
###############################################################

# function circleArea returns a circle's area, given its radius
# Parameters: r, a number
# Precondition: r > 0.
# Returns: the area of a circle whose radius is r.
PI = 3.1415927 #declare variable for Pi and set its value
def circleArea(r) #define function
    PI * r ** 2 #compute area
end#end function

if __FILE__ == $0 # 
   print "Enter the radius: " #prompt for radius
   radius = gets.chomp.to_f # get user input and store in variable 'radius'
   print "Area is: "# output area message
   puts circleArea(radius) #call circleArea function to computer area
end #end program