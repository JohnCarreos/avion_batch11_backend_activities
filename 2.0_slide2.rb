# arr = [34,15,88,2]
arr = [34,-345,-1,100]

smallest = arr[0]
arr.each do |n|
    if n < smallest
        smallest = n
    end
end

puts smallest
