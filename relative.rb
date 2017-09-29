require_relative "cat.rb"
require_relative "dog.rb"
require_relative "duck.rb"
require_relative "area.rb"

animal = Dog.new("Scruff", "McGruff", "woof")

puts animal.get_sound

cats = Cat.new("Fluffy")

puts cats.get_sound

finding_area = Area.new(5, 10)

puts finding_area.rectangle

puts finding_area.triangle

duck_variable = Duck.new("daffy","burt")
 duck_variable.get_sound