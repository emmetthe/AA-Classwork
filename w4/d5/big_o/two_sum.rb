

def two_sum?(arr, target)
  (0...arr.length).each do |i|
    (i+1...arr.length).each do |j|
      return true if arr[i] + arr[j] == target
    end
  end
  return false
end

def two_sum_2?(arr, target)
  arr = arr.sort
  i = 0
  j = i+1
  while j < arr.length
    return true if arr[i] + arr[j] == target
    i += 1
    j += 1
  end
  return false
end

arr = [0, 1, 2, 3, 5, 7]
p two_sum?(arr, 6) # => should be true
p two_sum?(arr, 10) # => should be false