require './lib/lap'

class FileSystemLapRepository
  attr_reader :directory
  def initialize(directory)
    @directory = directory
    record_exchange('what')
    record_exchange('who')
  end

  def lap
    @lap ||= Lap.new
  end

  private

  def record_exchange(question_word)
    lap.record_question(question_word, File.read(directory + "/#{question_word}/question.txt"))
    lap.record_answer(question_word, File.read(directory + "/#{question_word}/answer.txt"))
  end
end
