var = "initialized variable"

class C
 #puts var
end

#C.class_eval { def talk(msg); puts msg; end }
C.class_eval("def talk(msg); puts msg; end")
C.new.talk "hello from instance"
msg = "hello--->1"
#C.class_eval { def talk1; puts msg; end }
C.class_eval { define_method("talk1") { puts msg}}
C.new.talk1