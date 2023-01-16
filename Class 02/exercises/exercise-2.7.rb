nums = (1..100).to_a

puts nums.first
puts nums.last
puts nums.length
nums.unshift(0)
nums << 101

# nums.each_with_index do |n, i|
#   puts n
#   n *= 2
#   puts "#{n} is a even number" if n.even?
#   puts "#{n} is a odd number" if n.odd?
# end

nums.select do |n|
  puts n
  n *= 2
  puts "#{n} is a even number" if n.even?
  puts "#{n} is a odd number" if n.odd?
end