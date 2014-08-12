# A Hub records and retrieves exchanges for a given Lap
class Hub
  def initialize(attributes)
    @user = attributes[:user]
    @language = attributes[:language]
    @exchanges = {}
  end

  def record_exchange(question_word, question, answer)
    @exchanges[question_word] = { question: question, answer: answer }
  end

  def retrieve_exchange(question_word)
    @exchanges[question_word]
  end

  attr_accessor :user

  attr_accessor :language
end
