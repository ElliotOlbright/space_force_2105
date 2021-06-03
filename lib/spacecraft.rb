class Spacecraft
  attr_reader :name, :fuel, :requirements
  def initialize(data)
    @name = data[:name]
    @fuel = data[:fuel]
    @requirements = []
  end 

  def add_requirement(data)
    @requirements.push(data)
  end 
end 
