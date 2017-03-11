set# namer.rb tests class Name and its operations
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


  def setFirst(aFirst)
	@first = aFirst
  end


  def setMiddle(aMiddle)
	@middle = aMiddle
  end


  def setLast(aLast)
	@last = aLast
  end

  def lfmi
	return @last +	", " + @first + " " + @middle[0] + "."
  end

  def readName
	puts "Enter first name: "
	first = gets.chomp
	@first = first

	puts "Enter middle name: "
	middle = gets.chomp
	@middle = middle

	puts "Enter last name: "
	last = gets.chomp
	@last = last
  end

end

  def testName
   name = Name.new("John", "Paul", "Jones")

   assert name.first == "John", "first failed"
   assert name.middle == "Paul", "middle failed"
   assert name.last == "Jones", "last failed"
   assert name.fullName == "John Paul Jones", "fullName failed"
   assert name.print == "John Paul Jones", "print failed"
   
   name.setFirst("Mark")
   assert name.first == "Mark", "setFirst failed"
   name.setMiddle("Jonathan")
   assert name.middle == "Jonathan", "setMiddle failed"
   name.setLast("Davis")
   assert name.last == "Davis", "setLast failed"
   assert name.lfmi == "Davis, Mark J.", "lfmi() failed"
   name.readName #entered "Mark Jonathan Davis"
   assert name.fullName == "Mark Jonathan Davis", "readName failed"
   
   print "All tests passed!\n"
  end


testName

