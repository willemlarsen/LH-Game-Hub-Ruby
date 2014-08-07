require 'rspec'
require 'two_person_lap'

describe TwoPersonLap do
  it 'creates a new instance of itself' do
    two_person_lap_test = TwoPersonLap.new('Hungarian')
    expect(two_person_lap_test).to be_an_instance_of TwoPersonLap
  end
end
