require 'rspec'
require 'two_person_lap'
require 'question'

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
    two_person_lap_test.what.question = 'Mi ez?'
    expect(two_person_lap_test.what.question).to eq('Mi ez?')
  end

  it 'can set the answer for the What? square' do
    two_person_lap_test = TwoPersonLap.new('Hungarian')
    two_person_lap_test.what.answer = 'Ez egy csésze?'
    expect(two_person_lap_test.what.answer).to eq('Ez egy csésze?')
  end

  it 'can set the answer for the Who? square' do
    two_person_lap_test = TwoPersonLap.new('Hungarian')
    two_person_lap_test.who.question = 'Ez a csészém?'
    expect(two_person_lap_test.who.question).to eq('Ez a csészém?')
  end

  it 'can set the answer for the What? square' do
    two_person_lap_test = TwoPersonLap.new('Hungarian')
    two_person_lap_test.what.answer = 'Igen, az a czészéd.'
    expect(two_person_lap_test.what.answer).to eq('Igen, az a czészéd.')
  end
end
