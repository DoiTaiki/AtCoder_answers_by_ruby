strings = []
3.times do
  strings << gets.chomp
end

numbers = gets.chomp.chars.map(&:to_i)

required_string_array = []
numbers.each do |number|
  required_string_array << strings[number-1]
end

puts required_string_array.join
