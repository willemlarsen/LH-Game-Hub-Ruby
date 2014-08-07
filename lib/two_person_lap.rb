class TwoPersonLap
  def initialize(language)
    @language = language
    @topic = { theme: 'food and drink', prop: 'empty cup' }
    @what = {}
  end

  attr_reader :language

  attr_reader :topic

  attr_reader :what
end
