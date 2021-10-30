S = gets.chomp.chars

variation = S.uniq.length

if variation == 3
  puts 6
elsif variation == 2
  puts 3
else
  puts 1
end
