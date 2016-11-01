o = Object.new
o.blah # ~> NoMethodError: undefined method `blah' for #<Object:0x007fa2860516a0>

def o.method_missing(m, *args)
  puts "You can't call #{m} on this object; please try again."
end

o.blah

# ~> NoMethodError
# ~> undefined method `blah' for #<Object:0x007fa2860516a0>
# ~>
# ~> /Users/Dan/Projects/the_well_grounded_rubyist/chapter_04/method_missing.rb:2:in `<main>'
