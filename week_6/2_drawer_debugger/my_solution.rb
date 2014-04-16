# U2.W6: Drawer Debugger


# I worked on this challenge by myself.

# 2. Original Code

class Drawer

attr_reader :contents

# Are there any more methods needed in this class?

  def initialize
    @contents = []
    @open = true
  end

  def open
    open = true
  end

  def close
    @open = false
  end 

  def add_item(item)
    @contents << item
  end

  def remove_item(item = @contents.pop) #what is `#pop` doing? removing the last item if no argument is given.
   @contents.delete(item)
  end

  def dump  # what should this method return? It should reset the contents variable.
    @contents = []
   puts "Your drawer is empty."
  end

  def view_contents
   puts "The drawer contains:"
    @contents.each {|silverware| puts "- " + silverware.type }
  end

end

class Silverware
  attr_reader :type, :clean

# Are there any more methods needed in this class?

  def initialize(type, clean = true)
    @type = type
    @clean = clean
  end

  def eat
    puts "eating with the #{type}"
    @clean = false
  end

  def clean_silverware
    puts "cleaning the #{type}"
    @clean = true
  end

end

knife1 = Silverware.new("knife")

silverware_drawer = Drawer.new
silverware_drawer.add_item(knife1) 
silverware_drawer.add_item(Silverware.new("spoon"))
silverware_drawer.add_item(Silverware.new("fork")) 
silverware_drawer.view_contents

silverware_drawer.remove_item
silverware_drawer.view_contents
sharp_knife = Silverware.new("sharp_knife")


silverware_drawer.add_item(sharp_knife)

silverware_drawer.view_contents

removed_knife = silverware_drawer.remove_item(sharp_knife)
removed_knife.clean_silverware 

silverware_drawer.view_contents
silverware_drawer.dump
silverware_drawer.view_contents #What should this return? What is inside the drawer.

fork1 = Silverware.new("fork")
silverware_drawer.add_item(fork1)

spoon = Silverware.new("spoon")
silverware_drawer.add_item(spoon)

fork = silverware_drawer.remove_item(fork1) ; puts "Removing Fork" #add some puts statements to help you trace through the code...
fork.eat

#BONUS SECTION
# puts fork.clean
puts fork.clean
# DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Assertion failed!" unless yield
end

fork1.clean_silverware
assert { fork.clean == true }
fork1.eat
assert { fork1.clean == false }
silverware_drawer.open
assert { silverware_drawer.open == true }
silverware_drawer.close

# 5. Reflection
=begin
I found this challenge to be pretty straight forward. I found the directions clear and
had no problem completing the challenge. This challenge helped strengthen my debugging
skills and I feel a little more comfortable writing assertion statements. I feel
confident using error messages to correct syntax mystakes and defining a method's
responsibility. I can't wait to learn more!
=end