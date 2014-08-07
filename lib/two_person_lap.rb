class TwoPersonLap
  def initialize(language)
    @language = language
    @topic = { theme: 'food and drink', prop: 'empty cup' }
    @what = { question: '', answer: '' }
    @who = { question: '', answer: '' }
  end

  attr_reader :language

  attr_reader :topic

  attr_reader :what

  attr_reader :who
end
