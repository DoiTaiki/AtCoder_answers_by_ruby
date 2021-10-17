N = gets.chomp.to_i
lengthes = []
speeds = []
minites = []
N.times do
  length, speed = gets.chomp.split.map(&:to_f)
  lengthes << length
  speeds << speed
  minites << length / speed
end

collide_time = minites.inject(:+) / 2

result = 0
(0..N-1).each do |i|
  if minites[i] < collide_time
    result += lengthes[i]
    collide_time -= minites[i]
  else
    result += speeds[i] * collide_time
    break
  end
end

puts result
