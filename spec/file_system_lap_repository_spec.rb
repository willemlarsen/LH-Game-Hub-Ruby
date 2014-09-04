require 'rspec'
require 'file_system_lap_repository'


describe 'FileSystemLapRepository' do
  it 'populates the "what" square with a test question and answer' do
    test_repository = FileSystemLapRepository.new('test_data/lap_one')
    whitespace_agnostic_exchanges = strip_whitespace(test_repository.lap.list_exchanges)
    expect(whitespace_agnostic_exchanges).to eq("WHAT: Mi ez? Ez egy csésze.")
  end

  def strip_whitespace(string)
    string.gsub("\n\t", " ").gsub("\n", "")
  end
end
