class Integer
  # Integer#hash already implemented for you
end

class Array
  def hash
    temp = nil
    return 0 if self.empty?
    self.each.with_index do |ele, i|
      temp = ele.hash ^ i.hash
    end
    temp
  end
end

class String
  def hash
    temp = nil
    self.each_char.with_index do |char, i|
      int = char.ord
      temp = int.hash ^ i.hash
    end
    temp
  end
end

class Hash
  # This returns 0 because rspec will break if it returns nil
  # Make sure to implement an actual Hash#hash method
  def hash
    self.to_a.sort.hash
  end
end
