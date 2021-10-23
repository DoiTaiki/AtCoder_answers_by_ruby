s = gets.chomp.chars

if s[-2..-1] == ['e', 'r']
  puts 'er'
elsif s[-3..-1] == ['i', 's', 't']
  puts 'ist'
end
