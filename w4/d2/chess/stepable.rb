require 'byebug'
module Stepable
  KING_MOVES = [[-1, -1], [1, 1], [-1, 1], [1, -1], [1, 0], [-1, 0], [0, 1], [0, -1]]
  KNIGHT_MOVES = [[2, 1], [-2, -1], [2, -1], [-2, 1], [1, 2], [-1, -2], [1, -2], [-1, 2]]
  
  def king_dirs
    KING_MOVES
  end

  def knight_dirs
    KNIGHT_MOVES
  end

  def moves
    total_moves = []
    row, col = pos
    move_diffs.each do |sub_arr|
      new_r = row + sub_arr[0]
      new_c = col + sub_arr[1]
      new_pos = [new_r,new_c]
      if @board.valid_pos?(new_pos)
        if @board[new_pos].is_a?(NullPiece) #check type of piece
          total_moves << new_pos
        elsif self.color != @board[new_pos].color
            total_moves << new_pos
        end
      end
    end
    total_moves
    
  end

  private

  def move_diffs
    knight_dirs + king_dirs
  end

  end