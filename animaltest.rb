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
end
