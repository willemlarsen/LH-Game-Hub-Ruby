require 'rspec'
require 'lap'

describe 'Lap' do
  it 'remembers question text for a given What exchange' do
    test_lap = Lap.new
    test_lap.what.record_question('Mi ez?')
    expect(test_lap.what.retrieve_question).to eq('Mi ez?')
  end
end
