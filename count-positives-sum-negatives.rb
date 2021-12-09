def count_positive_sum_negative(arr)
    negatives = []
    positives = []
    result = []
    if !arr.empty?
        arr.each do |n|
            if n < 0
                negatives.push(n)
            else
                positives.push(n)
            end
        end
        result.push(positives.count)
        result.push(negatives.sum)
    end
    return result
end

print count_positive_sum_negative([1,2,3,4,5,6,7,8,9,10,-11,-12,-13,-14,-15])
print count_positive_sum_negative([])