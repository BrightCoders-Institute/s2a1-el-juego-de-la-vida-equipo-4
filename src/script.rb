require 'matrix'
class board
  def initialize(rows,columns)
    @dimension=Matrix.build(rows,columns){'□'}
  end

  def print_board
    @dimension.to_a.each { |row| puts row.join('') }
  end
end

class game_of_life
end

class cells
end