# A Lap records and retrieves exchanges for a given Lap

class Lap
  def initialize
    @question_squares = { 'what' => {}, 'who' => {} }
  end
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
end
