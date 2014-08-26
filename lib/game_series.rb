class GameSeries
  def initialize
    @laps = {}
  end

  def add_lap(number, lap)
    @laps[number] = lap
  end

  def retrieve_lap(number)
    @laps[number]
  end
end
