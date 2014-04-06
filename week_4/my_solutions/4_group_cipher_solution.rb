# U2.W4: Cipher Challenge


# I worked on this challenge [Kai Prout and Indigo Nai ].

#possible code to use. 
=begin
for each variable
(.next will work)
run next "4.times"
=end


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.



def north_korean_cipher(coded_message)
  input = coded_message.downcase.split("") # Check out this method in IRB to see how it works! Also refer to the ruby docs.
  decoded_sentence = []
  
  cipher = {"e" => "a",   # This is technically a shift of four letters...Can you think of a way to automate this? Is a hash
            "f" => "b",   # the best data structure for this problem? What are the pros and cons of hashes? 
            "g" => "c",   # We created a method that completely automates this with the ability to change the shift value. A hash is not the best way to do this.
            "h" => "d", 
            "i" => "e", 
            "j" => "f",
            "k" => "g",
            "l" => "h",
            "m" => "i",
            "n" => "j",
            "o" => "k",
            "p" => "l",
            "q" => "m",
            "r" => "n",
            "s" => "o",
            "t" => "p",
            "u" => "q",
            "v" => "r",
            "w" => "s",
            "x" => "t",
            "y" => "u",
            "z" => "v",
            "a" => "w",
            "b" => "x",
            "c" => "y",
            "d" => "z"}
            
  input.each do |x| # What is #each doing here?
    found_match = false  # Why would this be assigned to false from the outset? What happens when it's true?
    cipher.each_key do |y| # What is #each_key doing here?
      if x == y  # What is this comparing? Where is it getting x? Where is it getting y? What are those variables really?
        puts "I am comparing x and y. X is #{x} and Y is #{y}."
        decoded_sentence << cipher[y]
        found_match = true
        break  # Why is it breaking here?
      elsif x == "@" || x == "#" || x == "$" || x == "%"|| x == "^" || x == "&"|| x =="*" #What the heck is this doing?
        decoded_sentence << " "
        found_match = true
        break
      elsif (0..9).to_a.include?(x) # Try this out in IRB. What does   " (0..9).to_a "    do?
        decoded_sentence << x
        found_match = true
        break
      end 
    end
    if not found_match  # What is this looking for? 
      decoded_sentence << x
    end
  end
  decoded_sentence = decoded_sentence.join("")
 
  if decoded_sentence.match(/\d+/) #What is this matching? Look at Rubular for help. 
    decoded_sentence.gsub!(/\d+/) { |num| num.to_i / 100 } #He's been known to exaggerate...
  end  
  return decoded_sentence # What is this returning?        
end

# Your Refactored Solution
@alphabet = [*"a".."z"]
@special = ["@","#","$","%","^","&","*"]
@cipher = {}

def create_cipher(shiftValue)
  @alphabet.each_with_index{ |i, index|  @cipher[i] = @alphabet[(index-shiftValue)%@alphabet.length]}
  return @cipher
end

def north_korean_cipher(input)
  output = ""
  input.each_char do |char|
      if @special.include? char
        output.concat " "   
      elsif @alphabet.include? char
        output.concat @cipher[char]
      else
        output.concat char
    end
  end
  output.gsub!(/\d+/) { |num| num.to_i / 100 }
  return output
end


# Driver Code:
create_cipher(4)
p north_korean_cipher("m^aerx%e&gsoi!") == "i want a coke!" #This is driver code and should print true
# Find out what Kim Jong Un is saying below and turn it into driver code as well. Driver Code statements should always return "true"
p north_korean_cipher("syv@tistpi$iex#xli*qswx*hipmgmsyw*erh*ryxvmxmsyw%jsshw^jvsq^syv#1000000#tvsjmxefpi$jevqw.")
p north_korean_cipher("syv%ryoiw#evi#liph^xskixliv@fc^kveti-jpezsvih@xsjjii.*hsr'x%xipp&xli#yw!")
p north_korean_cipher("mj^csy&qeoi^sri*qmwxeoi,%kir.*vm@csrk-kmp,&csy^ampp*fi&vitpegih*fc@hirrmw&vshqer.")
p north_korean_cipher("ribx^wxst:$wsyxl%osvie,$xlir$neter,#xlir%xli%asvph!")
p north_korean_cipher("ger^wsqifshc*nywx^kix^qi&10000*fekw@sj$gssp%vergl@hsvmxsw?")

# Reflection
=begin
I worked on this group cipher with Indigo Nai. Our strategy was to refactore the code as much as possible removing unnecessary lines and chunks of code.
We were able to substancially slim down this code and created a method that would automatically cipher a message. I had many questions involving the original
code and Indigo helped guide me to a clear understanding of what was at hand. In this challenge I learned how to use Rubular, discovered Repl.it, created instance
variables, and improved syntax related skills. This challenge helped solidify my refactoring skills which I was struggling to grasp earlier in the program. I feel
very confident refactoring now and solving similiar challenge. Overall, I enjoyed this challenge and working with another individual.
=end  
