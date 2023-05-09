def pangram?(string)
  letters = string.downcase.gsub /[\s\.,:;!?]/, ""
  ('a'..'z').each { |x|  return false  unless  letters.include? x }    
  true
end

#p pangram? "The quick brown fox jumps over the lazy dog."
p pangram? "This is not a pangram."

