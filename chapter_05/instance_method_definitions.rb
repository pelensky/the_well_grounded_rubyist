class C
  def x
    puts "Class C, method x:"
    puts self
  end
end

c = C.new
c.x
puts "That was a call to x by #{c}"

# >> Class C, method x:
# >> #<C:0x007fef4c884f58>
# >> That was a call to x by #<C:0x007fef4c884f58>
