require 'rspec'
require 'lap'
require 'tts_translator'

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
  it 'retrieves a text-to-speech file of the given question'\
    'or answer fragment from TTS_Translator' do
    test_lap = Lap.new
    test_lap.record_answer('what', 'Ez egy csésze.')
    expect(test_lap.retrieve_text_to_speech_answer('what')).to eq('what_answer.mp3')
  end
end

describe 'TTS_Translator' do
  it 'grabs text-to-speech of question or answer fragment from Google Translate' do
    test_lap = Lap.new
    test_lap.record_answer('what', 'Ez egy csésze.')
    expect(TTSTranslator.new.grab_speech_question('what')).to eq('what_answer.mp3')
  end
end

