require './lib/lap'

puts 'Hello! Please enter your question word square (What, Who, Where, etc.)'
square = gets.chomp
square = square.downcase!
puts ""

puts "Great! Now enter your question phrase ('What is that?'),"\
      "as you would like to see it"
question_fragment = gets.chomp

new_lap = Lap.new
new_lap.record_question(square, question_fragment)

affirm_question = new_lap.retrieve_question(square)

puts ""
puts "Fantastic. You've recorded '#{affirm_question}' in this lap."







