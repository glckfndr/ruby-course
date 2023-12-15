class Monk
  %w[life the_universe everything].each do |topic|
    define_method("meditate_on_#{topic}") do
      "I know the meaning of #{topic.gsub('_', ' ')}"
    end
  end
end

monk = Monk.new
%w[life the_universe everything].each { |topic| puts monk.send("meditate_on_#{topic}") }
