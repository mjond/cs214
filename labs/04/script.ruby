Script started on Tue 01 Mar 2016 02:04:15 PM EST
mjd85@stroustrup:~/Documents/214/labs/04$ cat log_tablerb  .rb
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

mjd85@stroustrup:~/Documents/214/labs/04$ ruby log_table.rb
Enter the start value: 1
Enter the stop value: 10
Enter the increment value: 0.5
Logarithm of 1.0 is: 
0.0

Logarithm of 1.5 is: 
0.4054651081081644

Logarithm of 2.0 is: 
0.6931471805599453

Logarithm of 2.5 is: 
0.9162907318741551

Logarithm of 3.0 is: 
1.0986122886681098

Logarithm of 3.5 is: 
1.252762968495368

Logarithm of 4.0 is: 
1.3862943611198906

Logarithm of 4.5 is: 
1.5040773967762742

Logarithm of 5.0 is: 
1.6094379124341003

Logarithm of 5.5 is: 
1.7047480922384253

Logarithm of 6.0 is: 
1.791759469228055

Logarithm of 6.5 is: 
1.8718021769015913

Logarithm of 7.0 is: 
1.9459101490553132

Logarithm of 7.5 is: 
2.0149030205422647

Logarithm of 8.0 is: 
2.0794415416798357

Logarithm of 8.5 is: 
2.1400661634962708

Logarithm of 9.0 is: 
2.1972245773362196

Logarithm of 9.5 is: 
2.2512917986064953

Logarithm of 10.0 is: 
2.302585092994046

mjd85@stroustrup:~/Documents/214/labs/04$ exit
exit

Script done on Tue 01 Mar 2016 02:05:19 PM EST
