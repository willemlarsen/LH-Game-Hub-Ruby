require 'rspec'
require 'lap'

describe 'LH Game lap' do
  it 'can record and retrieve data for a given exchange' do
    lap = Lap.new(user: 'willem', language: 'hungarian')
    lap.record_exchange('what', 'Mi ez?', 'Ez egy csésze.')
    expect(lap.retrieve_exchange('what')).to eq(
      question: 'Mi ez?',
      answer: 'Ez egy csésze.'
    )
  end

  it 'can retrieve different data for a given exchange' do
    lap = Lap.new(user: 'willem', language: 'hungarian')
    lap.record_exchange('what', 'Mi az?', 'Az egy csésze.')
    expect(lap.retrieve_exchange('what')).to eq(
      question: 'Mi az?',
      answer: 'Az egy csésze.'
    )
  end

  it 'can record and retrieve data for different question words' do
    lap = Lap.new(user: 'willem', language: 'hungarian')
    lap.record_exchange('what', 'Mi az?', 'Az egy csésze.')
    lap.record_exchange('who', 'Az a csészém?', 'Igen, ez a czészéd.')
    expect(lap.retrieve_exchange('what')).to eq(
      question: 'Mi az?',
      answer: 'Az egy csésze.'
    )
  end

  it 'identifies a creator for each exchange' do
    lap = Lap.new(user: 'willem', language: 'hungarian')
    lap.record_exchange('what', 'Mi az?', 'Az egy csésze.')
    expect(lap.user).to eq('willem')
  end

  it 'identifies a language for a given lap' do
    lap = Lap.new(user: 'willem', language: 'hungarian')
    lap.record_exchange('what', 'Mi az?', 'Az egy csésze.')
    expect(lap.language).to eq('hungarian')
  end

  it 'stores an audio file associated with' \
     'a given question in an exchange' do
    lap = Lap.new(user: 'willem', language: 'hungarian')
    lap.record_exchange('what', 'Mi az?', 'Az egy csésze.')
    lap.record_audio('what', 'question', 'what_question_audio.mpg')
    expect(lap.play_audio('what', 'question')).to eq(what_question_audio)
  end
end
