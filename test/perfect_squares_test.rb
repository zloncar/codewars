require 'test/unit'
require '../lib/perfect_squares.rb'

class PerfectSquaresTest < Test::Unit::TestCase
  def test_one
    expected = PerfectSquares.get_squares([1,3,16])
    assert_equal(expected, [1, 16])
  end

  def test_two
    expected = PerfectSquares.get_squares(1..100)
    assert_equal(expected, [1,4,9,16,25,36,49,64,81,100])
  end
end
