#! /usr/bin/ruby
# log_table.rb displays a table of logarithms
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by: Mark Davis
#
# Input:  The start, stop and increment values
# Precondition: The start value is less than the stop value, 
#     and the increment is greater than 0
# Output: A table of logarithms from start to stop, with increment
#     as the step value


if __FILE__ == $0
   print "Enter the start value: " #prompt for input
	start = gets #store value
	start = start.to_f #convert to type float
   print "Enter the stop value: " #same as above
	stop = gets
	stop = stop.to_f
   print "Enter the increment value: "
	increment = gets
	increment = increment.to_f
   
while start <= stop do #initiate loop
	puts("Logarithm of " << start.to_s << " is: ") #output message
	puts(Math.log(start)) #comput log
	puts("\n") #new line
	start += increment #increment start value
	end
end

