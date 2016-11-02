def talk
  puts "Hello"
end
=begin
class Object
  private
  def talk
    puts "Hello"
  end
end
=end

puts "Trying 'talk' with no receiver..."
talk
puts "Trying 'talk' with an explicit receiver..."
obj = Object.new
obj.talk
