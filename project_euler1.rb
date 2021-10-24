multiples = []

(1...1000).each do |n|
  multiples.push(n) if (n % 3 == 0) || (n % 5 == 0)
end

sum = 0
multiples.each do |n|
  sum += n
end

puts sum
