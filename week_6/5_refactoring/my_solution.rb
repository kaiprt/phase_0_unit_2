# U2.W6: Refactoring for Code Readability


# I worked on this challenge [by myself, with: ].


# Original Solution
class CreditCard
  def initialize(card) # Will initialize if there is a total of 16 integers.
    if card.integer? == true and card.to_s.length == 16
      @card = card
      print "Initializing"
    else card.integer? == false or card.to_s.length != 16
      raise ArgumentError.new("Your card must be a series of 16 numbers.")
      return false
    end
  end

  def double # Do I need this?
    number = "" #not sure why I have this.
    step_1 = @card.to_s.split('').map(&:to_i)
    @fresh_nums = step_1.each_index {|index| step_1[index] *= 2 if index % 2 != 0 }
  end

  def sum # Do I need this?
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
# Refactored Solution
class CreditCard
	def initialize(card) # Removed if else statement because it was not necessary.
		@card = card
		raise ArgumentError.new("Your card id not valid.") unless @card.to_s.length == 16
	end

	def double #added better names and fixed a problem with block on line 22.
		split_int = @card.to_s.chars.map(&:to_i) # This object is equal to the cc# as a string and then an array was created taking the characters of the string and then all maped back to integers.
		@doubled = split_int.each_index { |i| split_int[i] *= 2 if index % 2 == 0 }
	end

	def sum
		sum_nums = @doubled.map! do |x|
			if x > 9 # More specific than >= 10
				x.to_s.chars.map(&:to_i) # I prefer .chars over .split.
			else
				x
			end
		end
		sum_nums.flatten.reduce(:+)
	end

	def check_card
		sum % 10 == 0 # Should automatically return true or false. Don't need an if else statement
	end
end

# DRIVER TESTS GO BELOW THIS LINE
def assert
	raise "Assert failed!" unless yield
end

valid = CreditCard.new(4408041234567893)
assert { valid.check_card }
assert { valid.sum == }

p invalid = CreditCard.new('dsklajdf') == false
p invalid.check_card == false





# Reflection 