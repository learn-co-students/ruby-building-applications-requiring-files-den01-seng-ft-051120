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

class Plant
  attr_accessor :garden, :name

  @@all = []

  def initialize(name:)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end
end

lawn = Garden.new(name: 'Front Lawn')

basil = Plant.new(name: 'Basil')
basil.garden = lawn

cucumber = Plant.new(name: 'Cucumber')
cucumber.garden = lawn

p lawn.plants

#=>     [#<Plant:0x00007fccbd059768 @name="Basil", @garden=#<Garden:0x00007fccbd059880 @name="Front Lawn">>,
#      #<Plant:0x00007fccbd059650 @name="Cucumber", @garden=#<Garden:0x00007fccbd059880 @name="Front Lawn">>]