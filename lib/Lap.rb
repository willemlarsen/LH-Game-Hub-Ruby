# A Lap records and retrieves exchanges for a given Lap

# Exchange = Struct.new(:question, :answer)

class Lap
  def initialize
    @question_squares = {
      'what' => {},
      'who' => {},
      'where' => {},
      'how many' => {},
      'which' => {},
      'when' => {},
      'why' => {},
      'how' => {}
    }
  end
  # def record_exchange(question_word, question, answer)
  #   @question_squares[ question_word ] = Exchange.new(question, answer)
  # end
  def record_question(question_word, question_fragment)
    @question_squares[ question_word ][ :question ] = question_fragment
  end
  def retrieve_question(question_word)
    @question_squares[ question_word ][ :question ]
  end
  def record_answer(question_word, answer_fragment)
    @question_squares[ question_word ][ :answer ] = answer_fragment
  end
  def retrieve_answer(question_word)
    @question_squares[ question_word ][ :answer ]
  end
  def retrieve_text_to_speech_question(question_word)
    tts_question = FakeTTSTranslator.new.grab_speech(text)
    tts_question
  end
  def retrieve_text_to_speech_answer(question_word)
    tts_answer = FakeTTSTranslator.new.grab_speech(text)
    tts_answer
  end
  def list_exchanges
    pruned_question_words = @question_squares.select {|key, value| value.keys.length > 0 }
    exchanges = pruned_question_words.map do |question_word, value|
      "#{question_word.upcase}:\n\t#{retrieve_question(question_word)}\t#{retrieve_answer(question_word)}"
    end
    exchanges.join("\n")
  end
end
