class Board

  def initialize
    @board = Array.new(8) {Array.new(8)}
    @sentinel = NullPiece.new
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

  def move_piece(start_pos,end_pos)
    raise "There is no piece at the start position" if start_pos.empty?
    raise "Cannot move to this position" if !end_pos.empty?

    @board[start_pos] = @board[end_pos]
  end

end