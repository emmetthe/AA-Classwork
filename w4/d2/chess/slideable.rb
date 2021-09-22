module Slideable 
  HORIZONTAL_DIRS = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  DIAGONAL_DIRS = [[-1, -1], [1, 1], [-1, 1], [1, -1]]

  def horizontal_dirs 
    HORIZONTAL_DIRS
  end

  def diagonal_dirs 
    DIAGONAL_DIRS
  end
 #(1,3) 
  def moves([3,7]) 
    #call move dirs and grow unblocked moves 
    
    total_moves = []

    horizontal.each do |k,v| 

    end

    total_moves
  end

  private
  
  def move_dirs
    horizontal = {left: [-1, 0], right: [1, 0], down: [0, -1], up: [0, 1]}
    diagonal = {up_left: [-1, 1], up_right: [1, 1], down_left: [-1, -1], down_right: [1, -1]}
  end

  def grow_unblocked_moves_in_dirs(dx, dy)
    h = incrementor(dx)
    v = incrementor(dy)

    h_counter = 0
    v_counter = 0

    poss_moves = [] 

    until h_counter == dx && v_counter == dy
      row, col = pos
      new_r = row + h_counter
      new_c = col + v_counter
      pos = [new_r,new_c]
      q
      if @board[pos] == NullPiece
        poss_moves << @board[pos]
      else 
        if self.color != @board[pos].color
          poss_moves << @board[pos]
          break
        else
          break
        end
      end
      h_counter += h
      v_counter += v
    end

    poss_moves
  end

  def incrementor(var)
    if var == 0
      return 0
    elsif var > 0
      return 1
    else
      return -1
    end
  end
  
end