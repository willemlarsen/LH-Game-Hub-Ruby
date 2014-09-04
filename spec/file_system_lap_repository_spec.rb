require 'rspec'
require 'file_system_lap_repository'


describe 'FileSystemLapRepository' do
  it 'populates the "what" square with a test question and answer' do
    test_repository = FileSystemLapRepository.new('test_data/lap_one')
    test_lap = test_repository.lap
    expect(test_lap.list_exchanges.gsub("\n\t", " ").gsub("\n", "")).to eq("WHAT: Mi ez? Ez egy csésze.")
  end
end
