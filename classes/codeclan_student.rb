class Student

def initialize(student_name, student_cohort)
@student_name = student_name
@student_cohort = student_cohort
end



def get_student_name
  return @student_name
end



def get_student_cohort
  return @student_cohort
end

 def set_student_name(name)
   @student_name = name
 end

  def set_student_cohort(cohort)
    @student_cohort = cohort
end

def get_student_can_talk
  return "I can talk"
end

def get_students_favourite_language(language)
  return "I love #{language}!"
end

end
