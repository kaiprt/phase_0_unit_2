# U2.W4: 1_solution


# I worked on this challenge [by myself, with: ].

# 2. Pseudocode

# Input:
# => array of names
# Output:
# => groups of 4 and 5
# Steps:
# 1. Define method to_group
# 2. Give to_group one argument
# 3. Set an object shuffled_array equal to your argument and shuffle it (destructive)
# and slice suffle_array by 4 and set it to an array
# 4. Set an if else statement
# => If shuffle_array's last array length is not divisible by 4 
# => create a variable extra_people and set it equal to shuffle_array.pop
# => Create a for loop with i in 0 to (but not including) shuffled_array.length
# for loop hsould push extra_people into the shuffled_array.
# => Else return the shuffled_array
# => end
 
# 3. Initial Solution
def to_group(array)
  shuffled_array = array.shuffle.each_slice(4).to_a
  remainder = shuffled_array.last.length
    if remainder % 4 != 0
      extra_people = shuffled_array.pop
      for i in 0...shuffled_array.length
        shuffled_array[i].push(extra_people[i])
      end
      return shuffled_array
    else
      return shuffled_array
    end
end
# 4. Refactored Solution
def to_group(group_array)
  shuffled_array = group_array.shuffle.each_slice(4).to_a
  remainder = shuffled_array.last.length
    if remainder % 4 != 0
      extra_people = shuffled_array.pop
      for i in 0...shuffled_array.length
        shuffled_array[i].push(extra_people[i])
      end
      return shuffled_array
    else
      return shuffled_array
    end
end

# 1. DRIVER TESTS GO BELOW THIS LINE
array_1 = ["Adeoye Jaiyeola",
"Brittaney Staton", 
"Chantelle Turnbull",
"Charu Sharma",
"Danielle Adams", 
"David Kerr",
"Dinesh Rai",
"Gregory Knud", 
"Ian Greenough", 
"Jake Huhn",
"Jason Matney",
"Jessica Tatham", 
"John Quigley",
"Judy Jow",
"Justin Lee", 
"Kai Prout",
"Ken Sin", 
"Kennedy Bhagwandeen", 
"Kevin Zhou", 
"Lasse Sviland", 
"Natalie Baer", 
"Nick Giovacchini", 
"Samuel Arkless", 
"Timothy McClung"]

array_2 = ["Adam Godel",
"Adrian Pask",
"Brendan Scarano",
"Christine Feaster",
"Howard O'Leary",
"Insung Lee",
"Jared Rader",
"Johnathan Weisner" ,
"Julia Himmel",
"Justin Phelps",
"Keaty Gross",
"Kenneth Uy",
"Lawrence Manfredi",
"Neal Fennimore",
"Payam Pakmanesh",
"Philip London",
"Ruben Osorio",
"Ryan Rebo",
"Sahan Pitigala",
"Shaun McGeever",
"Timmy Huang",
"Tyler Adams"]

array_3 = ["Andrew Larson",
"Andrew Younge" ,
"Caroline Artz",
"Dan Armstrong",
"Elizabeth Cruz",
"Elizabeth Kaplan",
"Erik Olsen",
"Fabi Castillo", 
"George Amolsch", 
"Guido Medina",
"Jason Chodera",
"Justin Stewart",
"Kevin Kanhirun",
"Lars Berg",
"Matthew Berns", 
"Matthew Didier", 
"Michael Hamel",
"Milan Grubnic",
"Mohammad Abdeljalil",
"Nate Kandler",
"Nicholas Eich",
"Oliver Treadwell", 
"Paige Crum",
"Robb Hong",
"HyungMin",
"Santrece Ross",
"Syed raza a. Jafri"]

print to_group(array_1)
print to_group(array_2)
print to_group(array_3)






# 5. Reflection 
=begin
My goal when creating a solution was to write clear code that was self explanatory while keeping the code short and sweet. I had a major "aha" moment when one of my classmates told me "slice" and how it works.
It saved me a lot of time and code lines when I realized it creates an array of arrays and that the remainder of whatever the slice value was is put into the last array. I felt very confident with the learning
objectives and I enjoyed this challenge.
=end