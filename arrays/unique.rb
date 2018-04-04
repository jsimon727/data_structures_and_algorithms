require 'pry'
def unique?(string)
  return true if string.chars.empty?
  list1 = string.chars
  list2 = string.chars[1..-1]
  list3 = string.chars[2..-1]

  unique_values = list1 | list2 | list3
  unique_values.size == string.chars.size
end

puts unique?("hhh")
puts unique?("hih")
puts unique?("hijkll")
puts unique?("aahijkl")
puts unique?("")

def permutation?(string1, string2)
  #string1.chars.sort == string2.chars.sort
  string1.chars.reduce(0) { |acum, char| acum + char.ord } ==
    string2.chars.reduce(0) { |acum, char| acum + char.ord }
end

puts permutation?("hey", "yeha")
puts permutation?("ccccc", "ccccc")
puts permutation?("acccc", "ccacc")
puts permutation?("acscc", "ccacc")
puts permutation?("acscc", "ccacccc")
puts permutation?("", "")

