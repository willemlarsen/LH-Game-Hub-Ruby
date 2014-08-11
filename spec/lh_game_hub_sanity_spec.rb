require 'rspec'
require 'two_person_lap'
require 'question_and_answer'

describe 'Ruby' do
  it 'creates instances of classes' do
    test_lap = TwoPersonLap.new
    expect(test_lap).to be_an_instance_of TwoPersonLap
  end
end
