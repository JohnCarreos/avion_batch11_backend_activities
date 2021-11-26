def string_incrementer(str) 
    str.scan(/[^1-9]/).join('') + (str.scan(/[1-9]/).join('').to_i + 1).to_s
end

puts string_incrementer('foo')
puts string_incrementer('foobar23')
puts string_incrementer('foobar0042')
puts string_incrementer('foo9')
puts string_incrementer('foo099')