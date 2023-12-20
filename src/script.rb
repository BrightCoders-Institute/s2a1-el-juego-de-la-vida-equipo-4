require 'matrix'

class board
  def initialize(rows,col)
    @dimension=Matrix.build(rows,col){cell.new}
  end
  
  def print_board
    @dimension.to_a.each { |row| puts row.join('') }
  end
end

class gameOfLife
  attr_accesor: board
  def initialize(rows,col)
    @board = board.new(rows,col)
  end
end

# class Cell

#   def initialize
#     @alive='□'
#     @position=
#   end

#   def cellPosition(row,col)
#     @dimension(row,col)  
#   end

#   def checkNeighbor()
  
#   end
  
#   def deadOrAlive(aliveNeighbors)
  
#   end

# end