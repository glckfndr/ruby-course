def selector(numerator, divider)
  answer = if numerator == divider
             "Число не повинно дорівнювати #{divider}"
           elsif numerator % divider == 0
             'Чудово'
           else
             'Невірно. Спробуйте ще раз'
           end
end

divider = 21
(1..5).each do |i|
  print("Введіть число, яке буде ділитися на #{divider} : ")
  numerator = gets.chomp.to_i
  respond = selector(numerator, divider)
  puts(respond)
  break if respond == 'Чудово'

  puts('Кількість спроб завершилася :(') if i == 5
end
