# quad.rb computes quadratic roots
#
# Input: a, b and c for quadratic equation
# Precondition: a, b and c are positive
# Output: roots of given input
#
# Created by: Mark Davis
# Date: March 7, 2016
#################################################################


# quad() computes quadratic roots
# Receive: a, b, c (floats)             
# PRE: a is positive
# Return: roots of given inputs
######################################################

def quad(a, b, c)
  results = Array.new #make array for storing results
  if a != 0 #if a is not 0
    answer = (b * b) - 4 * a * c #compute first part of quadratic equation
	if answer >= 0
	  results[0] = (-b + Math.sqrt(answer))/(2*a) #compute root 1
	  results[1] = (-b - Math.sqrt(answer))/(2*a) #compute root 2
  	else
	  print "*** quad() : b^2 - 4ac is negative!"; #output error message if negative
	  results[0] = 0 			#set values to 0
	  results[1] = 0
   	end
  else
    print "*** quad() : a is negative!"; 	#output error message if negative
    results[0] = 0 				#set values to 0
    results[1] = 0
  end  
  return results 				#return the array
end


def main
  print "Enter a: "; #prompt for a, b and c
  a = gets.to_f
  print "Enter b: ";
  b = gets.to_f
  print "Enter c: ";
  c = gets.to_f

  answer = quad(a, b, c)
  puts "Root 1 is: " << answer[0].to_s #output values
  puts "Root 2 is: " << answer[1].to_s
end

main
