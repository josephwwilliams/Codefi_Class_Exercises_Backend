class Country
  attr_accessor :name, :confirmed_cases, :overall_deaths, :recoveries
  @@records = []

  def initialize(c_name, c_cases, c_deaths, c_recoveries)
    @name = c_name
    @confirmed_cases = c_cases
    @overall_deaths = c_deaths
    @recoveries = c_recoveries

    @@records << self
  end

# class method
  def self.all
    @@records
  end

end


# usa = Country.new("USA", '10', '0', '10')

# puts "There are this many cases in the USA " + usa.confirmed_cases

# puts Country.all