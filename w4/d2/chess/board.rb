require "byebug"
require_relative "pieces"


class Board

  def initialize()
    @grid = Array.new(8) {Array.new(8, NullPiece.instance)}
    # @sentinel = NullPiece.new

    fill_board
  end

  def fill_board
    @grid.map!.with_index do |sub_arr, row|
      sub_arr.map!.with_index do |elem, col|
        if row <= 1
          elem = Piece.new(:white,self,[row,col])
        elsif row >= 6
          elem = Piece.new(:black,self,[row,col]) 
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

  end

  def add_piece(piece, pos)
    row, col = pos
    @grid[row][col] = piece
  end

end