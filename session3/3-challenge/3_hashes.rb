# Write a method that takes a string and returns an array
# whose keys are all the downcased words in the string,
# and values are the number of times these words were seen.
#
# No punctuation will appear in the strings.
#
# Example:
# word_count "The dog and the cat" # => {"the" => 2, "dog" => 1, "and" => 1, "cat" => 1}

#string to an array
#downcase all the words
#remove all duplicates
#count each time the word appears

def word_count str
  result = Hash.new 0#set the hash to have a default value of 0
  str.downcase.split.each {|i| result[i] +=  1}
  result
end

