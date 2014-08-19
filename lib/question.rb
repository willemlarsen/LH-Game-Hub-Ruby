# This manages questions
class Question
  def initialize(question_sentence)
    @question_sentence = question_sentence
  end

  def to_s
    @question_sentence
  end
end
