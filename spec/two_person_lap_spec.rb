require 'rspec'
require 'two_person_lap'

describe 'TwoPersonLap' do
  it 'creates an instance of itself' do
    test_lap = TwoPersonLap.new
    expect(test_lap).to be_an_instance_of TwoPersonLap
  end
end
