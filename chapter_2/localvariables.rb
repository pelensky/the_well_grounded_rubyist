=begin
def say_goodbye
    x = "Goodbye"
    puts x
end

def start_here
    x = "Hello"
    puts x
    say_goodbye
    puts "Let's check whether x remained the same:"
    puts x
end
start_here
=end


=begin
str = "Hello"
abc = str
str.replace("Goodbye")
puts str
puts abc

def say_goodbye
    str = "Hello"
    abc = str
    str.replace ("Goodbye")
    puts str
    puts abc
end
say_goodbye
=end

=begin
str = "Hello"
abc = str
str = "Goodbye"
puts str
puts abc
=end

def change_string(str)
    str.replace("New string content!")
end
s = "Original string content!"
s.freeze
change_string(s)
puts s
#error by design