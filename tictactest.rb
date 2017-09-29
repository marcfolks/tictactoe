require "minitest/autorun"
require_relative "tictac.rb"

class Testtictac < Minitest::Test
def position
    position = x
end
def test_1_equal_1
    assert_equal(1,1)
end

def test_first
    board = ['1','2','3','4','5','6','7','8','9']
    assert_equal(['x','2','3','4','5','6','7','8','9'],update_move(board,'x',1))

end


def test_first
    board = ['1','2','3','4','5','6','7','8','9']
    assert_equal(['1','2','3','x','5','6','7','8','9'],update_move(board,'x',4))

end

def test_available
    board = ['1','2','3','4','5','6','7','8','9']
    assert_equal(true,available?(board,position))
end

 def test_change
     board = ['1','2','3','4','5','6','7','8','9']
     assert_equal(player('x'),player('o'))
 end

def test_win
    board = ['1','2','3','4','5','6','7','8','9']
    assert_equal(['x','x','x','o','5','o','o','8','9'],winning_combinations)
end






























end