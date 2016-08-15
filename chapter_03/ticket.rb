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
            @price = amount
        end
    end
end

ticket = Ticket.new("Town Hall", "11/12/13")
ticket.price = 63.00
puts "The ticket costs $#{"%.2f"% ticket.price=}."

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
