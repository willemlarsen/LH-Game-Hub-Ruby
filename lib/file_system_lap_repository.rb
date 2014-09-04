require './lib/lap'

class FileSystemLapRepository
  attr_reader :directory
  def initialize(directory)
    @directory = directory
    record_exchange('what')
    record_exchange('who')
    record_exchange('where')
    record_exchange('how many')
    record_exchange('which')
    record_exchange('when')
    record_exchange('why')
    record_exchange('how')
  end

  def lap
    @lap ||= Lap.new
  end

  private

  def record_exchange(question_word)
    question = File.read(directory + "/#{question_word}/question.txt")
    answer   = File.read(directory + "/#{question_word}/answer.txt")
    lap.record_question(question_word, question)
    lap.record_answer(question_word, answer)
    # lap.record_exchange(question_word, question, answer)
  end
end
