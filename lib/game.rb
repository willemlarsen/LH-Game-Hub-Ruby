require './player.rb'

class Game
  def self.create(path)
    @@repository = LapRepository.new(path)
    Player.new(repository)
  end
end
