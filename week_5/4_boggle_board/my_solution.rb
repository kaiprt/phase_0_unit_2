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
  puts get_row(boggle_board, 1) == ["i", "o", "d", "t"]
  puts get_col(boggle_board, 1) == ["r", "o", "c", "a"] #=> kept getting false but not sure why.
# Reflection 

#-------------------------------------------------------------------------------

# Part 2: Write a method that takes a row number and returns all the elements in the row.  

# Pseudocode

# Initial Solution
  def get_row(board, row)
    puts board[row].inspect
  end

# Refactored Solution


# DRIVER TESTS GO BELOW THIS LINE


# Reflection 



#-------------------------------------------------------------------------------

# Part 3: Now write a method that takes a column number and returns all the elements in the column.

# Pseudocode

# Initial Solution
  def get_col(board, col)
    output = []
      board.each do |x|
        output << x[col]
      end
    puts output.inspect
  end
# Refactored Solution
  def get_col(board, col)
    board.map {|i| i[col]}
  end
# DRIVER TESTS GO BELOW THIS LINE


# Reflection 