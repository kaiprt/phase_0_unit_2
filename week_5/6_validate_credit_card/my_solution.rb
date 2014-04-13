# U2.W5: Class Warfare, Validate a Credit Card Number


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Numbers for a credit card.
# Output: Proves if card is valid or invalid.
# Steps:
=begin
1. Create method "initialize" in the CreditCard class and allow only one argument
  1.2 Set an instance variable equal to your initialize argument
  1.3 End your initialize method
2. Create method "check_card" in the CreditCard class. It takes no arguments.
  1.2 Set up a loop so that every other number is doubled 
=end

# 3. Initial Solution

# Don't forget to check on intialization for a card length
# of exactly 16 digits
class CreditCard
  def initialize(card)
    if card.integer? == true and card.to_s.length == 16
      @card = card
      print "Initializing"
    else card.integer? == false or card.to_s.length != 16
      raise ArgumentError.new("Your card must be a series of 16 numbers.")
      return false
    end
  end

  def double
    number = ""
    step_1 = @card.to_s.split('').map(&:to_i)
    @fresh_nums = step_1.each_index {|index| step_1[index] *= 2 if index % 2 != 0 }
  end

  def sum
    @fresh_nums.map! do |x|
      if x >= 10
        x.to_s.split('').map(&:to_i)
      else
        x
      end
   @sum_nums = @fresh_nums.flatten.reduce(:+)
    end
  end

  def check_card
    if @sum_nums.to_i % 10 == 0
      return check_card = true
    else 
      return check_card = false
    end
  end

end



# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
=begin
p @card.length == 16
p CreditCard .new(4408041234567893) == true
p CreditCard .new(dsklajdf) == false
=end




# 5. Reflection 
