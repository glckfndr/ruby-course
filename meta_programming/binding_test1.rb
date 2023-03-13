class A
  def initialize
    @num = 10
  end

  def run_eval code_text
    eval(code_text)
  end

end

a = A.new
a.run_eval "puts @num"
