class Array

  def my_uniq
    new_arr = []
    self.each do |el|
      if !new_arr.include?(el)
        new_arr.push(el)
      end
    end
    return new_arr
  end

  def two_sum
    pairs = []
    (0...self.length).each do |i|
      (i + 1...self.length).each do |j|
        if self[i] + self[j] == 0 && self[i] != 0
          pairs << [i, j]
        end
      end
    end
    pairs 
  end

  def my_transpose
    self.transpose
  end

  def stock_picker
    pair = []
    best_profit = 0
      (0...self.length).each do |buy|
        (buy + 1...self.length).each do |sell|
          current_profit = self[sell] - self[buy]
          if current_profit > best_profit 
            best_profit = current_profit
            pair = [buy, sell]
          end
        end
      end
      pair
  end

end