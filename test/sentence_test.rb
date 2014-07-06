require 'test/unit'
require '../lib/sentence.rb'

class SentenceTest < Test::Unit::TestCase
  def test_one
    parts = ['hello', ',', 'my', 'name', 'is', '...']
    actual = Sentence.make(parts)
    expected = 'hello, my name is.'
    assert_equal(expected, actual)
  end

  def test_two
    parts = ['hello', ',', 'my', 'name', 'is']
    actual = Sentence.make(parts)
    expected = 'hello, my name is.'
    assert_equal(expected, actual)
  end
end
