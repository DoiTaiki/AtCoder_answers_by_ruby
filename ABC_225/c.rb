N, M = gets.chomp.split.map(&:to_i)
lines = []
N.times do
  lines << gets.chomp.split.map(&:to_i)
end

def inspect_matrix(lines)
  if ((lines[0][0] < 1) || (lines[-1][-1] > 10 ** 9))
    return 'No'
  end
  lines.each_with_index do |line, i|
    j = 1
    while j < M
      if line[j] != line[j-1] + 1
        return 'No'
      end
      j += 1
    end

    if i == lines.length - 1
      first_column = lines.transpose[0]
      k = 1
      while k < N
        if first_column[k] != first_column[k-1] + 7
          return 'No'
        end
        k += 1
      end

      return 'Yes'
    end
  end
end

puts inspect_matrix lines
