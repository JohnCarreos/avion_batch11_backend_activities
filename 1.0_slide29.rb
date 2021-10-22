

#1
arr = [1, 3, 5, 7, 9, 11]
number = 3

if arr.include? number
    puts "Number is in the array"
else
    puts "Number is not in the array"
end

# 2
print "Input number: "
n = gets.chomp.to_f

if n >= 0 && n <= 50 
    puts "between 0 and 50"
elsif n >= 51 && n <= 100
    puts "between 51 and 100"
elsif n > 100
    puts "greater than 100"
else
    puts "less than zero"
end


str = ""

# 3
while str != "STOP" do
    print "Enter string: "
    str = gets.chomp
end

# 4
arr = [6, 5, 1, 8, 4, 2, 10, 65, 102]
new_arr = []
arr.each do |n|
    if n % 2 == 0
        new_arr.push(n)
    end
end
print "#{new_arr} \n"