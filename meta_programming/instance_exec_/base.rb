class Base
  class << self
    def inherited(subclass)
      attrs = attributes_for subclass
      # str = %q{attr_reader(*attrs)}
      # subclass.class_eval str
      subclass.class_exec do
        attr_reader(*attrs)
      end
      super
    end

  private

    def attributes_for(any_class)
      @methods ||= Oj.load File.read('instance_exec_/methods.json')
      @methods[any_class.to_s.downcase]
    end
end
end
