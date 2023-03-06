require '../utils/validation'
class Student
include Validation

    def initialize(first_name, second_name)
      @first_name = ''
      @second_name = ''
      @first_name = first_name if length_range?(first_name, 1, 13)
      @second_name = second_name if length_range?(second_name, 1, 13)
    end
  end

# student1 = Student.new('First', 'Second')
# p student1