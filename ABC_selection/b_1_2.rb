require 'prime'

N = gets.chomp
arr = gets.chomp.split.map(&:to_i).map{|n| Prime.prime_division(n)}

if arr.any?{|a| a[0][0] != 2}
  puts 0
else
  puts arr.map{|a| a[0][1]}.min
end
