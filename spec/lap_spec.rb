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
  it 'remembers question and answer texts for exchanges for more than 1 lap' do
    test_lap_one = Lap.new
    test_lap_two = Lap.new
    test_lap_one.record_question('when', 'Mikor van ez?')
    test_lap_two.record_question('when', 'Most inni akarsz valamit?')
    expect(test_lap_one.retrieve_question('when')).to_not eq(test_lap_two.retrieve_question('when'))
  end
  it 'lists all the exchanges in a single lap' do
    test_lap = Lap.new
    test_lap.record_question('what', 'Mi ez?')
    test_lap.record_answer('what', 'Ez egy csésze.')
    test_lap.record_question('when', 'Mikor van ez?')
    test_lap.record_answer('when', 'Kettö ora van.')
    expect(test_lap.list_exchanges).to eq("WHAT:\n\tMi ez?\tEz egy csésze.\nWHEN:\n\tMikor van ez?\tKettö ora van.")
  end

  it 'updates question fragments for that lap according to user input' do
    test_lap_one = Lap.new
    test_lap_one.record_question('what', 'Mi ez?')
    test_lap_one.update_question('what', 'Mi az?')
    expect(test_lap_one.retrieve_question('what')).to eq('Mi az?')
  end

  it 'updates answer fragments for that lap according to user input' do
    test_lap_one = Lap.new
    test_lap_one.record_answer('what', 'Ez a csésze.')
    test_lap_one.update_answer('what', 'Az a csésze.')
    expect(test_lap_one.retrieve_answer('what')).to eq('Az a csésze.')
  end
end


# This is a fake class for testing

class FakeTTSTranslator
  def grab_speech(text)
    file_name = URI.escape(text)
    "#{file_name}_test.mp3"
  end
end
