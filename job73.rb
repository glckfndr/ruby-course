def check_password(word , passwd)
    proc {|w, p|  w == word && p == passwd}
end

admin = check_password("u1", "p1")
puts admin.call("u1", "p1")  #-> повертає true
puts admin.call("u")  #-> повертає false