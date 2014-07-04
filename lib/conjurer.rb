class Conjurer

  def self.conjure(name, &lambda)
    define_method "#{name}" do
      yield
    end
  end
end

block = lambda { (1..5).to_a }
Conjurer.conjure('blah', &block )
puts Conjurer.new.blah
