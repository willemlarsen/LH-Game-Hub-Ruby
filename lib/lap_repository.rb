require './lib/lap'

class LapRepository
  attr_reader :directory
  def initialize(directory)
    @directory = directory
    lap.question_squares.each do |square, _exchange|
      Dir.mkdir(directory + '/' + square) unless Dir.exist?(directory + '/' + square)
    end
    load_exchanges
  end

  def lap
    @lap ||= Lap.new
  end

  def save_lap
    lap.question_squares.each do |square, _exchange|
      File.open(directory + "/#{square}/question.txt", File::CREAT | File::TRUNC | File::WRONLY) do |file|
        file.write(lap.retrieve_question(square))
      end
      File.open(directory + "/#{square}/answer.txt", File::CREAT | File::TRUNC | File::WRONLY) do |file|
        file.write(lap.retrieve_answer(square))
      end
    end
  end

  private

  def load_exchanges
    lap.question_squares.each do |square, exchange|
      File.open(directory + "/#{square}/question.txt", File::CREAT | File::RDONLY) do |file|
        question = file.read()
        lap.record_question(square, question)
      end
      File.open(directory + "/#{square}/answer.txt", File::CREAT | File::RDONLY) do |file|
        answer = file.read()
        lap.record_answer(square, answer)
      end
    end
  end
end
