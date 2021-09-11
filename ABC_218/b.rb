numbers = gets.chomp.split.map(&:to_i)

a = ("a".."z").to_a

s = []
numbers.each do |number|
  s << a[number-1]
end

puts s.join.class
