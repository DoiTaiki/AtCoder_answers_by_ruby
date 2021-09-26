N = gets.chomp
arr = gets.chomp.split.map(&:to_i)
count = 0
while arr.all?{|v| v.even?}
  count += 1
  arr.map!{|n| n / 2}
end

puts count
