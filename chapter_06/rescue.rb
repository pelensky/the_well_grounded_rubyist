def open_user_file
  print "File to open: "
  filename = gets.chomp
  fh = File.open(filename)
  yield fh
  fh.close
rescue
  puts "Couldn't open your file!"
end

open_user_file

def fussy_method(x)
  raise ArgumentError, "I need a number under 10" unless x < 10
end

begin
fussy_method(20)
rescue ArgumentError => e
  puts "That was not an acceptable number!"
  puts "Here's the backtrace for this exception: "
  puts e.backtrace
  puts "And here's the exception object's message:"
  puts e.message
end

begin
  fh = File.open(filename)
rescue => e
  logfile.puts("User tried to open #{filename}, #{Time.now}")
  logfile.puts("Exception: #{e.message}")
  raise
end


# >> File to open: Couldn't open your file!
# >> That was not an acceptable number!
# >> Here's the backtrace for this exception:
# >> /Users/Dan/Projects/the_well_grounded_rubyist/chapter_06/rescue.rb:14:in `fussy_method'
# >> /Users/Dan/Projects/the_well_grounded_rubyist/chapter_06/rescue.rb:18:in `<main>'
# >> And here's the exception object's message:
# >> I need a number under 10
