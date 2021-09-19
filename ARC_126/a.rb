number_of_test_case = gets.chomp.to_i
test_cases = []
number_of_test_case.times do
  test_cases << gets.chomp.split.map(&:to_i)
end

number_of_sticks = []
i = 0
while i < number_of_test_case
  number_of_stick = 0
  comparison_with_N3_and_N4_result = test_cases[i][1] <=> test_cases[i][2] * 2
  comparison_with_N2_and_N3_result = test_cases[i][0] <=> test_cases[i][1]
  comparison_with_N2_and_N4_result = test_cases[i][0] * 2 <=> test_cases[i][2]
  # N3, N4のみで作り、余りがない場合
  if comparison_with_N3_and_N4_result == 0
    number_of_stick = test_cases[i][2] + test_cases[i][0] / 5
  # N3が余る場合
  elsif comparison_with_N3_and_N4_result == 1
    number_of_stick += test_cases[i][2]
    test_cases[i][1] -= test_cases[i][2] * 2
    # N2, N3のみで作り、余りがない場合
    if comparison_with_N2_and_N3_result == 0
      number_of_stick += test_cases[i][0] / 2
    # N2が余る場合
    elsif comparison_with_N2_and_N3_result == 1
      number_of_stick += test_cases[i][1] / 2
      test_cases[i][0] -= test_cases[i][1] / 2 * 2
      number_of_stick += test_cases[i][0] / 5 if test_cases[i][0] >= 5
    # N3が余る場合
    else
      number_of_stick += test_cases[i][0] / 2
    end
  # N4が余る場合
  else
    number_of_stick += test_cases[i][1] / 2
    test_cases[i][2] -= test_cases[i][1] / 2
    # N2, N4のみで作り、余りがない場合
    if comparison_with_N2_and_N4_result == 0
      number_of_stick += test_cases[i][0]
    # N2が余る場合
    elsif comparison_with_N2_and_N4_result == 1
      number_of_stick += test_cases[i][2] / 2
      test_cases[i][0] -= test_cases[i][2] * 2
      number_of_stick += test_cases[i][0] / 5 if test_cases[i][0] >= 5
    # N4が余る場合
    else
      number_of_stick += test_cases[i][0]
    end
  end
  number_of_sticks << number_of_stick
  i += 1
end

puts number_of_sticks
