$shared_variable = [10]

# Method to increment the shared variable
def increment_variable
  $shared_variable[0] = $shared_variable[0] + 1.0
end

def decrement_variable
  $shared_variable[0] = $shared_variable[0] - 1.0
end

# Create two threads that increment the shared variable
thread1 = Thread.new { 1000.times { increment_variable } }
thread2 = Thread.new { 1000.times { decrement_variable } }

# Wait for both threads to finish
thread1.join
thread2.join

# The final value of the shared variable may be incorrect due to the race condition
puts "Final value of shared_variable: #{$shared_variable[0]}"
