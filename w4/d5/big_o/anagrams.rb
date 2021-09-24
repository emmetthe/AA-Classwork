def first_anagram?(string_1, string_2)
  sub_string = string_1.split("")
  sub_array = sub_string.permutation(string_1.length).to_a

  sub_array.each.with_index { |arr, i| sub_array[i] = arr.join("") }

  sub_array.flatten.include?(string_2)
end

def anagram_2(string_1, string_2)
  letter1 = string_1.split('')
  letter2 = string_2.split('')

  letter1.each do |i|
    i2 = letter2.find_index(i)
    return false if i2 == nil
    letter2.delete_at(i2)
  end
  letter2.empty?
end

def anagram_3(string1, string2)
  sorted_string1 = string1.split('').sort.join
  sorted_string2 = string2.split('').sort.join

  sorted_string1 == sorted_string2
end

def anagram_4(str1, str2)
  hash1 = Hash.new(0)
  hash2 = Hash.new(0)
  str1.each_char do |letter|
    hash1[letter] += 1
  end

  str2.each_char do |letter|
    hash2[letter] += 1
  end

  hash1 == hash2

end

def anagram_5(str1, str2)
  hash= Hash.new(0)
  str1.each_char do |letter|
    hash[letter] += 1
  end
  str2.each_char do |letter|
    hash[letter] -= 1
  end
  hash.values.all?(0)
end

p anagram_5("gizmo", "sally")    #=> false
p anagram_5("elvis", "lives")    #=> true