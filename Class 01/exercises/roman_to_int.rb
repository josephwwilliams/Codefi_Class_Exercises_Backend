def to_in(nums)
  numeral = nums
  output = 0
  numerals = {
    "I" => 1,
    "V" => 5,
    "X" => 10,
    "L" => 50,
    "C" => 100,
    "D" => 500,
    "M" => 1000,
  }
  combine_nums = {
    "IV" => 4,
    "IX" => 9,
    "XL" => 40,
    "XC" => 90,
    "CD" => 400,
    "CM" => 900
  }
  for key in combine_nums.keys
    if numeral.include? key
      output += combine_nums[key]
      numeral.slice! key
    end
  end
  for a in numeral.split("")
    output += numerals[a]
  end
  puts output
end

to_in("MCMXCIV")