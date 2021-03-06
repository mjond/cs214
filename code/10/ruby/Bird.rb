# Bird.rb | Defines a Bird superclass to be extended by specific bird
#   sub-classes.
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by: Mark Davis
# Date: April 21, 2016
####################################################

class Bird

  attr_reader :name

  def initialize(name)
    @name = name
  end

  def call	
    'Squaaaaawk!'
  end

  def className
    self.class.to_s
  end

  def print
    puts name + " " + className + " just " + movement + " by and said, " + call
  end

end

