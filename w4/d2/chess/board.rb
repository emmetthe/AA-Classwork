class Board

  def initialize()
    @grid = Array.new(8) {Array.new(8)}
    # @sentinel = NullPiece.new
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

  def move_piece(start_pos,end_pos)
    # raise "There is no piece at the start position" if start_pos.empty?
    # raise "Cannot move to this position" if !end_pos.nil?
    
    self[start_pos], self[end_pos] = self[end_pos], self[start_pos]

  end

  def add_piece(piece, pos)
    row, col = pos
    @grid[row][col] = piece
  end

end