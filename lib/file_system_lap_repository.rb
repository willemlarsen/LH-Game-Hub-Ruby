require './lib/lap'

class FileSystemLapRepository
  def initialize(directory)
    @lap = Lap.new
    @directory = directory
    record_exchange('what')
    record_exchange('who')
  end

  def record_exchange(question_word)
    @lap.record_question(question_word, File.read(directory + "/#{question_word}/question.txt"))
    @lap.record_answer(question_word, File.read(directory + "/#{question_word}/answer.txt"))
  end

  attr_reader :lap, :directory
end
