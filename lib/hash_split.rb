require 'test/unit'

class HashSplit < Test::Unit::TestCase
  def split_by_keys(hash, *args)
    arr = []
    args.each do |a|
      raise KeyError, 'no matching key' unless hash.fetch(a)
      arr << hash.select do |k, v|
        k.to_s < a.to_s
      end
      hash.delete_if do |k, v|
        k.to_s < a.to_s
      end
    end
    arr << hash
  rescue
    error = :exception_handled
    arr << hash
  end

  def test_split_by_keys
    hash = { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }
    expected = [{:a=>1, :b=>2}, {:c=>3, :d=>4, :e=>5}, {:f=>6}]
    assert_equal(expected, split_by_keys(hash, :c, :f))
  end

  def test_split_by_keys_II
    hash = { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }
    expected = [{:a=>1, :b=>2}, {:c=>3, :d=>4, :e=>5, :f=>6}]
    assert_equal(expected, split_by_keys(hash, :c))
  end

  def test_split_by_keys_III
    hash = { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }
    expected = [{:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}]
    assert_equal(expected, split_by_keys(hash))
  end

  def test_split_by_keys_IV
    hash = { :a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6 }
    expected = [{:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}]
    assert_equal(expected, split_by_keys(hash, 'c'))
  end
end
