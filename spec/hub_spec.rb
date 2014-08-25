require 'rspec'
require 'lap'
require 'uri'

describe 'Lap' do
  it 'remembers question text for a given What exchange' do
    test_lap = Lap.new
    test_lap.record_question('what', 'Mi ez?')
    expect(test_lap.retrieve_question('what')).to eq('Mi ez?')
  end
  it 'remembers answer text for a given What exchange' do
    test_lap = Lap.new
    test_lap.record_answer('what', 'Ez egy csésze.')
    expect(test_lap.retrieve_answer('what')).to eq('Ez egy csésze.')
  end
  it 'remembers question text for a given Who exchange' do
    test_lap = Lap.new
    test_lap.record_question('who', 'Ez egy csészed?')
    expect(test_lap.retrieve_question('who')).to eq('Ez egy csészed?')
  end
  it 'remembers answer text for a given Who exchange' do
    test_lap = Lap.new
    test_lap.record_answer('who', 'Az egy csészem.')
    expect(test_lap.retrieve_answer('who')).to eq('Az egy csészem.')
  end
  it 'remembers question and answer text for all the question exchanges' do
    test_lap = Lap.new
    test_lap.record_question('when', 'Mikor van ez?')
    expect(test_lap.retrieve_question('when')).to eq('Mikor van ez?')
  end
end


# This is a fake class for testing

class FakeTTSTranslator
  def grab_speech(text)
    file_name = URI.escape(text)
    "#{file_name}.mp3"
  end
end

