Script started on Tue 26 Apr 2016 11:14:35 AM EDT
mjd85@goldberg:~/Documents/214/code/10/ruby$ cat Bird.rb c birds.rb
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

# birds.rb | Tests out the menagerie of bird classes.
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by: Mark Davis
# Date: April 21, 2016
######################################################

require './Duck.rb'
require './Goose.rb'
require './Owl.rb'
require './Penguin.rb'
require './Ostrich.rb'
require './Kiwi.rb'

#bird0 = Bird.new "Hawkeye"
#bird0.print

bird1 = Duck.new "Donald"
bird1.print

bird2 = Goose.new "Mother"
bird2.print

bird3 = Owl.new "Woodsey"
bird3.print

bird4 = Penguin.new "Peter"
bird4.print

bird5 = Ostrich.new "Orville"
bird5.print

bird6 = Kiwi.new "The fruit"
bird6.print
mjd85@goldberg:~/Documents/214/code/10/ruby$ cat WalkingBird.rb FlyingBird.rb
# WalkingBird.rb | Defines the WalkingBird class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Mark Davis
# Date: April 26, 2016
####################################################

require './Bird.rb'

class WalkingBird < Bird

def movement
  'walked'
end

end
# FlyingBird.rb | Defines the FlyingBird class which inherits attributes and methods
#   from the Bird superclass.
#
# Completed by: Mark Davis
# Date: April 26, 2016
####################################################

require './Bird.rb'

class FlyingBird < Bird

def movement
  'flew'
end

end
mjd85@goldberg:~/Documents/214/code/10/ruby$ cat Goose.rb Owl.rb Duck.rb
# Goose.rb | Defines the Goose class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by: Mark Davis
# Date: April 21, 2016
####################################################

require './FlyingBird.rb'

class Goose < FlyingBird

def call
  'CANADA'
end

end
# Owl.rb | Defines the Owl class which inherits attributes and methods
#   from the Bird superclass.
#
# Begun by: Dr. Nelesen, for CS 214 at Calvin College.
# Completed by: MArk Davis
# Date: April 21, 2016
####################################################

require './FlyingBird.rb'

class Owl < FlyingBird

  def call
	'Whoo-hoo'
  end

end
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
mjd85@goldberg:~/Documents/214/code/10/ruby$ cat Penguin.rb Ostrich.rb Kiwi.rb
# Penguin.rb | Defines the Penguin class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Completed by: Mark Davis
# Date: April 26, 2016
####################################################

require './WalkingBird.rb'

class Penguin < WalkingBird

def call
  'Huh-huh-huh-huuuuh'
end

end
# Ostrich.rb | Defines the Ostrich class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Completed by: Mark Davis
# Date: April 26, 2016
####################################################

require './WalkingBird.rb'

class Ostrich < WalkingBird

def call
  'Snork'
end

end
# Kiwi.rb | Defines the Kiwi class which inherits attributes and methods
#   from the WalkingBird superclass.
#
# Completed by: Mark Davis
# Date: April 26, 2016
####################################################

require './WalkingBird.rb'

class Kiwi < WalkingBird

def call
  'I am not actully a bird'
end

end
mjd85@goldberg:~/Documents/214/code/10/ruby$ ruby birds.rb
Donald Duck just flew by and said, Quack
Mother Goose just flew by and said, CANADA
Woodsey Owl just flew by and said, Whoo-hoo
Peter Penguin just walked by and said, Huh-huh-huh-huuuuh
Orville Ostrich just walked by and said, Snork
The fruit Kiwi just walked by and said, I am not actully a bird
mjd85@goldberg:~/Documents/214/code/10/ruby$ exit
exit

Script done on Tue 26 Apr 2016 11:15:28 AM EDT
