class Party
  # @@attendee_count = 0
  # @@attendee_list = []

  # def add_attendee(name)
  #   @@attendee_count += 1
  #   @@attendee_list.push(name)
  # end

  # def print_attendees
  #   puts "Total Attendees: #{@@attendee_count}"
  #   puts "Attendee Names: "
  #   @@attendee_list.each { |attendee| puts attendee}
  # end

  attr_accessor :attendee_count, :attendee_list #=> Does both read and write
  # attr_reader :attendee_count, :attendee_list
  # attr_writer :attendee_count, :attendee_list

  def initialize()
    @attendee_count = 0
    @attendee_list = []
  end

  def add_attendee(name)
    @attendee_count += 1
    @attendee_list.push(name)
  end

  def print_attendees
    puts "Total Attendees: #{@attendee_count}"
    puts "Attendee Names: "
    @attendee_list.each { |attendee| puts attendee}
  end

end

party_1 = Party.new()
party_1.add_attendee('Joe')
party_1.add_attendee('Bob')
party_1.add_attendee('Lee')
party_1.add_attendee('Jane')
party_1.add_attendee('Jerry')
# party_1.print_attendees
puts party_1.attendee_count
puts party_1.attendee_list

party_2 = Party.new()
party_2.add_attendee('Jack')
party_2.add_attendee('Jordan')
# party_2.print_attendees