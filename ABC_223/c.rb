N = gets.chomp.to_i
lengthes = []
speeds = []
N.times do
  length, speed = gets.chomp.split.map(&:to_f)
  lengthes << length
  speeds << speed
end

minites = []
(0..N-1).each do |i|
  minites << lengthes[i] / speeds[i]
end

left = 0
right = 0
i = 0
j = N - 1
while i != j
  if left <= right
    left += minites[i]
    i += 1
  else
    right += minites[j]
    j -= 1
  end
end

if left >= right
  if left <= right + minites[i]
    puts lengthes[0..i-1].inject(:+) + (lengthes[i] - speeds[i] * (left - right)) / 2
  else
    if i > 1
      puts lengthes[0..i-2].inject(:+) + speeds[i-1] * (right + minites[i]) + (lengthes[i-1] - speeds[i-1] * (right + minites[i])) / 2
    else
      puts speeds[i-1] * (right + minites[i]) + (lengthes[i-1] - speeds[i-1] * (right + minites[i])) / 2
    end
  end
else
  if left + minites[i] >= right
    puts lengthes[0..i-1].inject(:+) + speeds[i] * (right - left) + (lengthes[i] - speeds[i] * (right - left)) / 2
  else
    puts lengthes[0..i].inject(:+) + (lengthes[i+1] - speeds[i+1] * (left + minites[i])) / 2
  end
end
