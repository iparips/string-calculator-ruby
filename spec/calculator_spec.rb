require 'spec_helper'

describe Calculator do

  describe 'given an empty string' do

    it 'returns 0' do
      calc = Calculator.new
      expect(calc.add('')).to eq(0)
    end

  end

end
