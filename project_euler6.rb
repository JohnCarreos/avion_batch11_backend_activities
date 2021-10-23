sum_squares = 0
for n in 1..100 do
    sum_squares += (n ** 2)
end

squares_sum = (1..100).sum ** 2

puts squares_sum - sum_squares

# another approach
arr = (1..100)
puts arr.sum ** 2 - arr.map {|n| n ** 2}.sum