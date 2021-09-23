require_relative 'piece'

class Pawn < Piece

  attr_reader :color, :board
  attr_accessor :pos
  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def symbol
    :P
  end

  def move_dirs
    if at_start_row?
      forward_steps
    elsif at_start_row?

    end
  end

  private
  
  def at_start_row?
    true
  end

  def forward_dir
    row, col = pos
    new_pos = [row, col + 1]
    if @board.valid_pos?(new_pos)
      if @board[new_pos].is_a?(NullPiece)
      end
    end
  end

  def forward_steps
    [[0, 1], [0, 2]]
  end

  def side_attacks
    [[1, 1], [-1, 1]]
  end

  
end