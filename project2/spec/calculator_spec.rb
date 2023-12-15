require 'spec_helper'
require 'calculator'

RSpec.describe Calculator do
  describe '#add' do
    context 'with positive numbers' do
      it 'returns the sum of two positive numbers' do
        calculator = Calculator.new
        result = calculator.add(2, 3)
        expect(result).to eq(5)
      end
    end

    context 'with negative numbers' do
      it 'returns the sum of two negative numbers' do
        calculator = Calculator.new
        result = calculator.add(-2, -3)
        expect(result).to eq(-5)
      end
    end
  end
end
