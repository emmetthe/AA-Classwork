class Node
  attr_reader :key
  attr_accessor :val, :next, :prev

  def initialize(key = nil, val = nil)
    @key = key
    @val = val
    @next = nil
    @prev = nil
  end

  def to_s
    "#{@key}: #{@val}"
  end

  def remove
    # optional but useful, connects previous link to next link
    # and removes self from list.
  end
end

class LinkedList
  attr_accessor :head_node, :tail_node
  def initialize
    @head_node = Node.new()
    @tail_node = Node.new()
    @head_node.next = @tail_node
    @tail_node.prev = @head_node
  end

  def [](i)
    each_with_index { |link, j| return link if i == j }
    nil
  end

  def first
  end

  def last
  end

  def empty?
    self.head_node.next == self.tail_node
  end

  def get(key)
  end

  def include?(key)
  end

  def append(key, val)
    node = Node.new(key, val)
    self.tail_node.prev.next = node
    node.prev = self.tail_node.prev
    node.next = self.tail_node
    self.tail.prev = node
  end

  def update(key, val)
  end

  def remove(key)
  end

  def each
  end

  # uncomment when you have `each` working and `Enumerable` included
  # def to_s
  #   inject([]) { |acc, link| acc << "[#{link.key}, #{link.val}]" }.join(", ")
  # end
end
