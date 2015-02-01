# Write a method, reverse_map, which invokes a block on each of the elements in reverse order,
# and returns an array of their results.
#
# reverse_map(1, 2, 3) { |i| i * 2 }      # => [6, 4, 2]

def reverse_map(*args, &block)
  #just different ways of doing the same thing
  args.reverse.map(&block)#pass the &block again into the map method
  args.reverse.map { |i| yield(i)} #calling the block through yield and passing the parameter from map() to it
  #args.reverse.map {|i| block.call(i)}#calling the block variable.
end


