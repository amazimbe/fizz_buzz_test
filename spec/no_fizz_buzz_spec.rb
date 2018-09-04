require 'spec_helper'
require_relative  '../fizz_buzz_test'

describe NoFizzBuzz do
  describe '#value' do
    it 'returns the right value' do
      expect(described_class.new.value(1, ->{})).to eq 1
    end
  end
end
