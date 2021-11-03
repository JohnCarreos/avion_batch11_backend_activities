
def is_isogram(str)
    str.downcase!
    arr = str.split("")
    arr.map.with_index {|char, index| 
        for i in (index + 1)..(arr.length - 1) do
            if char == arr[i]
                return false
            end
        end
    }
    return true
end

puts is_isogram("Dermatoglyphics")
puts is_isogram("aba")
puts is_isogram("moOse")
