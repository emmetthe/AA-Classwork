
def my_min_1(array)
  min = 0
  (0...array.length).each do |i|
    min = array[i]
    (i+1...array.length).each do |j|
      break if array[i] > array[j]
    end
    break
  end
  min
end

def my_min(array)
  min = 0
  array.each do |num|
    if num < min
      min = num
    end
  end
  return min
end

# phase 1
def sub_sum(array)
  sub_arr = []
  array.each.with_index do |num, i|
    j = i + 1
    sub_arr << num
    temp_arr = [num]
    while j < array.length
      sub_arr << (temp_arr.push(array[j]))
    end
  end
  sub_arr.each { |arr| arr = arr.sum }
  sub_arr.max
end

# phase 2
def sub_sum_2(array)
  current_sum = 0
  largest_sum = array.first
  array.each do |el|
    current_sum = current_sum + el
    if current_sum > largest_sum
      largest_sum = current_sum
    end
    if el > largest_sum
      largest_sum = el
      current_sum = el
    end
  end
  return largest_sum
end

# list = [2, 3, -6, 7, -6, 7] # [2] [2, 3] [2, 3, -6]...
# p sub_sum_2(list) # => 8 (from [7, -6, 7])

# list = [5, 3, -7]
# p sub_sum_2(list) # => 8

# list = [-5, -1, -3]
# p sub_sum_2(list) # => -1

