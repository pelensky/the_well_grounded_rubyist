=begin
def my_loop
  # while true
    # yield
  #end
  yield while true
end

my_loop { puts "My-looping forever!"}
=end
class Integer
  def my_times
    c = 0
    until c == self
      yield(c)
      c += 1
    end
    self
  end
end
