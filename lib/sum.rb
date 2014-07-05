def sum(*args)
  # args.select { |a| a.class == Fixnum }.inject(0) { |sum, n| sum+n }
  args.select { |x| x.is_a?(Integer) }.reduce(:+)
end

puts sum(1,5,6) #=> 12
puts sum(1,'a',3) #=> 4

