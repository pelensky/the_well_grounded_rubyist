ticket = Object.new


def ticket.date
    "01/02/03"
end

def ticket.venue
    "Town Hall"
end

def ticket.performer
    "Mark Twain"
end

def ticket.event
    "Author's reading"
end

def ticket.seat
    "Second Balcony, row J, seat 12"
end

def ticket.price
    5.50
end

def ticket.availability_status
    "sold"
end

def ticket.available?
    false
end


=begin
print "This ticket is for: "
print ticket.event + ", at "
print ticket.venue + ", on "
puts ticket.date + "."
print "The performer is "
puts ticket.performer + "."
print "The seat is "
print ticket.seat + ", "
print "and it costs $"
puts "%.2f." % ticket.price
=end

=begin
puts "This ticket is for: #{ticket.event}, at #{ticket.venue}. " + "The performer is #{ticket.performer}." + "The seat is #{ticket.seat}, " + "and it costs $#{"%.2f." % ticket.price}"

if ticket.available?
    puts "You're in luck!"
else
    puts "Sorry -- that seat has beens sold."
end
=end


print "Information desired: "
request = gets.chomp

=begin
if request == "venue"
    puts ticket.venue
elsif request == "performer"
    puts ticket.performer
elsif request == "date"
    puts ticket.date
elsif request == "event"
    puts ticket.event
elsif request == "seat"
    puts ticket.seat
elsif request == "price"
    puts ticket.price
else 
    puts "Sorry, I didn't understand you."
end
=end

if ticket.respond_to? (request)
    puts ticket.send(request)
else
    puts "No such information available."
end