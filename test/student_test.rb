require 'test/unit'
require '../lib/student.rb'

phil = Student.new("Phil", 2, 2, 1)
cam = Student.new("Cameron", 2, 2, 0)
geoff = Student.new("Geoff", 0, 3, 0)

def most_money(students)
  totals = {}
  students.each do |x|
    total = x.fives*5 + x.tens*10 + x.twenties*20
    totals[x.name] = total
  end

  if totals.values.uniq.size == 1 && totals.size > 1
    'all'
  else
    totals.max_by{ |k,v| k }.first
  end
end

puts most_money([cam])
assert_equal('Phil', most_money([cam, geoff, phil]))
assert_equal('all', most_money([cam, geoff]))
