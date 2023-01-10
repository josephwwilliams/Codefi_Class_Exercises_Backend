puts 2
puts "Hello"
puts true
puts joe = {
  name: "Joe",
}
puts [1, 2]
puts :joe

1 + 1 #=> 1
2 - 1 #=> 1
4 / 2 #=> 2
2 * 2 #=> 4
3 ** 3 #=> 27
5 % 2 #=> 1

"This is " + "an example of " + "concatenation" #=> "This is an example of concatenation"
puts "abcdefghijklmnopqrstuvwxyz"[6]

d = 30
t = 1
s = d/t

truth = true
puts truth ? "true" : "false"

my_name = "Joe"
2 == 2 #=> true
2 != 3 #=> true
2 < 3 #=> true
3 > 2 #=> true
2 <= 4  #=> true
5 >= 2 #=> true

b = 5
puts "Hi" if b = 5 || b > 4
puts "Hello" if b = 5 && b < 6

age = 28
puts "I am #{age} years old" if age < 30