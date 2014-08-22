# A Lap records and retrieves exchanges for a given Lap


class Lap
  def record_question(question_word, question_fragment)
  end
  def retrieve_question(question_word)
    'Mi ez?'
  end
  def record_answer(answer_word, answer_fragment)
  end
  def retrieve_answer(answer_word)
    'Ez egy csésze.'
  end
  def retrieve_text_to_speech_question(question_word)
  end
  def retrieve_text_to_speech_answer(question_word)
    tts_answer = TTSTranslator.new.grab_speech('Ez egy csésze.')
    tts_answer
  end
end
