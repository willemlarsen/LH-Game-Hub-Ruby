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
    expect(two_person_lap_test.topic[:theme]).to eq('food and drink')
  end

  it 'has a default conversation prop' do
    two_person_lap_test = TwoPersonLap.new('Hungarian')
    expect(two_person_lap_test.topic[:prop]).to eq('empty cup')
  end

  it 'can set the question for the What? square' do
    two_person_lap_test = TwoPersonLap.new('Hungarian')
    two_person_lap_test.what[:question] = 'Mi ez?'
    expect(two_person_lap_test.what[:question]).to eq('Mi ez?')
  end
end
