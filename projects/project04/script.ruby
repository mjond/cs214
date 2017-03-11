Script started on Tue 01 Mar 2016 06:40:26 PM EST
mjd85@babbage:~/Documents/214/projects/project04$ cat factorial.rb
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
mjd85@babbage:~/Documents/214/projects/project04$ ruby factorial.rb
Enter a number: 4
4! = 24
mjd85@babbage:~/Documents/214/projects/project04$ fac   ruby facot rial.rb
ruby: No such file or directory -- facorial.rb (LoadError)
mjd85@babbage:~/Documents/214/projects/project04$ ruby factorial.rb
Enter a number: 6
6! = 720
mjd85@babbage:~/Documents/214/projects/project04$ exit
exit

Script done on Tue 01 Mar 2016 06:41:43 PM EST
