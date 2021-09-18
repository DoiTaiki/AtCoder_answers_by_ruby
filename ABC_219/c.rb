new_order_alphabets = gets.chomp.chars
number_of_people = gets.chomp.to_i
names = []
number_of_people.times do
  names << gets.chomp
end

new_order_names = []
j = 0
while j < 1 || new_order_names[j-2] != new_order_names[j-1]
  new_order_names[j] = []
  (0..25).each do |i|
    (0..number_of_people-1).each do |n|
      if names[n][j] && names[n][j] == new_order_alphabets[i]
        new_order_names[j] << names[n]
        puts "new_order_names:#{new_order_names}"
        break if new_order_names[j].count == number_of_people
      end
    end
    break if new_order_names[j].count == number_of_people
  end
  if j > 0 && new_order_names[j-1] == new_order_names[j]
    puts new_order_names
  end
  j += 1
end
