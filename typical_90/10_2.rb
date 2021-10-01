N = gets.chomp.to_i
students_data = []
N.times do
  students_data << gets.chomp.split.map(&:to_i)
end

Q = gets.chomp.to_i
Q.times do
  question = gets.chomp.split.map(&:to_i)
  test_result_1 = 0
  test_result_2 = 0
  students_data[question[0]-1..question[1]-1].each do |student_data|
    if student_data[0] == 1
      test_result_1 += student_data[1]
    else
      test_result_2 += student_data[1]
    end
  end
  puts "#{test_result_1} #{test_result_2}"
end
