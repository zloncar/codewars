require 'test/unit'
require '../lib/keys_vals.rb'

class KeysValsTest < Test::Unit::TestCase
  def test_one
    actual = KeysVals.keysAndValues({:a=>1, :b=>2, :c=>3})
    expected = [[:a, :b, :c], [1, 2, 3]]
    assert_equal(expected, actual)
  end
end
