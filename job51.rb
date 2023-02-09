price_message = 'Введіть ціну цукерок для 1 кг'
weight_message = "Введіть в кг вагу цукерок, ціну яких Ви хочете дізнатися"
puts(price_message)
price = gets.chomp.to_f
5.times {
    puts weight_message
    weight = gets.chomp.to_f
    puts price * weight
}
