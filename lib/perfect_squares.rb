class PerfectSquares
  def self.get_squares(array)
    squares = []
    array.each do |x|
      sqrt = Math.sqrt(x)
      squares << x if sqrt - sqrt.floor == 0
    end
    squares
  end
end
# get_squares(1..16)

# perfect_squares = Proc.new do |i|
#   sqrt = Math.sqrt(i)
#   sqrt - sqrt.floor == 0
# end
# puts (1..17).select(&perfect_squares)

# # Test.assert_equal get_squares((1..16)), [1,4,9,16])
# assert_equal(get_squares((1..100)), [1,4,9,16,25,36,49,64,81,100])
# # Test.assert_equal [1,4,16], get_squares([4,1,16,1,10,35,22])
