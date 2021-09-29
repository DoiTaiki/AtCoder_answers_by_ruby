s = gets.chomp.chars

while s.length >= 5
  if s[-7..-1] == ["d", "r", "e", "a", "m", "e", "r"]
    s.pop(7)
  elsif s[-6..-1] == ["e", "r", "a", "s", "e", "r"]
    s.pop(6)
  elsif s[-5..-1] == ["d", "r", "e", "a", "m"]
    s.pop(5)
  elsif s[-5..-1] == ["e", "r", "a", "s", "e"]
    s.pop(5)
  else
    break
  end
end

puts s.empty? ? "YES" : "NO"
