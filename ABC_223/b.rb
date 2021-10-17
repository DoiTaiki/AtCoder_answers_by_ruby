s = gets.chomp.split('')
strings = []
strings << s.dup

(s.length-1).times do
  head_character = s.shift
  s << head_character
  strings << s.dup
end

strings.sort!

puts strings[0].join ''
puts strings[-1].join ''
