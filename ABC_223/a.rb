X = gets.chomp.to_i

if X % 100 == 0 && X != 0
  puts 'Yes'
else
  puts 'No'
end
