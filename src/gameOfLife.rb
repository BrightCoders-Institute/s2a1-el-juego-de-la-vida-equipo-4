require 'matrix'
require_relative 'board'

class GameOfLife
  attr_accessor :board

  def initialize(rows, cols)
    @board = Board.new(rows, cols)
  end

  def generations(value)
    value.times do
      @board.print_board
      @board.next_generation
      sleep(1) # Pausa de 1 segundo entre generaciones para mejor visualización
      system 'clear' # Limpiar la pantalla (puede no funcionar en todos los sistemas)
    end
  end
end
