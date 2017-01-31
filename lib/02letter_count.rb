# Write a method called `letter_count` to count the letter
# occurrence in a string. Use a hash
#
# Example method call:
#
# letter_count('banana')
#
# > {"b" => 1, "a" => 3, "n" => 2}
#
def letter_count(string)
  string.downcase!
  string.gsub!(/[^\p{Alnum}]/, '')
  histogram = Hash.new
  string.each_char do |char|
    letter = string[char]
    histogram[letter] = (histogram[letter] || 0) + 1
  end
  puts histogram
end

letter_count 'X%e^&N£o&Ph@O(b$I^*(&a--'
