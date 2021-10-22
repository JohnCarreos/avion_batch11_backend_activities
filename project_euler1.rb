multiples = []

for n in 1...1000
    if (n % 3 == 0) || (n % 5 == 0)
        multiples.push(n)
    end
end

sum = 0
multiples.each do |n|
    sum += n
end

puts sum