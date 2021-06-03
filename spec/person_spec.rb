require 'rspec'
 require './lib/person'

RSpec.describe Person do

  it 'exists' do
    kathy = Person.new('Kathy Chan', 10)

    expect(kathy).to be_a(Person)
  end

  it 'had readable attributes' do
    kathy = Person.new('Kathy Chan', 10)

    expect(kathy.name).to eq('Kathy Chan')
    expect(kathy.experience).to eq(10)
    expect(kathy.specialty).to eq([])

    #expect(kathy.specialty).to eq(:astrophysics)
  end


  
end