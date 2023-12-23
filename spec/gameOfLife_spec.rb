require_relative '../src/gameOfLife'
require 'rspec'

describe GameOfLife do
  context 'Game of life object instance creation' do
    it 'count generations' do
      newGame = GameOfLife.new(1, 1)
      newGame.generations(5)
      expect(newGame.generations(5)).to be_nil
    end
  end
end
