require './lib/plant.rb'   # <= need to require the plant.rb for accesss to the Plant class

class Garden
  attr_accessor :name

  def initialize(name:)
    @name = name
  end

  def plants
    Plant.all.select do |plant|
      plant.garden == self
    end
  end
end

lawn = Garden.new(name: 'Front Lawn')

basil = Plant.new(name: 'Basil')
basil.garden = lawn

cucumber = Plant.new(name: 'Cucumber')
cucumber.garden = lawn

p lawn.plants

#=>   .[#<Plant:0x00007fb3d1062a70 @name="Basil", @garden=#<Garden:0x00007fb3d1062c00 @name="Front Lawn">>,
#       #<Plant:0x00007fb3d10628e0 @name="Cucumber", @garden=#<Garden:0x00007fb3d1062c00 @name="Front Lawn">>]


#---------------------------------------------------------------------------------------------

# Something is missing here

# class Garden
#   attr_accessor :name

#   def initialize(name:)
#     @name = name
#   end

#   def plants
#     Plant.all.select do |plant|
#       plant.garden == self
#     end
#   end
# end

# lawn = Garden.new(name: 'Front Lawn')

# basil = Plant.new(name: 'Basil')
# basil.garden = lawn

# cucumber = Plant.new(name: 'Cucumber')
# cucumber.garden = lawn

# p lawn.plants

#=>   ./lib/garden.rb:19:in `<main>': uninitialized constant Plant (NameError)
