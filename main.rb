#!/Users/willem/.rubies/ruby-2.1.2/bin/ruby
require './lib/game.rb'

puts "Hello! Welcome to the Language Hunt Game Hub."

Game.create(ARGV[0]).play
