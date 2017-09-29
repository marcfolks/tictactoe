require_relative "dog.rb"
require_relative "duck.rb"
require_relative "cat.rb"
require "minitest/autorun"
class Animaltest < Minitest::Test


def test_dog
    dog_name = Dog.new("Scruff","McGruff","woof")
    assert_equal("Scruff",dog_name.first_name)
    assert_equal("McGruff",dog_name.last_name)
    assert_equal("woof",dog_name.sound)
    assert_equal( "I am #{"Scruff"} #{"McGruff"} and my sound is #{"woof"}",dog_name.get_sound)
end

def test_duck
    duck_name = Duck.new("first_name","last_name","qwak")
    assert_equal("first_name",duck_name.first_name)
    assert_

end
def test_area
end
end
