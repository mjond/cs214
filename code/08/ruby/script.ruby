Script started on Thu 07 Apr 2016 09:48:09 AM EDT
mjd85@hollerith:~/Documents/214/code/08/ruby$ cat Name.rb
# Names.rb is module for namer.rb
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Mark Davis
# Date: April 7, 2016
####################################################
module Names

class Name

  def initialize(first, middle, last)
    @first, @middle, @last = first, middle, last
  end

  attr_reader :first, :middle, :last

  def fullName
    @first + " " + @middle + " " + @last
  end

  def print
    puts fullName
    fullName
  end
end
end
mjd85@hollerith:~/Documents/214/code/08/ruby$ cat namer.rb
# namer.rb tests class Name and its operations
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Mark Davis
# Date: April 7, 2016
####################################################

require 'test/unit/assertions'
include Test::Unit::Assertions
require "./Name"

def testName
   name = Names::Name.new("John", "Paul", "Jones")

   assert name.first == "John", 
           "first failed"
   assert name.middle == "Paul",
           "middle failed"
   assert name.last == "Jones",
           "last failed"
   assert name.fullName == "John Paul Jones",
           "fullName failed"
   assert name.print == "John Paul Jones",
           "print failed"
   
   print "All tests passed!\n"
end

testName

mjd85@hollerith:~/Documents/214/code/08/ruby$ ruby namer.rb
John Paul Jones
All tests passed!
mjd85@hollerith:~/Documents/214/code/08/ruby$ exit
exit

Script done on Thu 07 Apr 2016 09:48:25 AM EDT
