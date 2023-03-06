require '../utils/validation'
require_relative 'student'
class Department
    extend Validation

    MIN_LENGTH = 5
    MAX_LENGTH = 15
    @@title = ''
    @@students = []

    def self.set_title(title)
      @@title = title if length_range?(title, MIN_LENGTH, MAX_LENGTH)
    end

    private 
    def add(student)
        @@students.append(student)
    end
end

dep = Department.new
Department.set_title('F')

student1 = Student.new('First', 'Second')
dep.send('add', student1)
p dep