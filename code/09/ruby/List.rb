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

