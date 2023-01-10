puts "What is your first name?"
name = gets.chomp.downcase 
puts "What is your last name?"
last_name = gets.chomp.downcase 
if name == "john" && last_name == "doe"
  puts "I found you!"
elsif name == "amy" && last_name == "jeans"
  puts "Amy! Help me look for John Doe."
 else 
  puts "You're not who I'm looking for" 
end