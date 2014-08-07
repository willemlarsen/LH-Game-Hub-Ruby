require 'question'

class TwoPersonLap
  def initialize(language)
    @language = language
    @topic = { theme: 'food and drink', prop: 'empty cup' }
    @what = QuestionAndAnswer.new
    @who = QuestionAndAnswer.new
  end

  attr_reader :language

  attr_accessor :topic

  attr_accessor :what

  attr_accessor :who
end
