require 'rspec'
require 'file_system_lap_repository'


describe 'FileSystemLapRepository' do
  it 'populates the "what" square with a test question and answer' do
    expect(whitespace_agnostic_exchanges).to include("WHAT: Mi ez? Ez egy csésze.")
  end

  it 'populates the "who" square with a test question and answer' do
    expect(whitespace_agnostic_exchanges).to include("WHO: Ez a csészém? Igen, az a csészéd.")
  end

  it "populates the 'where' square with a test question and answer" do
    expect(whitespace_agnostic_exchanges).to include("WHERE: Hol van a csésze? A csésze itt van.")
  end

  it "populates the 'how many' square with a test question and answer" do
    expect(whitespace_agnostic_exchanges).to include("HOW MANY: Hány csésze van? Egy csésze van.")
  end

  let(:test_repository) {
    FileSystemLapRepository.new('test_data/lap_one')
  }

  let(:whitespace_agnostic_exchanges) {
    strip_whitespace(test_repository.lap.list_exchanges)
  }

  def strip_whitespace(string)
    string.gsub("\n\t", " ").gsub("\n", "")
  end
end
