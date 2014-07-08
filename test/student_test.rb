require 'test/unit'
require '../lib/student.rb'

class StudentTest < Test::Unit::TestCase
  def test_I
    a = Student.new('John', 4, 3, 1)
    b = Student.new('Mark', 1, 4, 3)
    c = Student.new('Kate', 4, 1, 3)
    expected = 'Mark'
    actual = Student.who_has_most
    Student.null
    assert_equal(expected, actual)
  end

  def test_II
    a = Student.new('John', 4, 3, 1)
    expected = 'John'
    actual = Student.who_has_most
    Student.null
    assert_equal(expected, actual)
  end

  def test_III
    a = Student.new('John', 4, 3, 1)
    a = Student.new('Mark', 4, 3, 1)
    a = Student.new('Kate', 4, 3, 1)
    expected = 'All'
    actual = Student.who_has_most
    Student.null
    assert_equal(expected, actual)
  end
end
