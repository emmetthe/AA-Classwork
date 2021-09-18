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
    return target if self.value == target
  end
end