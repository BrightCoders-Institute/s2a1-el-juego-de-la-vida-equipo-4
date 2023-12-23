require_relative '../src/board'
require 'rspec'

describe Board do
  context 'matrix not null' do
    it 'defines and prints matrix' do
      matrix = Board.new(1, 1)
      matrix.print_board
      expect(matrix.print_board).to be_nil
    end
  end
end
