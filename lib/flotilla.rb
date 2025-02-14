
class Flotilla
  attr_reader :name, :personnel, :ships
  def initialize(data)
    @name = data[:designation]
    @personnel = []
    @ships = []
  end 

  def add_ship(ship)
    @ships.push(ship)
  end 

  def add_personnel(person)
    @personnel.push(person)
  end

  def recommend_personnel(ship)
    @personnel.find_all do |person|
      ship.requirements.each do |requirement|
        if person.specialties == requirement.keys
        end
      end 
    end
  end
end