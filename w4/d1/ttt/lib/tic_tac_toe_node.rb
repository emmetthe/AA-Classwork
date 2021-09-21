require_relative 'tic_tac_toe'

class TicTacToeNode

  attr_accessor :board, :next_mover_mark, :prev_move_pos

  def initialize(board, next_mover_mark, prev_move_pos = nil)
    @board = board
    @next_mover_mark = next_mover_mark
    @prev_move_pos = prev_move_pos
  end

  def losing_node?(evaluator)
    if self.next_mover_mark == evaluator
      if evaluator == self.board.winner || self.board.tied?
        return false
      else
        return true
      end
    end
  end

  def winning_node?(evaluator)

  end

  # This method generates an array of all moves that can be made after
  # the current move.
  def children

  end
end
