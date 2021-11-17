def unique_in_order(val)
    arr = []
    arr_split = []
    if val.class == String
        arr_split = val.split("")
        arr_split.map {
            |x| if !arr.include? x
                arr << x
            end}
    else
        val.map {
            |x| if !arr.include? x
                arr << x
            end}
    end
    return arr
end


print unique_in_order('AAAABBAABBBCCDB')
print unique_in_order('ABBCcAD')
print unique_in_order([1,2,2,3,3])
