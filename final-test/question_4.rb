full_name = "Mike"

class Person
  NAME = 'Oleh'
  def self.info
    #print " Name: #{full_name}"
    puts " Name: #{NAME}"
  end
end

# Person::info
Person.info
print Person::NAME
