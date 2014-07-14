require 'test/unit'
require '../lib/pagination_helper.rb'

class PaginationHelperTest < Test::Unit::TestCase

  def test_one
    ph = PaginationHelper.new(['a','b','c','d','e','f'], 4)
    expected = ph.item_count
    assert_equal(expected, 6)
    assert_equal(2, ph.page_count)
    assert_equal(6, ph.item_count)
    assert_equal(4, ph.page_item_count(0))
    assert_equal(2, ph.page_item_count(1))
    assert_equal(-1, ph.page_item_count(2))
    assert_equal(1, ph.page_index(5))
    assert_equal(0, ph.page_index(2))
    assert_equal(-1, ph.page_index(20))
    assert_equal(-1, ph.page_index(-10))
  end
end
