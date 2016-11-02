=begin
case
when user.first_name == "Dan", user.last_name == "Pelensky" # ~> NameError: undefined local variable or method `user' for main:Object
  puts "You might be Dan Pelensky"
when Time.now.wday == 5
  puts "You're not Dan Pelensky, but at least it's Friday!"
else
  puts "You're not Dan Pelensky, and it's not Friday."
end
=end

puts case
when user.first_name == "Dan", user.last_name == "Pelensky"
  "You might be Dan Pelensky"
when Time.now.wday == 5
  "You're not Dan Pelensky, but at least it's Friday!"
else
  "You're not Dan Pelensky, and it's not Friday."
end
