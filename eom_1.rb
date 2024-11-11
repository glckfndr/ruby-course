a = <<~EOM.to_i * 10
  5
EOM
puts a

array = [1, 2, 3, <<~EOM, 4]
  This is the heredoc!
  It becomes array[3].
  Working with strings
EOM
p array

def message # leading whitespace is stripped away
  <<~EOM
    Welcome to the world of Ruby!
    We're happy you're here!
  EOM
end

p message

def do_something_with_args(a, b, c)
  puts "a: #{a}"
  puts "b: #{b}"
  puts "c: #{c}"
end

do_something_with_args('a_arg', 'b_arg', <<~EOM)
  http://some_very_long_url_or_other_text_best_put_on_its_own_line
EOM
