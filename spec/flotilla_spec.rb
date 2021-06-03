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

  it 'can add personnel' do 
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
    kathy = Person.new('Kathy Chan', 10)
    polly = Person.new('Polly Parker', 8)
    kathy.add_specialty(:astrophysics)
    kathy.add_specialty(:quantum_mechanics)
    polly.add_specialty(:operations)
    polly.add_specialty(:maintenance)
    rover = Person.new('Rover Henriette', 1)
    rover.add_specialty(:operations)
    rover.add_specialty(:maintenance)
    sampson = Person.new('Sampson Edwards', 7)
    sampson.add_specialty(:astrophysics)
    sampson.add_specialty(:quantum_mechanics)
    seventh_flotilla.add_personnel(kathy)
    seventh_flotilla.add_personnel(polly)
    seventh_flotilla.add_personnel(rover)
    seventh_flotilla.add_personnel(sampson)
    seventh_flotilla.add_ship(daedalus)

    expect(seventh_flotilla.ships).to eq([daedalus])
    expect(seventh_flotilla.personnel).to eq(([kathy, polly, rover, sampson]))
  end

  it 'can recommend personell' do 
    daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})
    daedalus.add_requirement({astrophysics: 6})
    daedalus.add_requirement({quantum_mechanics: 3})
    seventh_flotilla = Flotilla.new({designation: 'Seventh Flotilla'})
    kathy = Person.new('Kathy Chan', 10)
    polly = Person.new('Polly Parker', 8)
    kathy.add_specialty(:astrophysics)
    kathy.add_specialty(:quantum_mechanics)
    polly.add_specialty(:operations)
    polly.add_specialty(:maintenance)
    rover = Person.new('Rover Henriette', 1)
    rover.add_specialty(:operations)
    rover.add_specialty(:maintenance)
    sampson = Person.new('Sampson Edwards', 7)
    sampson.add_specialty(:astrophysics)
    sampson.add_specialty(:quantum_mechanics)

    expect(seventh_flotilla.recommend_personnel(daedalus).to eq([kathy, sampson])
  end 
end