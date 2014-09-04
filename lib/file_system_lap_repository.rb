require './lib/lap'

class FileSystemLapRepository
  def initialize(directory)
    @lap = Lap.new
    record_exchange('what', directory)
    record_exchange('who', directory)
  end

  def record_exchange(question_word, directory)
    @lap.record_question(question_word, File.read(directory + "/#{question_word}/question.txt"))
    @lap.record_answer(question_word, File.read(directory + "/#{question_word}/answer.txt"))
  end

  attr_reader :lap
end
