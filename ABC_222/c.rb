N, M = gets.chomp.split.map(&:to_i)
arr = []
(N * 2).times do
  arr << gets.chomp.split('')
end

arr.map!.with_index{|e, i| [i+1, e, 0]}

(0..(M-1)).each do |round|
  (0..(N-1)).each do |number|
    if (arr[number][1][round] == "G" && arr[number+1][1][round] == "C") || (arr[number][1][round] == "C" && arr[number+1][1][round] == "P") || (arr[number][1][round] == "P" && arr[number+1][1][round] == "G")
      arr[number][2] += 1
    elsif (arr[number][1][round] == "C" && arr[number+1][1][round] == "G") || (arr[number][1][round] == "P" && arr[number+1][1][round] == "C") || (arr[number][1][round] == "G" && arr[number+1][1][round] == "P")
      arr[number+1][2] += 1
    end
    arr.sort!{|a, b| a[2] <=> b[2]}.reverse!
  end
end

arr.each do |e|
  puts e[0]
end
