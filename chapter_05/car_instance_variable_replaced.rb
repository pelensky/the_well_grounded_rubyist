class Car
  @@makes = []
  @@cars = {}
  @@total_count = 0
  attr_reader :make
  def self.total_count
    @total_count ||= 0
  end
  def self.total_count=(n)
    @total_count = n
  end

  def self.add_make(make)
    unless @@makes.include?(make)
      @@makes << make
      @@cars[make] = 0
    end
  end

  def initialize(make)
    if @@makes.include?(make)
      puts "Creating a new #{make}!"
      @make = make
      @@cars[make] += 1
      self.class.total_count += 1
    else
      raise "No such make: #{make}."
    end
  end

  def make_mates
    @@cars[self.make]
  end
end


Car.add_make("Honda")
Car.add_make("Ford")
h = Car.new("Honda")
f = Car.new("Ford")
h2 = Car.new("Honda")

puts "Counting cars of same make as h2..."
puts "There are #{h2.make_mates}."

puts "Cointing total cars.."
puts "there are #{Car.total_count}"

# x = Car.new("Brand X")

class Hybrid < Car
end

h3 = Hybrid.new("Honda")
f2 = Hybrid.new("Ford")
puts "there are #{Hybrid.total_count} hybrids on the road!"

# >> Creating a new Honda!
# >> Creating a new Ford!
# >> Creating a new Honda!
# >> Counting cars of same make as h2...
# >> There are 2.
# >> Cointing total cars..
# >> there are 3
# >> Creating a new Honda!
# >> Creating a new Ford!
# >> there are 2 hybrids on the road!
