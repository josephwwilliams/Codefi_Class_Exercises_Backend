sentence = "Hello John Doe!"

puts sentence.sub!("Hello", "Hi")

solution = "Hi John Doe!"
puts solution.match?(sentence)
