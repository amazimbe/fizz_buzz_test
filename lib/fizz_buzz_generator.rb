class FizzBuzzGenerator
  attr_reader :sequence, :models, :modulo

  def initialize(models, sequence)
    @sequence = sequence
    @models = models
    @modulo = ->(number, divisor) { number % divisor == 0 }
  end

  def generate
    result = []
    sequence.each do |num|
      models.each do |m|
        v = m.value(num, modulo)
        unless v.nil?
          result << v
          break
        end
      end
    end
    result
  end
end
