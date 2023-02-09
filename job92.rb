def remove_vowels(str)
    #re = /[aouei]/
    #res = str.chars.select{|e| !re.match?(e) }
    str.gsub(/[aouei]/, "")
    #res.join
end

puts remove_vowels "Hello World!"