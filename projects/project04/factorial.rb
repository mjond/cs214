#! /usr/bin/ruby
# factorial.rb translates an average into a letter grade
#created by: Mark Davis CS 214 project04
#model code: project03, CS 214
################################################################

# function: factorial computes factorials
# Input:  number (integer)
# Precondition: number is positive
# Output: factorial of the number

def factorial(number)       #declare function
	answer = 1          #variable for computing answer
	for i in 2..number  #loop for factorial
	   answer = answer * i #compute factorial
	end
	return answer #return factorial
end

########### main ##########
if __FILE__ == $0
	print "Enter a number: " #prompt for user input
	number = gets.chomp.to_i #declare variable and store vale
	print number             
	print "! = "
	puts factorial(number)  #output and call factorial()
end
