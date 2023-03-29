def cube(number: 1, power: 1)
    puts number ** power
end


def square(number:)
    puts number ** 0.5
end

cube(power: 3, number: 5)
square number: 9
pp method(:square).parameters
pp method(:cube).parameters
pp method(:cube).arity
