class Person
  attr_accessor :first_name, :middle_name, :last_name

  def whole_name
    n = first_name + " "
    n << "#{middle_name} " if middle_name
    n << last_name
  end
end

dan = Person.new
dan.first_name = "Daniel"
dan.last_name = "Pelensky"
puts "Dan's whole name: #{dan.whole_name}"
dan.middle_name = "Grant"
puts "Dan's new whole name: #{dan.whole_name}"

# >> Dan's whole name: Daniel Pelensky
# >> Dan's new whole name: Daniel Grant Pelensky
