# Duck.rb | Defines the Duck class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by: Mark Davis
# Date: April 21, 2016
####################################################

require './FlyingBird.rb'

class Duck < FlyingBird

def call
  'Quack'
end

end
