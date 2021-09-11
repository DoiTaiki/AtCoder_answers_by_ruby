n = gets.chomp.to_i

s = []
while n != 0
  if n % 2 == 0
     n /= 2
     s << "B"
  else
     n -= 1
     s << "A"
   end
end

puts s.reverse.join
