def sqrt(positive_number)
    if positive_number >= 0 then
        Math.sqrt(positive_number).round(4)
     else
        raise StandardError.new "The root of a negative number does not exist in rational numbers"
     end
end

puts sqrt(5)