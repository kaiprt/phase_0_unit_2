# U2.W6: Create a BoggleBoard Class


# I worked on this challenge by myself.


# 2. Pseudocode
=begin 
1. Define a method "initialize"
2. "initialize" should take an object equal to a multidimensional array as an argument.
3. the argument should be set equal to an instance variable and the method should be closed after.
2. "value_at" should take two parameters. These parameters should be used to find a value at a specific row and column
=end


# 3. Initial Solution
=begin
class BoggleBoard
  def initialize(array)
    @array = array
  end

  def create_word(*coords)
    coords.map { |coord| @array[coord.first][coord.last]}.join("") 
  end

  def get_row(row)
    @array[row]
  end

  def get_col(col)
    @array.map { |i| i[col] }
  end
end
=end 
 
dice_grid = [["b", "r", "a", "e"],
             ["i", "o", "d", "t"],
             ["e", "c", "l", "r"],
             ["t", "a", "k", "e"]]
 
boggle_board = BoggleBoard.new(dice_grid)

# Print all rows
4.times do |col|
  p boggle_board.create_word([col, 0], [col, 1], [col, 2], [col, 3])
end
# => "brae", "iodt", "eclr", "take"

# Print all columns
4.times do |row|
  p boggle_board.create_word([0, row], [1, row], [2, row], [3, row])
end
# => "biet", "roca", "adlk", "etre"

# 4. Refactored Solution
class BoggleBoard
  def initialize(board)
    @board = board
  end

  def create_word(*coords)
    coords.map { |coord| @board[coord.first][coord.last]}.join("") 
  end

  def get_row(row)
    @board[row]
  end

  def get_col(col)
    @board.map { |i| i[col] }
  end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
def assert
  raise "Error Raised!" unless yield
end

# create driver test code to retrieve a value at a coordinate here:
assert { boggle_board.create_word([1, 2], [1, 1], [2, 1], [3, 2]) == "dock" }
assert { boggle_board.create_word([1, 2]) == "d" }
assert { boggle_board.create_word([3, 2]) == "k"}
# implement tests for each of the methods here:
assert { boggle_board.get_row(1) == ["i", "o", "d", "t"] }
assert { boggle_board.get_col(1) == ["r", "o", "c", "a"] }

# 5. Reflection
=begin
In this challenge I learned how to create an object-oriented program utilizing a previous 
procedural program I wrote last week. I felt very confident creating, accessing, and
traversing data structures and implementing a basic Ruby class. With OO programming the
implementation is noticeably different. After realizing I had switched to OO progamming I
had an "oh!" moment relating to driver code. I will use the driver code as an example 
comparing the two types of programming. Procedurally if we wanted to see if a variable is 
equal to a string lets say:

name = "Kai"
We would write:
print name == "Kai"
# => true

print name == "I love Ruby"
# => false (sorry my name is not I love Ruby... but I could pull a Calvin Johnson name swap! :D)

In OO programing we would define an assert statement like this
def assert
  raise "This is not correct (FALSE)." unless yield
end

assert { name == "Kai"}
# => nil
assert { name == "I love Ruby" }
# => Would return an error and the script "This is not correct (FALSE)."

Even though the code is a little longer it feels cleaner AND we are now writing object-
oriented programs which is what Ruby was designed to do! From my little experience 
I wouldn't say one is better but OO brings benefits like organization and specifics. 
With OO programming we can write methods for specific classes so it is "tailored" for the 
data. Procedural programming appears to be broken from functions that operate on the data.
Overall, I feel that this was a very important challenge. I now can compare the two styles
and things are "clicking" more than ever!
=end 