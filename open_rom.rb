$:.unshift File.dirname(__FILE__)
require "roman_numerals"

input = gets.chomp.upcase
if input[/[^\dCDILMVX]/] != nil
  puts "Not a roman numeral."
elsif input.to_i > 0
  Conversion.to_I(input.to_i)
elsif input == "0"
  puts "There is no roman numeral for 0."
elsif input.is_a?(String)
  Conversion.to_1(input)
end
