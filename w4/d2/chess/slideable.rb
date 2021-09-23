require 'byebug'
module Slideable 
  HORIZONTAL_DIRS = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  DIAGONAL_DIRS = [[-1, -1], [1, 1], [-1, 1], [1, -1]]

  def horizontal_dirs 
    HORIZONTAL_DIRS
  end

  def diagonal_dirs 
    DIAGONAL_DIRS
  end

  def moves
    #call move dirs and grow unblocked moves 
    
    total_moves = []

    move_dirs.each do |sub_arr|
      total_moves += grow_unblocked_moves_in_dir(sub_arr[0], sub_arr[1])
    end

    total_moves
  end

  private
  
  def move_dirs
    horizontal_dirs + diagonal_dirs
  end

  def grow_unblocked_moves_in_dir(dx, dy)
    h_counter = dx
    v_counter = dy

    poss_moves = [] 
  

    until poss_moves.length > 64
      row, col = pos
      new_r = row + h_counter
      new_c = col + v_counter
      new_pos = [new_r,new_c]
      if @board.valid_pos?(new_pos)
        if @board[new_pos].is_a?(NullPiece) #check type of piece
          poss_moves << new_pos
        else 
          if self.color != @board[new_pos].color
            poss_moves << new_pos
            break
          else
            break
          end
        end
      else 
        break
      end
      h_counter += dx
      v_counter += dy
    end

    poss_moves
  end

end
