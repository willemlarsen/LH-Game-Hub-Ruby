require 'rspec'
require 'lap_repository'
require 'lap'


describe 'LapRepository' do
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

  it "populates the 'which' square with a test question and answer" do
    expect(whitespace_agnostic_exchanges).to include("WHICH: Melyik csésze üres? Ez a csésze üres.")
  end

  it "populates the 'when' square with a test question and answer" do
    expect(whitespace_agnostic_exchanges).to include("WHEN: Mikor van ez? Egy óra van.")
  end

  it "populates the 'why' square with a test question and answer" do
    expect(whitespace_agnostic_exchanges).to include("WHY: Neked miért van egy pohár vized? Mert én szomjas vagyok.")
  end

  it "populates the 'how' square with a test question and answer" do
    expect(whitespace_agnostic_exchanges).to include("HOW: Igyal! Hogyan van a viz? A viz hideg.")
  end

  it 'saves a lap' do
    Dir.mkdir('test_data/test_lap') unless Dir.exists?('test_data/test_lap')
    test_repository_two = LapRepository.new('test_data/test_lap')
    test_repository_two.lap.record_question('what', 'Mi az?')
    test_repository_two.save_lap
    new_repo = LapRepository.new('test_data/test_lap')
    expect(new_repo.lap.retrieve_question('what')).to eq('Mi az?')

  end

  let(:test_repository) {
    LapRepository.new('test_data/lap_one')
  }

  let(:whitespace_agnostic_exchanges) {
    strip_whitespace(test_repository.lap.list_exchanges)
  }

  def strip_whitespace(string)
    string.gsub("\n\t", " ").gsub("\n", "")
  end
end
