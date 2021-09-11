n = gets.chomp.to_i

coordinates = []
n.times do
  coordinates << gets.chomp.split.map(&:to_i)
end

combinations = coordinates.combination(4).to_a
rectangle_count = 0

combinations.each do |combination|
  (1..3).each do |i|
    if combination[0][0] == combination[i][0]
      x_coordinates = [1, 2, 3]
      x_coordinates.delete i
      if combination[x_coordinates[0]][0] == combination[x_coordinates[1]][0]
        (1..3).each do |j|
          if combination[0][1] == combination[j][1]
            y_coordinates = [1, 2, 3]
            y_coordinates.delete j
            if combination[y_coordinates[0]][1] == combination[y_coordinates[1]][1]
              rectangle_count += 1
            end
          end
        end
      end
    end
  end
end

puts rectangle_count
