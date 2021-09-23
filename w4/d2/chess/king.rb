require_relative 'piece'
require_relative 'stepable'

class King < Piece
  include Stepable

  attr_reader :color, :board
  attr_accessor :pos

  def initialize(color, board, pos)
   super
  end

  def symbol
    :K
  end

  protected

  def move_diffs
    king_dirs
  end
  
end