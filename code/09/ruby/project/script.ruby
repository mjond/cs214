Script started on Tue 19 Apr 2016 07:38:47 PM EDT
mjd85@kay:~/Documents/214/code/09/ruby/project$ cat List.rb
# List.rb implements a linked list structure in Ruby.
#
# Begun by: Dr. Adams, for CS 214 at Calvin College.
# Completed by: Mark Davis
# Date: April 19, 2016
#######################################################

require 'test/unit/assertions'
include Test::Unit::Assertions

class List

   def initialize
	@first = nil
	@last = nil
	@length = 0
   end

   #accessor for length
   attr_reader :length


   # Am I empty?
   # Return: length == 0
   def empty?
      @length == 0
   end
  
   # append a value to me
   # Receive: value, the item to be appended
   # Postcondition: my last item is value and
   #                 my length is one more than it was
   def append(value)
      newNode = Node.new(value, nil)

      if empty?
         @first = newNode
      else
         @last.next = newNode      
      end

      @last = newNode
      @length += 1
      self
   end


   # print my items
   # Postcondition: my items have been displayed to the screen

   def print
	temp = @first
	while !temp.nil?
	  printf " #{temp.value}"
	  temp = temp.next
	end
   end


   # find my maximum item
   # Return: my maximum item

   def max
	temp = @first
	maxValue = nil
	if !temp.nil? then
		maxValue = temp.value
		temp = temp.next
	end
	while !temp.nil?
	  if temp.value > maxValue then
		maxValue = temp.value
	  end
	  temp = temp.next
	end
	return maxValue
   end

  #find element in list
  # Return: element in list
  def find(aValue)
	temp = @first
	pos = 0
	while !temp.nil?
		if temp.value == aValue then
			return pos
		end
		pos = pos + 1
		temp = temp.next
	end
	return -1
  end
	

  #class that defines Node
  #has two accessors for instance variables
  class Node
	def initialize(item, link)
		@value = item
		@next = link
	end
	
	attr_reader :value
	attr_accessor :next 
  end

end

mjd85@kay:~/Documents/214/code/09/ruby/project$ cat max.rb
# max.rb tests a Ruby linked list.
#
# Begun by: Dr. Adams for CS 214 at Calvin College.
# Completed by: Mark Davis
# Date: April 18, 2016

require './List'

list1 = List.new
list2 = List.new
list3 = List.new
list4 = List.new

list1.append(99).append(88).append(77).append(66).append(55)
list2.append(55).append(66).append(77).append(88).append(99)
list3.append(55).append(77).append(99).append(88).append(66)
list4.append(55).append(77).append(44).append(88).append(66)

list1.print 
puts
puts "Position of 99 is: "
puts list1.find(99)

list2.print 
puts
puts "Position of 99 is: "
puts list2.find(99)

list3.print 
puts
puts "Position of 99 is: "
puts list3.find(99)

list4.print
puts
puts "Position of 99 is: "
puts list4.find(99)

mjd85@kay:~/Documents/214/code/09/ruby/project$ ruby max.rb
 99 88 77 66 55
Position of 99 is: 
0
 55 66 77 88 99
Position of 99 is: 
4
 55 77 99 88 66
Position of 99 is: 
2
 55 77 44 88 66
Position of 99 is: 
-1
mjd85@kay:~/Documents/214/code/09/ruby/project$ exit
exit

Script done on Tue 19 Apr 2016 07:39:15 PM EDT
