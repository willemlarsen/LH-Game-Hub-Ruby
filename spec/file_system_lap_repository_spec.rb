require 'rspec'
require 'file_system_lap_repository'


describe 'FileSystemLapRepository' do
  it 'stuff' do
   test_subject = FileSystemLapRepository.new('test_data/lap_one')
   lap = test_subject.lap
   expect(lap.retrieve_question('what')).to_not eq(nil)
  end
end
