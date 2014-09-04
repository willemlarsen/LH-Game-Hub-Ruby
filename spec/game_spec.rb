require 'game.rb'

describe 'it' do
  it '' do
    result = Game.create('test_data/lap_one')
    expect(result).to_not eq(nil)
  end
end
