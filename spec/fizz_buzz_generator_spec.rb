require 'spec_helper'
require_relative  '../fizz_buzz_test'

describe FizzBuzzGenerator do
  let(:models) { [FizzBuzz.new, Fizz.new, Buzz.new, NoFizzBuzz.new] }
  let(:generator) {described_class.new(models, (1..20).to_a) }

  let(:expected_result) do
    [1, 2, 'Fizz', 4, 'Buzz', 'Fizz', 7, 8, 'Fizz', 'Buzz', 11, 'Fizz', 13, 14,
    'FizzBuzz', 16, 17, 'Fizz', 19, 'Buzz']
  end

  describe '#generate' do
    it 'returns the right sequence' do
      expect(generator.generate).to eq expected_result
    end
  end
end
