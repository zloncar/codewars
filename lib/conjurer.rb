class Conjurer

  def self.conjure(name, foo)
    define_method name do
      foo.call
    end
  end
end

bar = lambda { (1..4).to_a }
Conjurer.conjure(:blah, bar)
puts Conjurer.new.blah
