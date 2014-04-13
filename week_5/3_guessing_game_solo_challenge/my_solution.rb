# U2.W5: Build a simple guessing game SOLO CHALLENGE


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input: Answer and guess (both integers)
# Output: A statement saying the guess was low high or correct to answer.
# Steps:
=begin 
1. In the method initialize, set an instance variable equal to answer (the first argument).
2. In the guess method create an if else statement.
  2.1 Create an if statement stating that guess is less than the answer
  2.2 Return :low
  2.3 Create an elseif statement stating that guess is greater than the answer
  2.4 Return the symbol :high
  2.5 Else (if guess is equal to @answer)
  2.6 Return the symbol :correct. Close statement.
3. Under the method solved? write an unless statement.
  3.1 Unless the instance variable guess is equal to the instance variable answer return false.
  3.2 Else return true, close statement.
=end

# 3. Initial Solution

class GuessingGame
  def initialize(answer)
    @answer = answer
  end
  
  def guess(guess)
    @guess = guess
    if @guess < @answer
      low = :low
      return low
    elsif @guess > @answer
      high = :high
      return high
    else @guess == @answer
      correct = :correct
      return correct
    end
  end

  def solved?
    unless @guess == @answer
      return false
    else
      return true
    end
  end
end




# 4. Refactored Solution






# 1. DRIVER TESTS GO BELOW THIS LINE
print game = GuessingGame.new(20)
print game.guess(10) == :low
print game.guess(21) == :high
print game.guess(20) == :correct
print game.solved? == true





# 5. Reflection 
=begin 
I found this solo challenge to fair. I figured out a solution and I only researched syntax for symbols and what they
are used for. I enjoyed this challenge and my strategy was to use if/return else/return and I through an unless in the
solved method to shorten the code a little. I felt confident attempting this challenge.
=end