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
  max_length = 0
  
end

puts "Input Number: "
input_num = gets.chomp

arr_num = input_num.split(" ")
