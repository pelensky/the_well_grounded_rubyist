print "Exit the program? (yes or no): "
answer = gets.chomp # ~> NoMethodError: undefined method `chomp' for nil:NilClass
=begin
case answer
when "yes", "y"
  puts "Goodbye!"
  exit
when "no"
  puts "Ok, we'll continue"
else
  puts "That's an unknown answer -- assuming you meant 'no'"
end
puts "Continuing with program..."
=end

if "yes" === answer
  puts "Goodbye!"
  exit
elsif "no" === answer
  puts "Ok, we'll continue"
else
  puts "That's an unnown answer - assuming you meant 'no'"
end
