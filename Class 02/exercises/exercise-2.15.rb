module Traits
  def eat
    puts "Eating"
  end
end

class Person
  include Traits
end

person = Person.new
person.eat
