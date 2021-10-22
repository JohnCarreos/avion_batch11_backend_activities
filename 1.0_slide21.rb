puts "1."
# 1
[1,2,3,4,5,6,7,8,9,10].each do |n|
  print "#{n} "
end


puts "\n\n"
puts "2."
# 2
h = {a:1, b:2, c:3, d:4} 

puts h[:b]
h[:e] = 5

puts h

puts "###########"

# 3
contact_data = [["john@email.com", "123 Main st.", "555-123-4567"],
                ["avion@email.com", "404 Not Found Dr.", "123-234-454"]]

contacts = {"John Cruz" => {}, "Avion School" => {}}

contact_data.each do |data|
  contacts.each do |key, value|
    contacts[key][:email] = data[0]
    contacts[key][:address] = data[1]
    contacts[key][:phone] = data[2]
  end
end

print contacts

puts "#4"
# 4
print "How old are you?"
age = gets.chomp.to_i

years_added = 0

while years_added < 40
  years_added += 10
  puts "In #{years_added} you will be:"
  puts "#{age + years_added}"
end

