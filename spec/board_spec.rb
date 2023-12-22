require 'spec_helper'
require 'board_spec'
require 'script_spec'
require 'cell_spec'

RSpec.describe 'script' do
    describe '#initialize' do
    it 'the code must create a matrix' do
      matrix = Matrix.new
      expect(matrix.rows).to eq(0)
      expect(matrix.cols).to eq(0)
    end
  end
end