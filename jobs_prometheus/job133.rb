def third_order(upper_limit)
  counter = 1
  begin
    num = rand(upper_limit) + 1
    puts "What is result #{num} * #{num} * #{num}?"
    res = gets.chomp.strip.to_i
    raise Exception unless res == num**3

    puts 'Good job'
  rescue StandardError
    counter += 1
    retry if counter <= 3
    puts 'Try next time'
  end
end

third_order(1)
