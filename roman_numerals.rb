def to_1(roman)
arabics = { "M" => 1000,
            "CM" => 900,
            "D" => 500,
            "CD" => 400,
            "C" => 100,
            "XC" => 90,
            "L" => 50,
            "XL" => 40,
            "X" => 10,
            "IX" => 9,
            "V" => 5,
            "IV" => 4,
            "I" => 1, }


    chart = arabics.to_a
  output = 0
  for key, value in chart
    while roman.index(key) == 0
      output += value
      roman.slice!(key)
    end
  end
 puts output
  end

def to_I(arabic)
arabics = { "M" => 1000,
            "CM" => 900,
            "D" => 500,
            "CD" => 400,
            "C" => 100,
            "XC" => 90,
            "L" => 50,
            "XL" => 40,
            "X" => 10,
            "IX" => 9,
            "V" => 5,
            "IV" => 4,
            "I" => 1, }
chart = arabics.to_a
 output = []
 for key, value in chart
   while arabic - value.to_i >= 0
     output << key
     arabic -= value.to_i
   end
 end
 puts output.join("")
 end

#Lacking the measure against improper roman numeral.
input = gets.chomp.upcase
if input[/[^\dCDILMVX]/] != nil
  puts "Not a roman numeral."
  elsif input.to_i > 0
  to_I(input.to_i)
  elsif input == "0"
  puts "There is no roman numeral for 0."
  elsif input.is_a?(String)
    to_1(input)
  end