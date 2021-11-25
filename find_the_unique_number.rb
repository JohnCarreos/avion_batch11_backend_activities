def find_uniq(arr)
  arr.each do |n|
    if arr.count(n) == 1
      return n
    end
  end
end

puts find_uniq([1, 1, 1, 2, 1, 1])
puts find_uniq([0, 0, 0.55, 0, 0])
