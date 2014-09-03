require './lib/lap'

class FileSystemLapRepository
  def initialize(directory)
    @lap = Lap.new
    @lap.record_question('what', File.read(directory + '/what/question.txt'))
    @lap.record_answer('what', File.read(directory + '/what/answer.txt'))
  end

  attr_reader :lap
end
