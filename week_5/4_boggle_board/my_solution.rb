# U2.W5: A Nested Array to Model a Boggle Board

# I worked on this challenge [by myself, with: ].

boggle_board = [["b", "r", "a", "e"],
                ["i", "o", "d", "t"],
                ["e", "c", "l", "r"],
                ["t", "a", "k", "e"]]


# Part 1: Access multiple elements of a nested array

# Pseudocode

# Initial Solution

  def create_word(board, *coords)
    coords.map { |coord| board[coord.first][coord.last]}.join("")
  end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE
  puts create_word(boggle_board, [2,1], [1,1], [1,2], [0,3])  == "code" #=> returns "code"  
  puts create_word(boggle_board, [0,1], [0,2], [1,2]) == "rad" #=> creates what california slang word?
  
  
# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode
=begin
1. Define a method get row and set it to two parameters that takes a board and a row.
2. Have it inspect board[row] and return it.
=end
# Initial Solution
  def get_row(board, row)
    puts board[row].inspect
  end

# Refactored Solution
# I believe that the initial code I wrote does not need to be refactored because it is short and self explanatory. 

# DRIVER TESTS GO BELOW THIS LINE
puts get_row(boggle_board, 1) == ["i", "o", "d", "t"]

# Reflection 
=begin 
 This challenge was a good mental workout that I felt tested my programming logic.
 I found this challenge enjoyable and I learned how to think "simply" when creating
 a solution.
 =end

#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode
=begin
1. Define get_col and set it equal to two parameters board and col.
2. Have board map out its columns (col)
=end
# Initial Solution
=begin 
  def get_col(board, col)
    output = []
      board.each do |x|
        output << x[col]
      end
    puts output.inspect
  end
=end
# Refactored Solution
  def get_col(board, col)
    board.map {|i| i[col]}
  end
# DRIVER TESTS GO BELOW THIS LINE
puts get_col(boggle_board, 1) == ["r", "o", "c", "a"] #=> kept getting false but not sure why.

# Reflection
=begin 
I felt that this section was a little harder compared to get_row solution. I used my developing
skills to find a reasonable initial solution and then a "completely over-hauled" refactored
solution. Overall this was one of my favorite challenge set ups and I finished it within a 
reasonable time frame.
=end