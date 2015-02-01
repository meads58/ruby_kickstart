# Write a method, match_maker, which will receive an unknown number of
# elements, and return an array where every two elements are represented by true or false.
#
# The very first parameter will not be part of this set. Instead, it will tell
# you how to determine what their value should be.
# If it is true, then they will be true when they are oppositely truthy.
# If it is false, then they will be true when they are similarly truthy.
#
# Examples:
# match_maker false, true,  true                # => [true]
# match_maker true,  true,  true                # => [false]
# match_maker true,  false, false               # => [false]
# match_maker true,  false, true                # => [true]
# match_maker true,  true,  false               # => [true]
# match_maker true,  true,  true, false, true   # => [false, true]
# match_maker true,  true,  true, false, nil    # => [false, false]
# match_maker true,  true,  true, true, nil     # => [false, true]
# match_maker true,  true,  true, 0, nil        # => [false, true]

#false, false, false = true
#false, true, true = true
#true, false, false = false
#true, true, true = false

def match_maker setter, *args
  pairs = []
  args.to_a.each_slice(2) do |a,b|
    a = !!a#this will set show if the value is true or false. Nil is false.
    b = !!b
    if a == b
      pairs << true
    else
      pairs << false
    end
  end
  if setter == true#reverse the result if true
    pairs.map! do |i|
      i = !i
    end
  end
 p pairs
end
#match_maker false, true,  true, false, false


 match_maker false, true,  true                # => [true]
 match_maker true,  true,  true                # => [false]
 match_maker true,  false, false               # => [false]
 match_maker true,  false, true                # => [true]
 match_maker true,  true,  false               # => [true]
 match_maker true,  true,  true, false, true   # => [false, true]
 match_maker true,  true,  true, false, nil    # => [false, false]
 match_maker true,  true,  true, true, nil     # => [false, true]
 match_maker true,  true,  true, 0, nil        # => [false, true]
