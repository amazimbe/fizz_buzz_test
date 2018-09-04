require 'spec_helper'
require_relative  '../fizz_buzz_test'

describe FizzBuzz do
  let(:modulo) do
    ->(number, divisor) { number % divisor == 0 }
  end

  describe '#value' do
    it 'returns the right value' do
      expect(described_class.new.value(15, modulo)).to eq 'FizzBuzz'
    end
  end
end
