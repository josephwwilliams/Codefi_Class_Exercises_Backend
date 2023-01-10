# Basic conditional
# a = true
# puts "hello" if 4 != 5

# If Else/Elseif
# a = 3
# if a > 3
#   puts "#{a} is greater than 3"
# elsif a < 3
#   puts "#{a} is less than 3"
# else
#   puts "#{a} is equal to 3"
# end

# Unless Statement
# unless a == 3
#   puts "#{a} does not equal 3"
# end

# Comparison Operators

# == 
2 == 2 # true

# !=
2 != 3 # true

# >
3 > 4 # false

# <
3 < 4 # true

# >=

3 >= 3 # true

# <=

3 <= 2 # false

# <=>
# puts 4 <=> 3 

# Logical Operators
a = 6

# &&
# if a > 4 && a < 10
#   puts "#{a} is between 4 and 10"
# end

# puts "#{a} is between 4 and 10" if a > 4 && a < 10

# ||
# puts "#{a} is either greater than 4 or greater than 10" if a > 4 || a > 10

# Tenary Operator

can_swim = true

response = can_swim ? "You wont drown" : "You might drown"

# puts response

# Case Statement

grade = 'D'

case grade
when "A"
  puts "Good Job!"
when "A"
  puts "Great Job, try better next time though"
when "C"
  puts "You still passed, but study more"
when "D"
  puts "Almost passed, study up"
when "F"
  puts "You failed"
end