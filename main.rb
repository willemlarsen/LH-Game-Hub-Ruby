#!/Users/willem/.rubies/ruby-2.1.2/bin/ruby
require './lib/game.rb'
require './lib/lap.rb'
require './lib/lap_repository.rb'

puts "Hello! Welcome to the Language Hunt Game Hub."

current_game_repo = LapRepository.new('test_data/lap_one')

Player.new(current_game_repo).show_script

puts ""
puts "Which Question square are you on (What, Who, Where, etc.)?"

square = gets.chomp.downcase

puts ""
puts "#{square.upcase}:"
puts "Question: #{current_game_repo.lap.retrieve_question(square)}"
puts "Answer: #{current_game_repo.lap.retrieve_answer(square)}"
puts ""
puts "Press 'q' to play question audio, or 'a' to play answer, and hit enter."

audio_choice = gets.chomp.downcase

if audio_choice == 'q'
  text_to_speech = current_game_repo.lap.question_squares[square][:question]
  puts text_to_speech
else
  text_to_speech = current_game_repo.lap.question_squares[square][:question]
  puts text_to_speech
end




