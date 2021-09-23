require_relative 'piece'
require_relative 'stepable'

class Knight < Piece
  include Stepable

  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def symbol
    :N
  end

  protected

  def move_diffs
    knight_dirs
  end
  
end