# Enumerable Methods

# Each Method
# Calling 'each' on an array will iterate through that array and will yield each
# element to a code block, where a task can be performed
attendees = ['Joe', 'Jack', 'Cody', 'Lee', 'Bobby', 'Chan']

# attendees.each { |attendee| puts "Hello, " + attendee}


# Each With Index Method
# attendees.each_with_index do |attendee, index|
#   puts "Team 1: " + attendee if index.odd?
#   puts "Team 2: " + attendee if index.even?
# end

# Map Method
# The 'map' method (also called 'collect') transforms each element from an array
# according to whatever block you pass to it and returns the transformed elements in a
# new array
# puts attendees.map { |attendee| attendee.upcase}
# puts attendees

# Select Method
# The 'select' method (also called 'filter') passes every item in an array to a block and
# returns a new array with only the items for which the condition you set in the block 
# evaluated to true.
# puts attendees.select { |attendee| attendee != 'Lee'}

# Reduce Method
# The 'reduce' method (also called 'inject') is possibly the most difficult-to-grasp
# enumerable for new coders. The idea is simple enough, though: it reduces an array or hash
# down to a single object. You should use 'reduce' when you want to get an output of
# a single value.

some_numbers = [1, 2, 3, 4, 5]

# puts some_numbers.reduce { |sum, number| sum + number}

# Returning Values
# puts attendees.map! { |attendee| attendee.upcase} # Add ! at the end of map (Bang Method)
updated_list = attendees.map { |attendee| attendee.upcase}
puts updated_list
puts attendees