require 'rspec'
require 'hub'

describe 'LH Game Hub' do
  it 'can record and retrieve data for a given exchange' do
    hub = Hub.new
    hub.record_exchange('what', 'Mi ez?', 'Ez egy csésze.')
    expect(hub.retrieve_exchange('what')).to eq(
      question: 'Mi ez?',
      answer: 'Ez egy csésze.'
    )
  end

  it 'can retrieve different data for a given exchange' do
    hub = Hub.new
    hub.record_exchange('what', 'Mi az?', 'Az egy csésze.')
    expect(hub.retrieve_exchange('what')).to eq(
      question: 'Mi az?',
      answer: 'Az egy csésze.'
    )
  end

  it 'can record and retrieve data for different question words' do
    hub = Hub.new
    hub.record_exchange('what', 'Mi az?', 'Az egy csésze.')
    hub.record_exchange('who', 'Az a csészém?', 'Igen, ez a czészéd.')
    expect(hub.retrieve_exchange('what')).to eq(
      question: 'Mi az?',
      answer: 'Az egy csésze.'
    )
  end
end
