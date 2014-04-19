# U2.W6: PezDispenser Class from User Stories


# I worked on this challenge [by myself, with: ].

# 1. Review the following user stories:
# - As a pez user, I'd like to be able to "create" a new pez dispenser with a group of flavors that 
#      represent pez so it's easy to start with a full pez dispenser.
# - As a pez user, I'd like to be able to easily count the number of pez remaining in a dispenser 
#      so I can know how many are left.
# - As a pez user, I'd like to be able to take a pez from the dispenser so I can eat it.
# - As a pez user, I'd like to be able to add a pez to the dispenser so I can save a flavor for later.
# - As a pez user, I'd like to be able to see all the flavors inside the dispenser so I know the order 
#      of the flavors coming up.


# 2. Pseudocode
=begin
1. Create class PezDispenser
2. Create an initialize method.
3. Let there be one argument "flavors"
4. Set two instance variables, one equal to the argument
  4.2 set an instance variable equal to an empty array
  4.3 have the argument be put into the empty array
  4.4 and end the method.
5. Create a new method "count"
6. return the amount of pieces remaining in the pez dispenser and end the method.
7. Create a new method "dispense"
8. have it return the pez being dispensed which should be the last element in the inventory
9. return updated value and end the method.
10. Create a new method "refill"
11. have the size increase by 1 and remember its flavor
12. return a message saying what flavor was added and end the method.
=end


# 3. Initial Solution
=begin
class PezDispenser
  def initialize(flavors)
    @flavors = flavors
    @inventory = []
    @inventory << @flavors #=> inventory[0] = all flavors (created multi-dimensional array)
    return "A new pez dispenser has been created. You have #{@pez_count} pez!"
  end

  def pez_count
    @count = @inventory[0].length
    return "There are #{@count} pieces remaining."
  end

  def see_all_pez
    contents = @inventory[0]
    return contents
  end

  def get_pez
    puts "Oh look you got a #{@inventory[0].last} pez!"
    @inventory[0].pop
    return "Pez was dispensed."
  end

  def add_pez(flavor)
    @inventory[0] << flavor
    return "A #{flavor} flavored pez was added."
  end
end
 
=end

# 4. Refactored Solution

class PezDispenser
  def initialize(flavors)
    @flavors = flavors
    @inventory = []
    @inventory << @flavors #=> inventory[0] = all flavors (created multi-dimensional array)
    return "A new pez dispenser has been created. You have #{@pez_count} pez!"
  end

  def pez_count
    @count = @inventory[0].length
    return "There are #{@count} pieces remaining."
  end

  def see_all_pez
    contents = @inventory[0]
    return contents
  end

  def get_pez
    puts "Oh look you got a #{@inventory[0].last} pez!"
    @inventory[0].pop
    return "Pez was dispensed."
  end

  def add_pez(flavor)
    @inventory[0] << flavor
    return "A #{flavor} flavored pez was added."
  end
end

#I felt that I could not refactor the code any more than what it is. I apologize if I missed something. Feedback is welcomed!



# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Alert! Fail!" unless yield
end

flavors = %w(cherry chocolate cola grape lemon orange peppermint raspberry strawberry).shuffle
super_mario = PezDispenser.new(flavors)
puts "A new pez dispenser has been created. You have #{super_mario.pez_count} pez!"  
puts "Here's a look inside the dispenser:"  
puts super_mario.see_all_pez 
puts "Adding a purple pez."
super_mario.add_pez("purple")   # mmmmm, purple flavor
puts "Now you have #{super_mario.pez_count} pez!"
puts "Oh, you want one do you?"
puts "The pez flavor you got is: #{super_mario.get_pez}"
puts "Now you have #{super_mario.pez_count} pez!"
#Assert Statements
my_flavors = %w(orange cherry oregano pizza)
my_test = PezDispenser.new(my_flavors)
assert { my_test.pez_count == "There are 4 pieces remaining." }
assert { my_test.get_pez == "Pez was dispensed." }
assert { my_test.pez_count == "There are 3 pieces remaining." }
# 5. Reflection
=begin
 I enjoyed this challenge a lot! It was fun looking at user statements and converting them into driver code and then building my
 program. I also enjoy challenges like this one where we create a program to simulate a real world object. It makes learning much
 easier and fun! I now fully understand assert statements and I feel like my brain is becoming more logic oriented!
=end