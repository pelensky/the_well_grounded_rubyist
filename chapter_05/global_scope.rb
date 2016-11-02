=begin
$gvar = "I'm a global!"
nongvar = "I'm not global"

class C
  def examine_global
    puts $gvar
    puts nongvar # ~> NameError: undefined local variable or method `nongvar' for #<C:0x007feb2b820ff0>
  end
end

c = C.new
c.examine_global
=end

class Person
  def whole_name
    n = $first_name + " "
    n << "#{$middle_name} " if $middle_name
    n << $last_name
  end
end

dan = Person.new
$first_name = "Daniel"
$middle_name = "Grant"
$last_name = "Pelensky"
puts dan.whole_name

# >> Daniel Grant Pelensky
