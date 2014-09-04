require 'game.rb'

describe 'Game' do
  it 'can create a player' do
    result = Game.create('test_data/lap_one')
    expect(result).to_not eq(nil)
  end
end
