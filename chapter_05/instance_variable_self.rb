=begin
class C
  def show_var
    @v = "I am an instance variable initialized to a string."
    puts @v
  end
  @v = "Instance variables can appear anywhere..."
end

C.new.show_var
=end

class C
  puts "Just inside class definition block. Here's self: "
  p self
  @v = "I am an instance variable at the top level of a class body."
  puts "And here's the instance variable @v, belonging to #{self}:"
  p @v

  def show_var
    puts "Inside an instance method definition block. Here's self:"
    p self
    puts "And here's the instance variable @v, belonging to #{self}:"
    puts @v
  end
end

c = C.new
c.show_var

# >> Just inside class definition block. Here's self: 
# >> C
# >> And here's the instance variable @v, belonging to C:
# >> "I am an instance variable at the top level of a class body."
# >> Inside an instance method definition block. Here's self:
# >> #<C:0x007fd0c007efc0>
# >> And here's the instance variable @v, belonging to #<C:0x007fd0c007efc0>:
# >>
