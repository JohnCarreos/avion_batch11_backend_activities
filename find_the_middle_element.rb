def gimme(arr)
    return arr.find_index(arr.sort[1])
end


puts gimme([2, 3, 1])
puts gimme([5, 10, 14])