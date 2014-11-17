class Conversion
rom_arab = { "M" => 1000,
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
@chart = rom_arab.to_a

def self.to_1(roman)
  output = 0
  for key, value in @chart
    while roman.index(key) == 0
      output += value
      roman.slice!(key)
    end
  end
 puts output
  end

def self.to_I(arabic)
 output = []
 for key, value in @chart
   while arabic - value.to_i >= 0
     output << key
     arabic -= value.to_i
   end
 end
 puts output.join("")
 end

end
