require_relative 'gameOfLife'
require_relative 'cell'
require 'matrix'

class Board
  def initialize(rows, cols)
    @dimension = Matrix.build(rows, cols) { Cell.new }
    set_cell_positions
  end

  def print_board
    puts 'Board'
    @dimension.to_a.each { |row| puts row.map(&:display_cell).join(' ') }
    puts "\n"
    1
  end

  def next_generation
    new_dimension = @dimension.map(&:dup)

    @dimension.each_with_index do |cell, row, col|
      new_dimension[row, col].alive = cell.dead_or_alive(@dimension)
    end

    @dimension = new_dimension
  end

  private

  def set_cell_positions
    @dimension.each_with_index do |cell, row, col|
      cell.position = [row, col]
    end
  end
end
