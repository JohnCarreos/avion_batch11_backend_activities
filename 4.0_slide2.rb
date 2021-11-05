def disemvowel(str)
    str_arr = str.split("")
    vowels = ['a', 'e', 'i', 'o', 'u', 'A', 'E', 'I', 'O', 'U']
    result = []
    str_arr.map {|s| 
        if !vowels.include?(s)
            result << s
        end}
    return result.join
end

puts disemvowel("Hello Earth!")