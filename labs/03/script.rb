Script started on Thu 18 Feb 2016 09:56:09 AM EST
mjd85@aiken:~/Documents/214/labs/03$ cat year_codes.rb
#! /usr/bin/ruby
# year_codes.rb translates an academic year into a numeric code
# Begun by: Dr. Nelesen, for CS 214 at Calvin College 
################################################################

# Input:  The name of an academic year
# Precondition: The academic year is a string with a value of freshman, 
#   sophomore, junior or senior
# Output: The corresponding integer code for the given academic year

def yearCode(year)
	if year =~ /freshman/ #if input is freshman
		return 1
	elsif year =~ /sophomore/ #if input is sophomore
		return 2
	elsif year =~ /junior/ #if input is junior
		return 3
	elsif year=~ /senior/ #if input is senior
		return 4
	else 
		return 0 #return 0
	end
end

if __FILE__ == $0
   print "Enter the year: " #prompt user
   year = gets #get year
   print "Numeric code is: " #output message
   puts yearCode(year) #year value
end

mjd85@aiken:~/Documents/214/labs/03$ ruby year_cd odes.rb
Enter the year: freshman
Numeric code is: 1
mjd85@aiken:~/Documents/214/labs/03$ ye  ruby year_cdoes.     odes.rb
Enter the year: soh phomore
Numeric code is: 2
mjd85@aiken:~/Documents/214/labs/03$ ruby year_codes.rb
Enter the year: junior
Numeric code is: 3
mjd85@aiken:~/Documents/214/labs/03$ ruby year_cdoes    odes.rb
Enter the year: senior
Numeric code is: 4
mjd85@aiken:~/Documents/214/labs/03$ ruby year_codes.rb
Enter the year: prof
Numeric code is: 0
mjd85@aiken:~/Documents/214/labs/03$ ruby year_codes.rb
Enter the year: a;lksdj
Numeric code is: 0
mjd85@aiken:~/Documents/214/labs/03$ exit

Script done on Thu 18 Feb 2016 09:57:17 AM EST
