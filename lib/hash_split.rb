require 'test/unit'

class HashSplit < Test::Unit::TestCase
  def split_by_keys(hash, *args)
    arr = []
    args.each do |a|
      raise unless hash.has_key?(a)
      arr << hash.select do |k, v|
        k.to_s < a.to_s
      end
      hash.delete_if do |k, v|
        k.to_s < a.to_s
      end
    end
    arr << hash
    arr.delete_if { |h| h.empty? }
  rescue
    # error '____Key not found!____'
    arr << hash
  end

  def test_split_by_keys
    hash = {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}
    expected = [{:a=>1, :b=>2}, {:c=>3, :d=>4, :e=>5}, {:f=>6}]
    assert_equal(expected, split_by_keys(hash, :c, :f))
  end

  def test_split_by_keys_II
    hash = {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}
    expected = [{:a=>1, :b=>2}, {:c=>3, :d=>4, :e=>5, :f=>6}]
    assert_equal(expected, split_by_keys(hash, :c))
  end

  def test_split_by_keys_III
    hash = {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}
    expected = [{:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}]
    assert_equal(expected, split_by_keys(hash))
  end

  def test_split_by_keys_IV
    hash = {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}
    expected = [{:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}]
    assert_equal(expected, split_by_keys(hash, 'c'))
  end

  def test_split_by_keys_V
    hash = {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}
    expected = [{:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}]
    assert_equal(expected, split_by_keys(hash, :a))
  end
end

# codewars neat solution
# def split_hash_by_key(hash, *args)
#   raise Error unless (args - hash.keys).empty?
#   hash.slice_before { |k,v| args.include? k }.map { |a| Hash[a] }
# end

# and one more good one
# def split_hash_by_key(hash, *args)
#   # TODO: complete
#   args.each do |a|
#     raise "One of the key given as arguement is incorrect!" unless hash.keys.include?(a)
#   end
#   res = [{}]

#   hash.each_pair do |k, v|
#     res << {} if args.include?(k)
#     res.last[k] = v
#   end

#   f = res.select {|e| !e.empty?}
#   f
# end
