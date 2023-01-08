puts "Hello World"

# Addition
1 + 1 #=> 2

# Subtraction
2 - 1 #=> 1

# Muliplication
2 * 2 #=> 4

# Division
10 / 5 #=> 2

# Exponent
2 ** 2 #=> 4
3 ** 4 #=> 81

# Modulus
8 % 2 #=> 0 (8 / 2 = 4; no remainder)
10 % 4 #=> 2 (10 / 4 = 2)

# To convert an integar to a float:
13.to_f #=> 13.0

# To convert an float to a integar:
13.0.to_i #=> 13
13.9.to_i #=> 13

6.even? #=> true
7.even? #=> false

6.odd? #=> false
7.odd? #=> true

## STRINGS

# With the plus operator:
"Ruby " + "is " + "Cool"    #=> "Ruby is Cool"

# With the shovel operator:
"I " << "Am " << "Joe"  #=> "I Am Joe"

# With the concat method:
"Here ".concat("I ").concat("Come")  #=> "Here I Come"

"hello"[0] #=> "h"

"hello"[0..2] #=> "hel"

"hello"[0,4] #=> "hell"

"hello"[-1] #=> "o"

# Interpolation

name = "Joe"

puts "Hello, #{name}" #=> "Hello, Joe"
puts 'Hello, #{name}' #=> "Hello, #{name}"

5.to_s #=> "5"

nil.to_s #=> ""

##Symbols

:symbol.to_s #=> "symbol"

"string" == "string" #=> true

"string".object_id == "string".object_id #=> false

:symbol.object_id == :symbol.object_id #=> true