require 'rspec'
require 'two_person_lap'

describe TwoPersonLap do
  it 'creates a new instance of itself' do
    two_person_lap_test = TwoPersonLap.new('Hungarian')
    expect(two_person_lap_test).to be_an_instance_of TwoPersonLap
  end

  it 'tells its chosen language' do
    two_person_lap_test = TwoPersonLap.new('Hungarian')
    expect(two_person_lap_test.language).to eq('Hungarian')
  end

  it 'has a default conversation topic' do
    two_person_lap_test = TwoPersonLap.new('Hungarian')
    expect(two_person_lap_test.topic).to eq('food and drink')
  end
end

