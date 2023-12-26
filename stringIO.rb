require 'stringio'
# p. 388 p.409 The Well-Grounded Rubyist (3 edition)
str1 = "abc \n cde \n 123"
str2 = ""
infile = StringIO.new(str1)
outfile = StringIO.new(str2)
# redirect input from str1
old_stdin = $stdin
$stdin = infile
# redirect output to str2
old_stdout = $stdout
$stdout = outfile

res = gets.chomp
print res
res = gets.chomp
print res

$stdin = old_stdin
$stdout = old_stdout

p str2
