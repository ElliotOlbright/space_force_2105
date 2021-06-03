require 'rspec'
 require './lib/flotilla'
 require './lib/person'
 require './lib/spacecraft'

RSpec.describe Flotilla do

    it 'exists' do
      daedalus = Spacecraft.new({name: 'Daedalus', fuel: 400})


    end
  end
end