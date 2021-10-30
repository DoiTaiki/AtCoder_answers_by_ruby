N = gets.chomp.to_i

edges = []
(N-1).times do
  edges << gets.chomp.split.map(&:to_i)
end

if edges[1][0] == edges[0][0] || edges[1][1] == edges[0][0]
  point = edges[0][0]
elsif edges[1][0] == edges[0][1] || edges[1][1] == edges[0][1]
  point = edges[0][1]
else
  puts 'No'
end

if point
  edges.each_with_index do |edge, i|
    unless edge.any?{|e| e == point}
      puts 'No'
      break
    end
    puts 'Yes' if i == edges.length - 1
  end
end
