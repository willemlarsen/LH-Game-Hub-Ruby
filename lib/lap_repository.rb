require './lib/lap'

class LapRepository
  attr_reader :directory
  def initialize(directory)
    @directory = directory
    record_exchanges
  end

  def lap
    @lap ||= Lap.new
  end

  private

  def record_exchanges
    lap.question_squares.each do |square, exchange|
      question = File.read(directory + "/#{square}/question.txt")
      answer   = File.read(directory + "/#{square}/answer.txt")
      lap.record_question(square, question)
      lap.record_answer(square, answer)
    end
  end
end
