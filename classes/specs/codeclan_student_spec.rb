require('minitest/autorun')
require('minitest/rg')
require_relative('../codeclan_student')

class TestStudent <  Minitest::Test

  def setup

    @student = Student.new("sarab", "G13")
  end

  def test_student_name
    assert_equal("sarab", @student.get_student_name)
  end


   def test_student_cohort
     assert_equal("G13", @student.get_student_cohort)
   end

    def test_set_student_name
      @student.set_student_name("laura")
      assert_equal("laura", @student.get_student_name)
    end

    def test_set_student_cohort
      @student.set_student_cohort("G12")
      assert_equal("G12", @student.get_student_cohort)

    end

    def test_student_can_talk
      assert_equal("I can talk", @student.get_student_can_talk)
    end

def test_students_favourite_language
  assert_equal("I love Ruby!", @student.get_students_favourite_language())
end
   end
