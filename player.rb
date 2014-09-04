require './lib/file_system_lap_repository'
require './lib/Lap'

class Player
  def initialize(repository)
    @repository = repository
  end

  def play
    puts "Welcome to the Language Hunt Game Player! Here's the entire script for your game."
    puts ""
    new_lap = @repository.lap
    puts new_lap.list_exchanges
  end
end

