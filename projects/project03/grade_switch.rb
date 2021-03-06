#! /usr/bin/ruby
# grade_switch.rb translates an average into a letter grade
#created by: Mark Davis CS 214 project03
#model code: lab03, CS 214
################################################################

# Input:  average grade (integer)
# Precondition: the grade is a positive integer (0-100)
# Output: The corresponding letter grade for average


if __FILE__ == $0
	print "Enter your average grade: " #prompt for grade
	grade = gets.chomp #store in variable
	average = grade.to_i/10 #compute integer division
	print "Your grade is: " #output message

	case average #initiate case
	when 10, 9 #if 10 or 9
		puts 'A' #ouput 'A'
	when 8 #if average is 8
		puts 'B' #output 'B'
	when 7
		puts 'C'
	when 6
		puts 'D'
	else #if not 10, 9 , 8, 7, or 6
		puts 'F' #output 10
	end #end case
end #end program
