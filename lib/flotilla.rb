class Flotilla
  attr_reader :name
  def initialize(data)
    @name = data[:designation]
  end 
end