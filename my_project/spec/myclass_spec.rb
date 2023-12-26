require_relative '../myclass'

describe MyClass do
  subject {MyClass.new}
  it "returns the sum of two numbers" do
    actual_result = subject.sum(2, 3)
    expected_result = 5
    expect(actual_result).to eq(expected_result)
  end
  
  it "returns multiplication of two numbers" do
    actual_result = subject.mult(2, 3)
    expected_result = 6
    expect(actual_result).to eq(expected_result)
  end
end