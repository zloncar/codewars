def split_by_keys(hash, *args)
  arr = []
  args.each do |a|
    raise unless hash.has_key?(a)
    arr << hash.select { |k, v| k.to_s < a.to_s }
    hash.delete_if { |k, v| k.to_s < a.to_s }
  end
  arr << hash
rescue
  puts 'Key not found!'
  arr << hash
end

h = {:a=>1, :b=>2, :c=>3, :d=>4, :e=>5, :f=>6}
puts split_by_keys(h, :z)
