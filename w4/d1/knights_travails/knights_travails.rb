require_relative "node.rb"
require "byebug"
class KnightPathFinder
  attr_reader :start, :considered_pos
  attr_accessor :root_node
  def initialize(start)
    @start = start
    self.root_node = PolyTreeNode.new(@start)
    
    @considered_pos = []
    build_move_tree
  end

  def new_move_positions(pos)
    if !self.considered_pos.include?(pos)
      @considered_pos << pos
      KnightPathFinder.valid_moves(pos).select {|move| !@considered_pos.include?(move)}
    end
  end

  # def inspect
  #   {'value' => self.root_node.value }.inspect
  # end

  def build_move_tree
    #if new_move_positions(pos) set parent of pos = @considered_pos[-1]
    # add pos to parent.child, make pos into node
    # set each valid move as a node then push to children
    queue = [self.root_node]
    
    until queue.empty?
      node = queue.shift
      node_moves = new_move_positions(node.value)
      if node_moves != nil
        node_moves.each do |node_child_pos|
          # debugger
          node_child = PolyTreeNode.new(node_child_pos)
          node_child.parent = node 
          node_child.parent.add_child(node_child)
        end
        node.children.each do |child|
          queue << child
          child.inspect
        end
      end
      
    end
    #self.root_node
  end

  def self.valid_moves(pos)
    valid_moves = [[2, 1], [-2, -1], [2, -1], [-2, 1], [1, 2], [-1, -2], [1, -2], [-1 , 2]]        # [2, 1], [-2, -1], [+2, -1], [+1, -2]
    all_pos = []
    x, y = pos
    valid_moves.each do |valid_move|
      move = [x + valid_move[0], y + valid_move[1]]
      all_pos << move if KnightPathFinder.valid_pos?(move)
    end
    all_pos
  end
  #if x || y is < 0 !valid
  #if x || y is > 7 !valid

  def self.valid_pos?(pos)
    x, y = pos
    (x >= 0 && x < 8) && (y >= 0 && y < 8)
  end

  def find_path(end_pos)
    self.root_node.bfs(end_pos)
  end

  def trace_path_back(end_pos)
    queue = []
    current_pos = find_path(end_pos)
    until current_pos.nil?
      queue.unshift(current_pos.value)
      current_pos = current_pos.parent
    end
    queue
  end

end
