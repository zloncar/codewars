class Student
  attr_reader :name
  attr_reader :fives
  attr_reader :tens
  attr_reader :twenties

  @@hash = {}

  def initialize(name, fives, tens, twenties)
    @name = name
    @fives = fives
    @tens = tens
    @twenties = twenties
    add_to_collection
  end

  def add_to_collection
    @@hash[name] = fives * 5 + tens * 10 + twenties * 20
  end

  def self.who_has_most
    all_same? || different
  end

  def self.different
    @@hash.max_by{ |k,v| k }.first
  end

  def self.all_same?
    @@hash.values.uniq.size == 1 && @@hash.size > 1 ? 'All' : different
  end

  def self.null
    @@hash = {}
  end
end
