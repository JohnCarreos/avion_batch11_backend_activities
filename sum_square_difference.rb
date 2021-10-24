def cycle_length(n)
  current_num = n
  cycle_length = 1
  while current_num != 1
    cycle_length += 1
    if current_num.odd?
      current_num = 3*current_num + 1
    else
      current_num = current_num / 2
    end
  end
  return cycle_length
end

def max_cycle_length(i, j)
  arr = [*i..j]
  max_length = 0
  arr.map {|n|
    if cycle_length(n) > max_length
      max_length = cycle_length(n)
    end}
  puts "#{i} #{j} #{max_length}"
end

puts "Input Number: "
input_num = gets.chomp

arr_num = input_num.split(" ").map(&:to_i)

max_cycle_length(arr_num[0], arr_num[1])

