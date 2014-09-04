require './player.rb'

class Game
  def self.create(path)
    Player.new(FileSystemLapRepository.new(path))
  end
end
