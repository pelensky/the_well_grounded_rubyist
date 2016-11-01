=begin
class Ticket
    def event
        "Can't really be specified yet..."
    end
end

ticket = Ticket.new
puts ticket.event
=end

=begin
ticket = Object.new
def ticket.price
    117.50
end
=end

=begin
class Ticket
    def initialize(venue,date)
        @venue = venue
        @date = date
        def venue
            @venue
        end
        def date
            @date
        end
        def price= (amount)
            if (amount * 100).to_i == amount * 100
                @price = amount
            else
                puts "The price seems to be malformed"
            end
        end
        def price
            @price
        end
    end
end


ticket = Ticket.new("Town Hall", "11/12/13")
ticket.price = 63.00
puts "The ticket costs $#{"%.2f"% ticket.price=}."
=end

=begin
ticket.price=(72.50)
puts "Whoops -- it just went up. It now costs $#{"%.2f" % ticket.price=}."
=end

=begin
cc = Ticket.new("Convention Center", "12/13/14")
puts "We've created two tickets."
puts "The first is for a #{th.venue} event on #{th.date}."
puts "The second is for an event on #{cc.date} at #{cc.venue}."
=end

=begin
class Ticket
  def initialize(venue, date)
    @venue = venue
    @date = date
  end

  def price=(price)
    @price = price
  end

  def venue
    @venue
  end

  def date
    @date
  end

  def price
    @price
  end
end
=end

=begin
class Ticket
  attr_reader :venue :date
  attr_accessor :price
  def initialize(venue, date, price)
    @venue = venue
    @date = date
    @price = price
  end
end
=end

=begin
def Ticket.most_expensive(*tickets)
  tickets.max_by(&:price)
end

th = Ticket.new("Town Hall", "11/12/13")
cc = Ticket.new("Convention Center", "12/13/14")
fg = Ticket.new("Fiargrounds", "13/14/15")
th.price = 12.55
cc.price = 10.00
fg.price = 18.00
highest = Ticket.most_expensive(th,cc,fg)
puts "The highest-proced ticket is the one for the #{highest.venue}."
=end

=begin
class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]

  def initialzie(venue, date)
    if VENUES.include?(venue)
      @venue = venue
    else
      raise ArgumentError, "Unknown venue #{venue}"
    end
    @date = date
  end
=end


class Ticket
  VENUES = ["Convention Center", "Fairgrounds", "Town Hall"]
end
venues = Ticket::VENUES
venues << "High School Gym"


puts "We've closed the class definition"
puts "So we have to use the path notation to reach the constant."
puts "The venues are:"
puts Ticket::VENUES

# >> We've closed the class definition
# >> So we have to use the path notation to reach the constant.
# >> The venues are:
# >> Convention Center
# >> Fairgrounds
# >> Town Hall
# >> High School Gym
