class Cake
  def initialize(batter)
    @batter = batter
    @baked = true
  end
end

class Egg
end

class Flour
end

class Baker
  def bake_cake
    @batter = []
    pour_flour
    add_egg
    stir_batter
    return Cake.new(@batter)
  end

  def pour_flour
    @batter.push(Flour.new)
  end

  def add_egg
    @batter.push(Egg.new)
  end

  def stir_batter
  end

  private :pour_flour, :add_egg, :stir_batter
end

b = Baker.new
b.add_egg # ~> NoMethodError: private method `add_egg' called for #<Baker:0x007fcd31043430>

# ~> NoMethodError
# ~> private method `add_egg' called for #<Baker:0x007fcd31043430>
# ~>
# ~> /Users/Dan/Projects/the_well_grounded_rubyist/chapter_05/private_methods.rb:38:in `<main>'
