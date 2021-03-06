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

def max_profit(stocks)
  low_price = stocks.first
  high_price = stocks.first

  stocks.each_with_index do |price1, i1|
    stocks[1..-1].each_with_index do |price2, i2|
      if price1 < price2 && price1 < low_price
        low_price = price1
      end

      if price1 > price2 && price1 > high_price
        high_price = price1
      end
    end
  end

  high_price - low_price
end

puts max_profit([2.1, 4.1, 5.6, 8.0, 3.1])
puts max_profit([4.1, 2.1, 5.6, 8.0, 3.1, 1.0, 0.0])

