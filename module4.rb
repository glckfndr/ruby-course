module A
  VERSION = '---> 1.1.1'
  module B
    p Module.nesting
    puts VERSION
  end
end

module A::C
  p Module.nesting
  puts " Ver in C: #{A::VERSION}"
  puts VERSION
end
