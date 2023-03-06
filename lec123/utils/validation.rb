module Validation
    def length_range?(string, min, max)
      string.length <= max && string.length >= min 
    end
end