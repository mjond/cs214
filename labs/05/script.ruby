Script started on Thu 03 Mar 2016 09:56:56 AM EST
mjd85@hollerith:~/Documents/214/labs/05$ cat split.rb
# split.rb splits a string into two substrings.
#
# Input: A string and an integer string position to split the string by.
# Precondition: The position integer is within the range of the string size.
# Output: The substrings aString(0, position - 1) and
#   aString(pos, length() - 1).
#
# Begun by: Prof. Adams, for CS 214 at Calvin College.
# Completed by: Mark Davis
# Date: March 3, 2016
#################################################################


# split() splits a string into its two substrings.
# Receive: aString, the string to be split,       
#        pos, the split position.                  
# PRE: 0 <= pos < the length of aString.
# Return: the substring of aString before pos, and  
#         the substring of aString from pos onwards.
######################################################

def split(the_string, position)
  results = Array.new
  results[0] = the_string[0 .. position] #getting first substring and store in results[0]
  results[1] = the_string[position + 1 .. the_string.size] #getting second substring and store in results[1]
  return results
end
  


def main
  print "To split a string, enter the string: "; 
  the_string = gets
  print "Enter the split position: "; 
  position = gets.to_i
  split_string = split(the_string, position)
  puts "The first part is: " << split_string[0]
  puts "and the second part is: " << split_string[1]
end

main
mjd85@hollerith:~/Documents/214/labs/05$ ruby split.rb
To split a string, enter the string: hello
Enter the split position: 1
The first part is: he
and the second part is: llo
mjd85@hollerith:~/Documents/214/labs/05$ rub. y split.rb
To split a string, enter the string: hello
Enter the split position: 6
The first part is: hello
split.rb:38:in `main': can't convert nil into String (TypeError)
	from split.rb:41:in `<main>'
mjd85@hollerith:~/Documents/214/labs/05$ ruby.  split.rb
To split a string, enter the string: hello
Enter the split position: 5
The first part is: hello
and the second part is: 
mjd85@hollerith:~/Documents/214/labs/05$ rubys  split.rb
To split a string, enter the string: hello
Enter the split position: 4
The first part is: hello
and the second part is: 
mjd85@hollerith:~/Documents/214/labs/05$ exit
exit

Script done on Thu 03 Mar 2016 09:57:46 AM EST
