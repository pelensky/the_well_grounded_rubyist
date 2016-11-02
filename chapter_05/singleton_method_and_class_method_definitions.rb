obj = Object.new

def obj.show_me
  puts "Inside singleton method show_me of #{self}"
end

obj.show_me

puts "Back from call to show_me by #{obj}"

class C
  def C.x
    puts "Class method of class C"
    puts "self: #{self}"
  end
end

C.x

# >> Inside singleton method show_me of #<Object:0x007fecf5030c20>
# >> Back from call to show_me by #<Object:0x007fecf5030c20>
# >> Class method of class C
# >> self: C
