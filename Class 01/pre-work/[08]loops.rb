# Loops

# Generic Loop
# i = 0
# loop do
#   puts "i is #{i}"
#   i += 1
#   break if i == 10
# end

# While Loop
# i = 0
# while i < 10 do
#   puts "i is #{i}"
#   i += 1
# end

puts "Will you do the dishes"
while gets.chomp != "yes" do
  puts "Will you do the dishes"
end

# Until Loop
# i = 0
# until i == 10 do
#   puts "i is #{i}"
#   i += 1
# end

# Ranges
(1..10) # 1, 2, 3, ... 10
(1...10) # 1-9
('a'..'z')

# For Loop
# for i in 0..10
#   puts "i is #{i}"
# end

# Times Loop
# 5.times do
#   puts "Hello World"
# end