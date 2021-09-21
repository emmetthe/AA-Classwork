module Slideable 
  HORIZONTAL_DIRS = [[1, 0], [-1, 0], [0, 1], [0, -1]]
  DIAGONAL_DIRS = [[-1, -1], [1, 1], [-1, 1], [1, -1]]

  def horizontal_dirs 
    HORIZONTAL_DIRS
  end

  def diagonal_dirs 
    DIAGONAL_DIRS
  end

  private
  
  def move_dirs
    horizontal = {left: [-1, 0], right: [1, 0], down: [0, -1], up: [0, 1]}
    diagonal = {up_left: [-1, 1], up_right: [1, 1], down_left: [-1, -1], down_right: [1, -1]}
  end

  def grow_unblocked_moves_in_dirs(dx, dy)

  end
  
end