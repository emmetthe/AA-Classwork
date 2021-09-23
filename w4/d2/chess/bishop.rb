require_relative 'slideable'
require_relative 'piece'
class Bishop < Piece
  include Slideable

  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color, board, pos)
    @color = color
    @board = board
    @pos = pos
  end

  def symbol
    :B
  end

  protected

  def move_dirs
    diagonal_dirs
  end
  
end