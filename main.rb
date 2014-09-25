#!/Users/willem/.rubies/ruby-2.1.2/bin/ruby
require './lib/game.rb'
require './lib/lap.rb'
require './lib/lap_repository.rb'
require './lib/tts_translator.rb'

def introduce_game_hub
  puts "\n"
  puts "Hello! Welcome to the Language Hunt Game Hub."

  @current_game_repo = LapRepository.new('test_data/lap_one')

  Player.new(@current_game_repo).show_script

  puts ""
  choose_question_square
end

def choose_question_square
  puts "Enter which Question square you are on (What, Who, Where, etc.), or any key to quit."

  @square = gets.chomp.downcase

  if @current_game_repo.lap.question_squares.key?(@square)
      puts ""
      puts "#{@square.upcase}:"
      puts "Question: #{@current_game_repo.lap.retrieve_question(@square)}"
      puts "Answer: #{@current_game_repo.lap.retrieve_answer(@square)}"
      puts ""
      audio_choice_interface
    else
      exit
  end
end

def audio_choice_interface
  puts "Press 'q' to play question audio, or 'a' to play answer, or any key to change squares, and hit enter."

  @audio_choice = gets.chomp.downcase

  if @audio_choice == 'q'
    TTSTranslator.get_speech(@current_game_repo, @square, :question)

  elsif @audio_choice == 'a'
    TTSTranslator.get_speech(@current_game_repo, @square, :answer)
  else
    choose_question_square
  end
  audio_choice_interface
end

introduce_game_hub
