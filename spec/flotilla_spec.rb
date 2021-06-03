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

  it 'has readable attributes' do
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    expect(seventh_flotilla.name).to eq('Seventh Flotilla')
  end

  it 'has personal and ships' do
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
    
    expect(seventh_flotilla.personnel).to eq([])
    expect(seventh_flotilla.ships).to eq([])
  end

  it 'can add ships' do 
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})

    seventh_flotilla.add_ship(daedalus)
    expect(seventh_flotilla.ships).to eq([daedalus])
  end
end