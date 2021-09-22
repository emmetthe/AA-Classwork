class Piece
  attr_reader :color, :board, :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def to_s
    symbol.to_s
  end

  def empty?
    pos.nil?
  end

  def pos=(val)
    row, col = pos
    @board[row][col] = val
  end

  def symbol
    
  end
end