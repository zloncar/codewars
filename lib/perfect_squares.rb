require 'test/unit'

class PerfectSquares
  def self.get_squares(array)
    # squares = []
    # array.each do |x|
    #   sqrt = Math.sqrt(x)
    #   squares << x if sqrt - sqrt.floor == 0
    # end
    # squares
    array.select {|x| x % (Math.sqrt x) == 0}.sort.uniq
  end
  puts get_squares(1..16)
end

# perfect_squares = Proc.new do |i|
#   sqrt = Math.sqrt(i)
#   sqrt - sqrt.floor == 0
# end
# puts (1..17).select(&perfect_squares)
