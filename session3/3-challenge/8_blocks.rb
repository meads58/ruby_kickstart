# This problem is based off of example 2
# Modify it so that it also tracks a person's age and a quote
# Allow any of these to be set with a hash as well, but the block should overwrite the hash
#
#
# EXAMPLE:
#
# artist = Person.new :name => 'Prince' do |person|
#   person.age   = 47
#   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
# end
#
# artist.name   # => "Prince"
# artist.age    # => 47
#
# artist.name = 'The Artist Formarly Known As Prince'
# artist.age  = 1999
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 1999
#
# artist.reinit
#
# artist.name   # => "The Artist Formarly Known As Prince"
# artist.age    # => 47


class Person
  attr_accessor :name, :age, :quote

  def initialize(name=Hash.new, &initializer)
    self.name = name[:name]#self means this object and the same as writing name.name = 'Kris'
    self.age = name[:age]
    self.quote = name[:quote]
    @initializer = (initializer || Proc.new { |person| } )
    reinit
  end

  def reinit
    @initializer.call self
  end
end


artist = Person.new :name => 'Prince' do |person|
   person.age   = 47
   person.quote = "Why don't you purify yourself in the waters of Lake Minnetonka?"
 end

puts artist.name

 #puts artist.name
 #puts artist.age
 #artist.name = 'kris'
 #puts artist.name
name = Person.new(:name => 'Kris').name { |person| }
#age = Person.new(:age => 27).age