class Conjurer
  def self.conjure(name, foo)
    define_method name, foo
  end
end

bar = lambda { (1..4).to_a }
Conjurer.conjure(:blah, bar)
puts Conjurer.new.blah

# codewars solutions
# class Conjurer
#   class << self
#     def conjure(name, impl)
#       define_method(name, &impl)
#     end
#   end
# end

# class Conjurer
#   def self.conjure(name, method)
#     Conjurer.send(:define_method, name) do
#       method
#     end
#   end
# end
