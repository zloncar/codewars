require 'test/unit'
require './lib/match.rb'

class MatchTest < Test::Unit::TestCase
  def test_one
    expected = Match.solution('aabbccbb', 'bb')
    assert_equal(expected, 2)
  end
end
