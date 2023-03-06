class Foo
  def foo_in
    puts "method: #{__method__.to_s}   callee:#{__callee__.to_s} "
    puts caller_locations.first.label
  end

  def foo_out
    foo_in
  end

  alias baz foo_in
end

Foo.new.foo_in  # __method__: foo   __callee__:foo
Foo.new.baz  # __method__: foo   __callee__:baz
Foo.new.foo_out