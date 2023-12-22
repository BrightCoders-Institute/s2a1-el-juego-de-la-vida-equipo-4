require 'spec_helper'
require 'board_spec'
require 'script_spec'
require 'cell_spec'
require './src/cell.rb'

RSpec.describe Cell do
  describe '#dead_or_alive' do
    context 'dead cell' do
      it 'alive true if == 3' do
        cell = Cell.new(false)
        allow(cell).to receive(:check_neighbors).and_return(3)
        expect(cell.dead_or_alive(board)).to be true
      end
    end
  end
end