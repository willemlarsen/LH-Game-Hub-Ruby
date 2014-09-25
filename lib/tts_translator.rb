require 'uri'
require 'open-uri'


class TTSTranslator
  def self.get_speech(repo, square, question_or_answer)
    text_to_speech = repo.lap.question_squares[square][question_or_answer]
    formatted_text = text_to_speech.gsub(" ", "+")
    play_audio(formatted_text)
  end

  def self.play_audio(text)
    url = "http://translate.google.com/translate_tts?ie=UTF-8&tl=hu&q="
    `wget -q -U Mozilla -O output.mp3 "#{url}#{text}" ; afplay output.mp3 ; rm output.mp3`
  end

end
