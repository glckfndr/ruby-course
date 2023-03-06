class PhoneFormatException < StandardError
    def initialize(phone_number)
        @phone = phone_number
    end

    def to_s
        "Phone number #{@phone} is incorrect. You should enter phone in format +38dddddddddd"
    end 
end

module Validation 
    
    def phone_valid?(phone_number_str)
        phone_number_str.length == 13 ? /\+380\d{9}/.match?(phone_number_str) : false
    end
end

class User
    include Validation
    attr_reader :name
    attr_writer :phone
    def initialize(name) 
        @name = name
    end

    def phone=(val)
        if phone_valid? val
            @phone = val
        else
            raise PhoneFormatException.new val
        end  
    end
end

user = User.new('Name')
#user.phone = '80678765567'  # - буде генерувати виключення з повідомленням 
                            # Phone number 80678765567 incorrect. You should enter phone in format +38dddddddddd
user.phone = '+380876756543'
puts user.instance_variable_get('@phone') 