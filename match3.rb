# Alternative pattern match
case 2
in 0 | 1 | 2 => a
  puts :match
end

puts a

# Guard conditions
some_other_value = true

case 0
in 0 if some_other_value
  puts :match
end

# Array pattern match
arr = [1, 2]

case arr
in [Integer, Integer]
  puts :match
in [String, String]
  puts :no_match
end

arr = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]

case arr
in [Integer, Integer, *, 9, 10]
  puts :match
end

arr = [1, 2, 3, 4]

case arr
in [1, 2, *tail]
  p tail
end

arr = [1, 2, [3, 4]]

case arr
in [_, _, [3, 4]]
  puts :match
end

case [1, 2, 3, [4, 5]]
in [1, 2, 3, [4, a] => arr]
  puts a
  p arr
end

arr = [1, 2, 3, 4]

case arr
in 1, 2, 3, 4
  puts :match
end

# Hash pattern matching

case { a: 'apple', b: 'banana' }
in { a:, b: }
  puts a
  puts b
end

case { a: 'ant', b: 'ball', c: 'cat' }
in { a: 'ant', **rest }
  p rest
end

case { a: 'ant', b: 'ball' }
in { a: 'ant', **nil }
  puts :no_match
in { a: 'ant', b: 'ball' }
  puts :match
end

case { a: 'ant', b: 'ball' }
in { a: 'ant' } => hash
  p hash
end

# Rightward assignment
login = { username: 'hornby', password: 'iliketrains' }

login => { username: username }

puts "Logged in with username #{username}"

# Find pattern
case [1, 2, 3, 4, 5]
in [*pre, 2, 3, *post]
  p pre
  p post
end

case [1, 2, 'a', 4, 'b', 'c', 7, 8, 9]
in [*pre, String => x, String => z, *post]
  p pre
  p x
  p z
  p post
end

data = [
  { name: 'James', age: 50, first_language: 'english', job_title: 'general manager' },
  { name: 'Jill', age: 32, first_language: 'italian', job_title: 'leet coder' },
  { name: 'Helen', age: 24, first_language: 'dutch', job_title: 'biscuit quality control' },
  { name: 'Bob', age: 64, first_language: 'english', job_title: 'table tennis king' },
  { name: 'Betty', age: 55, first_language: 'spanish', job_title: 'pie maker' }
]

name = 'Jill'
age = 32
job_title = 'leet coder'

case data
in [*, { name: ^name, age: ^age, first_language: first_language, job_title: ^job_title }, *]
else
  first_language = nil
end

puts first_language
