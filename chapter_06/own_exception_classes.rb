class MyNewException < Exception
end
raise MyNewException, "some new kind of error has occurred!" # ~> MyNewException: some new kind of error has occurred!

class MyNewException < Exception
end
begin
  puts "About to raise exception..."
  raise MyNewException
rescue MyNewException => e
  puts "Just raised an exception: #{e}"
end

class InvalidLineError < StandardError
end

def line_from_file(filename, substring)
  fh = File.open(filename)
  line = fh.gets
  raise InvalidLineError unless line.include?(substring)
  return line
rescue InvalidLineError
  puts "Invalid line!"
  raise
ensure
  fh.close
end

module TextHandler
  class InvalidLineError < StandardError
  end
end

def line_from_file(filename, substring)
  fh = File.open(filename)
  line = fh.gets
  raise TextHandler::InvalidLineError unless line.include?(substring)
end

# ~> MyNewException
# ~> some new kind of error has occurred!
# ~>
# ~> /Users/Dan/Projects/the_well_grounded_rubyist/chapter_06/own_exception_classes.rb:3:in `<main>'
