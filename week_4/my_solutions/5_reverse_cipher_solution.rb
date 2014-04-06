# U2.W4: Refactor Cipher Solution


# I worked on this challenge [by myself, with: ].


# 1. Solution
# Write your comments on what each thing is doing. 
# If you have difficulty, go into IRB and play with the methods.
# Also make sure each step is necessary. If you don't think it's necessary
# Try implementing the code without it. 

def translate_to_cipher(sentence)
    alphabet = ('a'..'z').to_a
    cipher = Hash[alphabet.zip(alphabet.rotate(4))]
    spaces = ["@", "#", "$", "%", "^", "&", "*"]
    
    original_sentence = sentence.downcase
    encoded_sentence = []
    original_sentence.each_char do |element|
      if cipher.include?(element)
        encoded_sentence << cipher[element]
      elsif element == ' '
        encoded_sentence << spaces.sample
      else 
        encoded_sentence << element
      end
     end
    
    return encoded_sentence.join
end


# Questions:
# 1. What is the .to_a method doing?
# => "To Array" (Converts object into an array.)
# 2. How does the rotate method work? What does it work on?
# => Returns a new array by rotating so the number in the argument is the first element.
# 3. What is `each_char` doing?
# => Passes each character in the string through the block.
# 4. What does `sample` do?
# => Chooses a random element from the array.
# 5. Are there any other methods you want to understand better?
# => Yes all of them! :)
# 6. Does this code look better or worse than your refactored solution
#    of the original cipher code? What's better? What's worse?
# => It's roughly the same as what we did. But this is better because of the use of more specific methods.
# 7. Is this good code? What makes it good? What makes it bad?
# => In my opinion this is good code. Code is only repeated when needed, indentation is good along with spacing and syntax.

# 1. DRIVER TESTS GO BELOW THIS LINE
# Does this return the same thing every time?
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")
p translate_to_cipher("I want cookies")





# 5. Reflection 
=begin
I learned a couple new tricks in this challenge (.rotate, .sample, .each_char, and .zip). Answering the questions forced me to confirm my knowledge on the subject.
I felt confident explaining the code, researching methods, and determining if a code is good or bad.
=end