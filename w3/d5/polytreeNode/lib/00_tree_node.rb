class PolyTreeNode
  attr_reader :parent, :children, :value

  def initialize(value)
    @value = value
    @parent = nil
    @children = []
  end

  def parent=(node)
    self.parent.children.delete(self) if self.parent != nil
    @parent = node

    unless @parent == nil || @parent.children.include?(self)
      node.children << self
    end
  end

  def add_child(child)
    child.parent = self
  end

  def remove_child(child)
    raise "Node is not child!" if !self.children.include?(child)
    child.parent = nil
  end

  def dfs(target)
    return self if self.value == target
    return nil if self == nil
    self.children.each do |child|
      result = child.dfs(target)
      return result if result != nil
    end
    nil
  end

  def bfs(target)
    return nil if self == nil
    queue = [self]
    until queue.empty?
      ele = queue.shift
      return ele if ele.value == target
      ele.children.each do |child|
        queue << child
      end
    end
  end

end