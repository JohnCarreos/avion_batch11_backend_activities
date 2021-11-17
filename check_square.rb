def check_square(n)
  if n < 0
    false
  else
    ((n**0.5) % 1) == 0
  end
end

puts check_square(-1)
puts check_square(0)
puts check_square(3)
puts check_square(4)
puts check_square(25)
puts check_square(26)
