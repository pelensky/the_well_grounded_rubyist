=begin
if x = 1
  puts "Hi!"
end
=end

name = "Daniel G. Pelensky"

if m = /iel/.match(name)
  puts "Found a match!"
  print "Here's the unmatched start of the string: "
  puts m.pre_match
  print "Here's the unmatched end of the string: "
  puts m.post_match
else
  puts "No match"
end

# >> Found a match!
# >> Here's the unmatched start of the string: Dan
# >> Here's the unmatched end of the string:  G. Pelensky
