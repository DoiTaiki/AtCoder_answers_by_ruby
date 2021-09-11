n = gets.chomp.to_i

coordinates = []
n.times do
  coordinates << gets.chomp.split.map(&:to_i)
end

combinations = coordinates.combination(4).to_a
rectangle_count = 0

combinations.each do |combination|
  puts "combination:#{combination}"
  (1..3).each do |i|
    if combination[0][0] == combination[i][0]
      x_coordinates = [1, 2, 3]
      x_coordinates.delete i
      remaining_x_coordinate_combinations = x_coordinates.combination(2).to_a
      remaining_x_coordinate_combinations.each do |remaining_x_coordinate_combination|
        if combination[remaining_x_coordinate_combination[0]][0] == combination[remaining_x_coordinate_combination[1]][0]
          (1..3).each do |j|
            if combination[0][1] == combination[j][1]
              y_coordinates = [1, 2, 3]
              y_coordinates.delete j
              remaining_y_coordinate_combinations = y_coordinates.combination(2).to_a
              remaining_y_coordinate_combinations.each do |remaining_y_coordinate_combination|
                if combination[remaining_y_coordinate_combination[0]][1] == combination[remaining_y_coordinate_combination[1]][1]
                  rectangle_count += 1
                end
              end
            end
          end
        end
      end
    end
  end
end

puts rectangle_count
