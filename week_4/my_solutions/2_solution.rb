# U2.W4: Homework Cheater


# I worked on this challenge by myself.

# 2. Pseudocode

# Input:
# => Five arguments: title, topic, date, thesis statement, and a pronoun.
# Output:
# => A finished template of all arguments resembling the beginning of an essay.
# Steps:
=begin
1. def method essay_writer that takes the following arguments: (title, topic, date, thesis_statement, and pronoun)
2. create an if else statement checks if the last argument (pronoun) is a male
  2.1 if the pronoun is male then inject variables into the template with pronouns of a male.
  2.2 elseif the pronoun is female then inject variables into the template with pronouns of a female.
  2.3 elseif the pronoun is a place then inject pronouns relating to a place
  2.4 elseif the pronoun is a topic then inject pronouns relating to a topic. 
  2.5 else return last argument must be a male, female, place, or topic
3. return template with injected objects based off of the if else statement. 
=end


# 3. Initial Solution
def essay_writer(title, topic, date, thesis_statment, pronoun = nil)
  topic.capitalize!
  if date.to_s.length == 4
    sent1_date = "in"
  else
    sent1_date = "on"
  end

  if pronoun == 'male'
    sent1_pronoun = "man"
    sent2_pronoun = "He"
    sent2_pronoun2 = "him"
  elsif pronoun == 'female'
    sent1_pronoun = "woman"
    sent2_pronoun = "She"
    sent2_pronoun2 = "her"
  elsif pronoun == 'place'
    sent1_pronoun = "location"
    sent2_pronoun = topic
    sent2_pronoun2 = "it"
  elsif pronoun == 'topic'
    sent1_pronoun = "topic"
    sent2_pronoun = topic
    sent2_pronoun2 = topic
  else
    return "Please make sure your pronoun is either a man, female, place, or topic."
  end    
  return essay = "Topic: #{title} \n #{topic} was a very important #{sent1_pronoun} #{sent1_date} #{date}. #{sent2_pronoun} did a lot and I would like to learn more about #{sent2_pronoun2}. #{thesis_statment} I believe that #{topic} had a significant role in society."    
end



# 4. Refactored Solution
# I justify the code above as being refactored to the best of my ability. 







# 1. DRIVER TESTS GO BELOW THIS LINE
puts essay_writer("Barak Obama: First African American President", "Barak Obama", 2007, "Barak Obama was the first African American president of the United States of America.", 'male')




# 5. Reflection 
=begin
This challenge wasn't to challenging. It helped me solidify my if/else knowledge and use of variables. I felt writing the variables in the if/else statement tedious.
I did not learn any new concepts and I feel confident with the learning objectives.
=end