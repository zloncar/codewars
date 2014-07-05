class Conjurer

  def self.conjure(name, &lambda)
    define_method "#{name}" do
      yield
    end
  end
end

Conjurer.conjure('blah') { (1..5).to_a }
puts Conjurer.new.blah
