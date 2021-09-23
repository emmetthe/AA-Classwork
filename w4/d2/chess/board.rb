require "byebug"
require_relative "pieces"


class Board

  def initialize()
    @grid = Array.new(8) {Array.new(8)}
    # @sentinel = NullPiece.new

    fill_board
  end
# queen = [0, 4] [6, 4]
# rook = [0, 0] [0, 6] [6, 0], [6, 6]
# bishop = [0,2], [0, 5], [6, 2], [6, 5]
  def fill_board
    @grid.map!.with_index do |sub_arr, row|
      sub_arr.map!.with_index do |elem, col|
        if row <= 1
          elem = King.new(:white,self,[row,col])
        elsif row >= 6
          elem = Rook.new(:black,self,[row,col]) 
        else
          elem = NullPiece.instance
        end
      end
    end
  end

  def [](pos)
    row,col = pos
    @grid[row][col]
  end

  def []=(pos,val)
    row,col = pos
    @grid[row][col] = val
  end

  def valid_pos?(pos)
    row,col = pos
    row.between?(0,7) && col.between?(0,7)
  end

  def move_piece!(start_pos,end_pos) #still need to add color into method
    raise "There is no piece at the start position" if start_pos.empty?
    
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]
    self[end_pos].pos = end_pos
  end

  def add_piece(piece, pos)
    row, col = pos
    @grid[row][col] = piece
  end

end
