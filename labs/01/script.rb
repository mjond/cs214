Script started on Fri 05 Feb 2016 09:16:20 AM EST
mjd85@augusta:~/Documents/214/Labs/01$ cat ; circle_area.rb
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
end #end programmjd85@augusta:~/Documents/214/Labs/01$ ./circle_area.rb
bash: ./circle_area.rb: Permission denied
mjd85@augusta:~/Documents/214/Labs/01$ ruby circle_area.rb
Enter the radius: 1
Area is: 3.1415927
mjd85@augusta:~/Documents/214/Labs/01$ ruby circle_area.rb
Enter the radius: 2
Area is: 12.5663708
mjd85@augusta:~/Documents/214/Labs/01$ c ruby circle_area.rb
Enter the radius: 2.5
Area is: 19.634954375
mjd85@augusta:~/Documents/214/Labs/01$ ruby circle_area.rb
Enter the radius: 4.99999
Area is: 78.53950334104417
mjd85@augusta:~/Documents/214/Labs/01$ e exit
exit

Script done on Fri 05 Feb 2016 09:17:46 AM EST
