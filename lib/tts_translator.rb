require 'uri'
require 'open-uri'

class TTSTranslator

  def grab_speech(question_word, exchange_fragment)
    myfile = File.new("#{question_word}-#{exchange_fragment}.mp3", 'wb')
    result_text = URI.escape(exchange_fragment)
    open("https://translate.google.com/translate_tts?ie=UTF-8&q=#{result_text}&tl=hu") do |f|
      myfile.write(f.read)
    end
    myfile.close
    "#{question_word}-#{exchange_fragment}.mp3"
  end
end
