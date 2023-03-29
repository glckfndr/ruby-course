class TestModule
    require './module1'
    include Module1

    def print_module
        puts "TestModule"
        module_name  
    end
end

tst = TestModule.new
tst.module_name
tst.print_module