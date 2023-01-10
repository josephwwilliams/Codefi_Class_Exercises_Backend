puts "Please enter a sentence: "
user_input = gets.chomp
puts "You typed: #{user_input}"

puts "What number do you want to multiply by two?"
number = gets.chomp.to_i
def multiply_by_two(input)
  return input.to_i * 2
end
puts "#{number} multiplied by 2 is #{multiply_by_two(number)}"

puts "What number do you want to divide by two?"
div_number = gets.chomp.to_f
def divide_by_two(input)
  return input / 2
end
puts "#{div_number} divided by 2 is #{divide_by_two(div_number)}"