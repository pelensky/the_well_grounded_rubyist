def block_scope_demo
  x = 100
  1.times do
    puts x
  end
end
block_scope_demo

def block_scope_demo_2
  x = 100
  1.times do
    x = 200
  end
  puts x
end

block_scope_demo_2

def block_local_parameter
  x = 100
  [1,2,3].each do |x|
    puts "Parameter x is #{x}"
    x = x + 10
    puts "Reassigned to x in block; it's now #{x}"
  end
  puts "Outer x is still #{x}"
end
 block_local_parameter

 def block_local_variable
   x = "Original x!"
   3.times do |i;x|
     x = i
     puts "x in the block is now #{x}"
   end
   puts "x after the block ended is #{x}"
 end
 block_local_variable

# >> 100
# >> 200
# >> Parameter x is 1
# >> Reassigned to x in block; it's now 11
# >> Parameter x is 2
# >> Reassigned to x in block; it's now 12
# >> Parameter x is 3
# >> Reassigned to x in block; it's now 13
# >> Outer x is still 100
# >> x in the block is now 0
# >> x in the block is now 1
# >> x in the block is now 2
# >> x after the block ended is Original x!
