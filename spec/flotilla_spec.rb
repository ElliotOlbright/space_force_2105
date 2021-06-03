require 'rspec'
 require './lib/flotilla'
 require './lib/person'
 require './lib/spacecraft'

RSpec.describe Flotilla do

  it 'exists' do
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    expect(seventh_flotilla).to be_a(Flotilla)
  end
end