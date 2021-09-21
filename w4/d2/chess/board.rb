class Board

  def initialize
    @board = Array.new(8) {Array.new(8)}
    @sentinel
  end

  def [](pos)
    row,col = pos
    @board[row][col]
  end

  def []=(pos,val)
    row,col = pos
    @board[row][col] = val
  end

  def valid_pos?(pos)
    row,col = pos
    row.between?(0,7) && col.between?(0,7)
  end

end