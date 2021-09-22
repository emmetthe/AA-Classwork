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
    h = incrementor(dx)
    v = incrementor(dy)

    h_counter = 0
    v_counter = 0

    until h_counter == dx && v_counter == dy
      if 
        
      end
      h_counter += h
      v_counter += v
    end

    #update our move every time we move

    #check for empty spaces before incrementing

    #if color is the same, end before the taken spot

    #if color is diff, end at the taken spot and replace the other piece

    #maybe? check if out of board bounds 

  end

  def incrementor(var)
    if var == 0
      return 0
    elsif var > 0
      return 1
    else
      return -1
    end
  end
  
end