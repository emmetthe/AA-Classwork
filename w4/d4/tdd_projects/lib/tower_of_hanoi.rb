
class TowerOfHanoi

  attr_reader :board

  def initialize
    @board = Array.new(3) {Array.new(3)}
  end
 
  def move(start_pos, end_pos)
    if board[end_pos].empty?
      board[end_pos] << board[start_pos].pop
    end
    if board[end_pos].last > board[start_pos].last
      board[end_pos].unshift(board[start_pos].shift)
    else
      raise "can not move there"
    end
  end

end

# [
#   [5, 4, 3, 2   ]
#   [1            ]
#   [             ]
# ]