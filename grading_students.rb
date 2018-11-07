require 'pry'

student_grades = [73, 67, 38, 33]

def gradingStudents(grades)
  grades.map do |grade|
    if grade < 38
      grade
    elsif grade % 5 > 2
      new_grade = grade + (5 - grade % 5)
      new_grade
    else
      grade
    end
  end
end

puts gradingStudents(student_grades)
