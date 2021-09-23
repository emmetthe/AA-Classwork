require_relative 'slideable'
require_relative 'piece'
class Rook < Piece
  include Slideable

  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def symbol
    :R
  end

  protected

  def move_dirs
    horizontal_dirs
  end

end