# Jensen Collins, Makyala Worden
# jcollins1, makaylaworden
# CSC372, Collberg
# p4_small_program.ruby
#

class StudentClass
  def getGrades
    return [14, 10, 3, 5, 6, 4]
  end
end

def main()
  students = ["Ali", "Ken", "Daniel"]
  grades = [[10, 16, 20, 13, 3, 17], [9, 16, 8, 19, 20, 20],
              [8, 10, 20, 20, 20, 20]]
  print(project_averages(students, grades))
  print "\n"
  sGrades = StudentClass.new
  puts(max_score(sGrades.getGrades))
end


# takes a dictionary ofr student to list of grades as a parameter
# returns a list of the averages for each project.
def project_averages(*students, grades)
  averages = [0,0,0,0,0,0]
  0.upto(grades.length  - 1) do |i|
    0.upto(grades[i].length - 1) do |j|
      averages[j] = averages[i] + grades[i][j]
    end
    0.upto(averages.length - 1) do |x|
      averages[x] = averages[x] / averages.length
    end
  end
  return averages
end

# takes a dictionary ofr student to list of grades as a parameter
# takes a student name as a parameter
# returns the number of the project that the student got their heighest
# grade on.
def max_score(student)
  max_grades = student[0]
  1.upto(student.length - 1) do |i|
    if max_grades > student[i] do
      max_grades = student[i]
    end
  end
  return max_grades
end
end

main()
