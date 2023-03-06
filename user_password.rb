user_dic = {:oleh => "qwer", :galyna => "asdf"}


attempt = 1
max_attempt = 3
while attempt <= max_attempt
    puts "Enter Your Username"
    user = gets.chomp.to_sym
    if user_dic.include?(user)
        puts "Ok, #{user}! You are registered user."
        attempt = 1
        break
    else
        puts "Bad news! You are not registered! Try else one(remain #{max_attempt - attempt} attempt)"
        exit if (max_attempt - attempt) == 0
    end
    attempt += 1
end

while attempt <= max_attempt
    print "Now #{user}, Please Enter Your Password to Start Working: "
    passwd = gets.chomp
    
    if user_dic[user] == passwd
        
        puts("Hello, #{user}! You are logged in the system!")
        break
    else
        puts("Password is wrong, try else one (remain #{max_attempt - attempt} attempt)!")
    end
    attempt += 1
end