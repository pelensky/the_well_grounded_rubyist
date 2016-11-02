=begin
n = 1
loop do
  n = n + 1
#  break if n > 9
  next unless n == 10
  break
end
=end

=begin
n = 1
  # while n < 11
  begin
    puts n
    n = n + 1
  end while n < 11

  puts "Done!"
=end

=begin
n = 1
until n > 10
  puts n
  n = n + 1
end
=end

=begin
n = 1
n = n + 1 until n == 10
puts "We've reached 10!"
=end

celsius = [0, 10, 20, 30, 40, 50, 60, 70, 80, 90, 100]
puts "Celsius\tFahrenheit"
for c in celsius
  puts "#{c}\t#{Temperature.c2f(c)}" # ~> NameError: uninitialized constant Temperature
end
