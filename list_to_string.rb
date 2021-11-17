def list_to_string(arr)
    str = ""
    last_index = arr.length - 1
    arr.each_with_index  do |value, index|
        if index == last_index - 1
            str += "#{value[:name]} & "
        elsif index == last_index
            str += "#{value[:name]}"
        else
            str += "#{value[:name]}, "
        end
        
    end
    return str
end

puts list_to_string([{name: 'Bart'},{name: 'Lisa'},{name: 'Maggie'}])





