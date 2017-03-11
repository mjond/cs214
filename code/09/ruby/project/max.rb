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

