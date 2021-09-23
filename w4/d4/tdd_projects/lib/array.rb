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
  
end