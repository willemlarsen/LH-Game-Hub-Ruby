require 'rspec'
require 'game_series'

describe 'GameSeries' do
  it("manages a connected series of laps") do
    test_lap_one = Lap.new
    test_lap_two = Lap.new
    test_lap_one.record_question('when', 'Mikor van ez?')
    test_lap_two.record_question('when', 'Most inni akarsz valamit?')
    test_game_series = GameSeries.new
    test_game_series.add_lap(1, test_lap_one)
    test_game_series.add_lap(2, test_lap_two)
    expect(test_game_series.retrieve_lap(1).retrieve_question('when')).to_not eq(
      test_game_series.retrieve_lap(2).retrieve_question('when'))
  end
end
