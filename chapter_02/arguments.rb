obj = Object.new

=begin
def obj.one_arg(x)
    puts "I require one and only one argument!"
end
obj.one_arg(1,2,3)
=end

=begin
def multi_args(*x)
    puts "I can take zero or more arguments!"
end
multi_args(1,2,3,4,5,6)
=end

=begin
def two_or_more(a,b,*c)
    puts "I require two or more arguments!"
    puts "And sure enough, I got: "
    p a, b, c
end
two_or_more(1,2,3,4,5)
=end

=begin
def default_args(a,b,c=1)
    puts "Values of variables: ",a,b,c
end
default_args(4,5,6)
=end

=begin
def mixed_args(a,b,*c,d)
    puts "Arguments: "
    p a,b,c,d
end
mixed_args(1,2,3)
=end

def args_unleashed (a,b=1,*c,d,e)
    puts "Arguments: "
    p a,b,c,d,e
end
args_unleashed(1,2)
#doesn't work by design