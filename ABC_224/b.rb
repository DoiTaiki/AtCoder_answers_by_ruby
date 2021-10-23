H, W = gets.chomp.split.map(&:to_i)

arr = []
H.times do
  arr << gets.chomp.split.map(&:to_i)
end

def research_array(arr)
  (1..H-1).each do |i|
    (1..W-1).each do |j|
      (0..i).each do |lower_i|
        (0..j).each do |lower_j|
          if arr[lower_i][lower_j] + arr[i][j] > arr[i][lower_j] + arr[lower_i][j]
            return 'No'
          elsif i == H - 1 && j == W - 1 && lower_i == H - 2 && lower_j == W - 2
            return 'Yes'
          end
        end
      end
    end
  end
end

puts research_array(arr)
