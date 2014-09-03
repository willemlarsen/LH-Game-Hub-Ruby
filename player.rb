#!/Users/willem/.rubies/ruby-2.1.2/bin/ruby

require './lib/file_system_lap_repository'
require './lib/Lap'

puts "Welcome to the Language Hunt Game Player! Here's the entire script for your game."
puts ""
new_repo = FileSystemLapRepository.new('/tmp')
new_lap = new_repo.lap
puts new_lap.list_exchanges

