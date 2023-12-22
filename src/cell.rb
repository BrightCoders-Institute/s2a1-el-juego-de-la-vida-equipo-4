class Cell
    attr_accessor :alive, :position
  
    def initialize
      @alive = [true, false].sample
      @position = [0, 0]
    end
  
    def position=(pos)
      @position = pos
    end
  
    def check_neighbors(board)
      alive_neighbors = 0
      row, col = @position
      rows, cols = board.row_count, board.column_count
    
      # Combinaciones de coordenadas adyacentes en una cuadrícula bidimensional
      combinations = [
        [row, col+1],   # derecha
        [row+1, col],   # abajo
        [row+1, col+1], # abajo y a la derecha
        [row, col-1],   # izquierda
        [row-1, col],   # arriba
        [row-1, col-1], # arriba e izquierda
        [row+1, col-1], # abajo e izquierda
        [row-1, col+1]  # arriba y a la derecha
      ]
    
      combinations.each do |r, c|
        if r >= 0 && r < rows && c >= 0 && c < cols && !board[r, c].nil?
          alive_neighbors += 1 if board[r, c].alive
        end
      end
    
      alive_neighbors
    end
    
    def dead_or_alive(board)
      neighbors = check_neighbors(board)
    
      if @alive
        # Reglas para células vivas
        @alive = false if neighbors > 3 || neighbors < 2
      else
        # Regla para células muertas
        @alive = true if neighbors == 3
      end
    
      @alive
    end
  
    def display_cell
      @alive ? '■' : '□'
    end
  end