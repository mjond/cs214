Script started on Fri 01 Apr 2016 09:12:15 AM EDT
mjd85@hollerith:~/Documents/214/code/07$ cat namer.rb
# namer.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Mark Davis
# Date: March 31, 2016
####################################################

require 'test/unit/assertions'   # needed for assert
include Test::Unit::Assertions

class Name

  def initialize(first, middle, last) #constructor for ruby
	@first, @middle, @last = first, middle, last #instance variables
  end


  attr_reader :first, :middle, :last #accessors


  def fullName #accessor for full name
	"#{first} #{middle} #{last}"
  end


  def print
	return fullName #print function
  end

end

  def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   print "All tests passed!\n"
  end


testName

mjd85@hollerith:~/Documents/214/code/07$ ruby.  namer.rb
All tests passed!
mjd85@hollerith:~/Documents/214/code/07$ exit
exit

Script done on Fri 01 Apr 2016 09:12:24 AM EDT
